package top.fangping.util;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import org.apache.log4j.Logger;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import top.qianxinyao.dbconnection.DBKit;
import top.qianxinyao.model.News;
import top.qianxinyao.model.Newsmodules;

public class NewsScraperFromWY {
public static final Logger logger=Logger.getLogger(NewsScraperFromWY.class);
	
	/**
	 * 从新闻门户抓取一次新闻
	 * 目前使用的新闻门户是网易新闻
	 * @param args
	 * @throws IOException 
	 * @throws SQLException 
	 */
	
	public static void main(String[] args) throws IOException, SQLException
	{
		DBKit.initalize();		
//		List<String> list = new ArrayList<String>();
//		list.add("http://baby.163.com/special/begingravidity_n/");
		List<String> ls = GetUrlUtil.getUrl(true,true,true);
		int count=0;
		for(String url:ls){
			Document docu1=null;
			try {
				docu1 = HtmlUnitUtil.getHtmlFromUrl(url);
				Elements lis = docu1.getElementsByClass("hot_text");
				//爬取的模块名
				Elements first_span = docu1.select("#list_wrap > div.list_content > div.area.baby_list_title > h2 > a");				
				for(Element e:lis){
					if(e.getElementsByTag("a").size()==0){
						continue;
					}
					else{
						Element e_a = e.getElementsByTag("a").get(0);
						//新闻标题
						String title = e_a.text();
						String newsUrl=e_a.attr("href");
//						newsUrl = "http:" + newsUrl;
						count++;		
						String moduleName=first_span.get(0).text();
						System.out.println(title+"("+moduleName+"):"+newsUrl);		
						News news=new News();
						news.set("title",title).set("module_id", getModuleID(moduleName))
							.set("url",newsUrl).set("news_time", new Date()).save();
					}					
				}
			} catch (Exception e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}					
		}
		
		System.out.println("爬取完毕，本次爬取新闻数-----------------"+count);
		logger.info("本次新闻抓取完毕！");
	}	
	/**
	 * 初次使用，填充新闻模块信息：将默认RSS源所有模块填入。
	 */
	private static int getModuleID(String moduleName) {
		int mododuleID=-1;
		try {
				String sql="select id from newsmodules where name=?";
				Newsmodules newsmodule=Newsmodules.dao.findFirst(sql,moduleName);
				if(newsmodule==null) {
					Newsmodules module=new Newsmodules();
					module.setName(moduleName);
					module.save();
					return Newsmodules.dao.findFirst(sql,moduleName).getId();
				}
				else 
					return newsmodule.getId();
		}
		catch (Exception e) {
			logger.error(e.getMessage());
		}
		return mododuleID;
	}
}

