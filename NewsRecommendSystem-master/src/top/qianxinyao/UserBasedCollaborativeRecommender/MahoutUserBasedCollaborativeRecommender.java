/**
 * 
 */
package top.qianxinyao.UserBasedCollaborativeRecommender;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.Map.Entry;

import org.apache.mahout.cf.taste.impl.common.FastByIDMap;
import org.apache.mahout.cf.taste.impl.common.LongPrimitiveIterator;
import org.apache.mahout.cf.taste.model.DataModel;
import org.apache.mahout.cf.taste.model.Preference;
import org.apache.mahout.cf.taste.model.PreferenceArray;
import org.apache.log4j.Logger;
import org.apache.mahout.cf.taste.common.TasteException;
import org.apache.mahout.cf.taste.impl.model.GenericDataModel;
import org.apache.mahout.cf.taste.impl.model.GenericPreference;
import org.apache.mahout.cf.taste.impl.model.GenericUserPreferenceArray;
import org.apache.mahout.cf.taste.impl.model.MemoryIDMigrator;
import org.apache.mahout.cf.taste.impl.model.jdbc.MySQLBooleanPrefJDBCDataModel;
import org.apache.mahout.cf.taste.impl.model.jdbc.MySQLJDBCDataModel;
import org.apache.mahout.cf.taste.impl.neighborhood.NearestNUserNeighborhood;
import org.apache.mahout.cf.taste.impl.recommender.GenericUserBasedRecommender;
import org.apache.mahout.cf.taste.impl.similarity.LogLikelihoodSimilarity;
import org.apache.mahout.cf.taste.impl.similarity.UncenteredCosineSimilarity;
import org.apache.mahout.cf.taste.neighborhood.UserNeighborhood;
import org.apache.mahout.cf.taste.recommender.RecommendedItem;
import org.apache.mahout.cf.taste.recommender.Recommender;
import org.apache.mahout.cf.taste.similarity.UserSimilarity;

import top.qianxinyao.algorithms.PropGetKit;
import top.qianxinyao.algorithms.RecommendAlgorithm;
import top.qianxinyao.algorithms.RecommendKit;
import top.qianxinyao.dbconnection.DBKit;
import top.qianxinyao.model.Newslogs;

/**
 * @author qianxinyao
 * @email tomqianmaple@gmail.com
 * @github https://github.com/bluemapleman
 * @date 2016年10月18日 协同过滤
 */

/**
 * Collaborative-Based Filter 基于用户的协同过滤
 * 
 */
public class MahoutUserBasedCollaborativeRecommender implements RecommendAlgorithm
{   
	public MahoutUserBasedCollaborativeRecommender(){
		DBKit.getDataSource();
	}
	public static final Logger logger = Logger.getLogger(MahoutUserBasedCollaborativeRecommender.class);

	/**
	 * 对应计算相似度时的时效天数
	 */
	private static int inRecDays = PropGetKit.getInt("CFValidDay");

	/**
	 * 给每个用户推荐的新闻的条数
	 */
	public static int N =PropGetKit.getInt("CFRecNum");

	/**
	 * 给特定的一批用户进行新闻推荐
	 * 
	 * @param 目标用户的id列表
	 */
	@SuppressWarnings("unused")
	@Override
	public void recommend(List<String> users)	
	{	MemoryIDMigrator thing2long = new MemoryIDMigrator();
		MemoryIDMigrator thing2long1 = new MemoryIDMigrator();
		List<Long> usernew = new ArrayList<Long>();
		for(int i=0;i<users.size();i++){
			usernew.add(thing2long.toLongID(users.get(i)));
			thing2long.storeMapping(thing2long.toLongID(users.get(i)), users.get(i));
		}
		int count=0;
		try
		{
			System.out.println("CF start at "+new Date());
			
//			MySQLJDBCDataModel dataModel = DBKit.getMySQLJDBCDataModel_();
					
//			List<Newslogs> newslogList=Newslogs.dao.find("select " + DBKit.PREF_TABLE_USERID + ","
//					+ DBKit.PREF_TABLE_NEWSID + "," + DBKit.PREF_TABLE_TIME + " from newslogs");
			List<Newslogs> newslogList=Newslogs.dao.find("select " + DBKit.PREF_TABLE_USERID + ","
					+ DBKit.PREF_TABLE_NEWSID + "," +DBKit.PREF_TABLE_PREFVALUE +","+DBKit.PREF_TABLE_TIME + " from newslogs");
			System.out.println("newslogs表中有"+newslogList.size()+"条数据");
			Map<Long,List<Preference>> preferecesOfUsers = new HashMap<Long,List<Preference>>();
			for(Newslogs log:newslogList){
				long userLong = thing2long1.toLongID(log.getUserId());				
				thing2long1.storeMapping(userLong, log.getUserId());
				List<Preference> userPrefList;
				if((userPrefList = preferecesOfUsers.get(userLong)) == null) {
					userPrefList = new ArrayList<Preference>();
					preferecesOfUsers.put(userLong, userPrefList);
				}
				userPrefList.add(new GenericPreference(userLong, log.getNewsId(), log.getPreferDegree()));
			}
			//自己增加的
			FastByIDMap<PreferenceArray> preferecesOfUsersFastMap = new FastByIDMap<PreferenceArray>();
			for(Entry<Long, List<Preference>> entry : preferecesOfUsers.entrySet()) {
				preferecesOfUsersFastMap.put(entry.getKey(), new GenericUserPreferenceArray(entry.getValue()));
			}
			// create a data model 
			DataModel  dataModel1 = new GenericDataModel(preferecesOfUsersFastMap);
			//calculate similarity
			UserSimilarity similarity = new UncenteredCosineSimilarity(dataModel1);
			UserNeighborhood neighborhood = new NearestNUserNeighborhood(5,similarity, dataModel1);
			// Instantiate the recommender
			Recommender recommender = new GenericUserBasedRecommender(dataModel1, neighborhood,similarity);
			
			// 移除过期的用户浏览新闻行为，这些行为对计算用户相似度不再具有较大价值
//			for (Newslogs newslog:newslogList)
//			{
//				if (newslog.getViewTime().before(RecommendKit.getInRecTimestamp(inRecDays)))
//				{
//					dataModel.removePreference(newslog.getUserId(), newslog.getNewsId());
//				}
//			}

//			UserSimilarity similarity = new LogLikelihoodSimilarity(dataModel);
			
//			UserSimilarity similarity = new UncenteredCosineSimilarity(dataModel);
			
//			System.out.println("用户1的喜好为"+dataModel.getPreferencesFromUser(1l));
//			System.out.println("用户2的喜好为"+dataModel.getPreferencesFromUser(2l));
//			System.out.println("用户3的喜好为"+dataModel.getPreferencesFromUser(3l));
			
			// NearestNeighborhood的数量有待考察
//			UserNeighborhood neighborhood = new NearestNUserNeighborhood(5, similarity, dataModel);

//			Recommender recommender = new GenericUserBasedRecommender(dataModel, neighborhood, similarity);

			for (Long  user : usernew)
			{
				long start = System.currentTimeMillis();				
				Long userid = user;
				long[] userN=neighborhood.getUserNeighborhood(userid);
				System.out.println("用户"+userid+"的邻居是"+Arrays.toString(userN));
				List<RecommendedItem> recItems = recommender.recommend(userid, 1);
				Set<Long> hs = new HashSet<Long>();
				System.out.println("推荐的列表大小"+recItems.size());
				for (RecommendedItem recItem : recItems)
				{	
					System.out.println("------"+recItem.getItemID()+":"+recItem.getValue());
					hs.add(recItem.getItemID());
				}
				
				// 过滤掉已推荐新闻和已过期新闻
				String useridnew =thing2long.toStringID(userid);
				RecommendKit.filterOutDateNews(hs,useridnew);
				RecommendKit.filterReccedNews(hs,useridnew);

				// 无可推荐新闻
				if (hs == null)
				{
					continue;
				}

				if(hs.size()>N){
					RecommendKit.removeOverNews(hs, N);
				}
				
				RecommendKit.insertRecommend(useridnew, hs.iterator(),RecommendAlgorithm.CF);
				
				count+=hs.size();
			}
		}
		catch (TasteException e)
		{
			logger.error("CB算法构造偏好对象失败！");
			e.printStackTrace();
		}
		catch (Exception e)
		{
			logger.error("CB算法数据库操作失败！");
			e.printStackTrace();
		}
		System.out.println("CF has contributed " + (count/users.size()) + " recommending news on average");
		System.out.println("CF finish at "+new Date());
		return;
	}

	public int getRecNums()
	{
		return N;
	}

	public void setRecNums(int recNums)
	{
		N = recNums;
	}



	
}
