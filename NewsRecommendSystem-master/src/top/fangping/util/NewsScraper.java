package top.fangping.util;

import java.io.IOException;
import java.net.SocketTimeoutException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.apache.log4j.Logger;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import top.qianxinyao.dbconnection.DBKit;
import top.qianxinyao.model.News;
import top.qianxinyao.model.Newsadded;
import top.qianxinyao.model.Newsmodules;

public class NewsScraper{
	
	public static final Logger logger=Logger.getLogger(NewsScraper.class);
	
	/**
	 * 从新闻门户抓取一次新闻
	 * 目前使用的新闻门户是搜狐新闻
	 * @param args
	 * @throws IOException 
	 * @throws SQLException 
	 */
	
	public static void main(String[] args) throws IOException, SQLException
	{
		DBKit.initalize();		
		List<String> list = new ArrayList<String>();
		//搜狐胎教页面
		list.add("http://www.sohu.com/tag/69661");
		//似乎备孕页面
		list.add("http://www.sohu.com/tag/69831");
		//搜狐月子
		list.add("http://www.sohu.com/tag/69704");
		//幼儿园
		list.add("http://www.sohu.com/tag/69698");
		//分娩  http://www.sohu.com/tag/69819
		list.add("http://www.sohu.com/tag/69819");
		//亲子游戏 http://www.sohu.com/tag/69702
		list.add("http://www.sohu.com/tag/69702");
		//产程 http://www.sohu.com/tag/69712
		list.add("http://www.sohu.com/tag/69712");
		//孕酮  http://www.sohu.com/tag/69640
		list.add("http://www.sohu.com/tag/69640");
		//早孕反应 http://www.sohu.com/tag/69643
		list.add("http://www.sohu.com/tag/69643");
		int count=0;
		for(String url:list){
			Document docu1=Jsoup.connect(url).get();		
			Elements lis = docu1.getElementsByTag("h4");
			Element first_span = docu1.getElementsByTag("span").get(0);			
			for(Element e:lis){
				if(e.getElementsByTag("a").size()==0){
					continue;
				}
				else{
					Element e_a = e.getElementsByTag("a").get(0);
					String title = e_a.text();
					String newsUrl=e_a.attr("href");
					newsUrl = "http:" + newsUrl;
					count++;		
					String moduleName=first_span.text();
					System.out.println(title+"("+moduleName+"):"+newsUrl);					
					News news=new News();
					news.set("title",title).set("module_id", getModuleID(moduleName))
						.set("url",newsUrl).set("news_time", new Date()).save();
						
				}
				
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