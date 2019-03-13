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

public class NewsScraperFromTPY {
	public static final Logger logger=Logger.getLogger(NewsScraperFromTPY.class);
	public static void main(String[] args) throws IOException, SQLException{
		DBKit.initalize();	
		//获得备孕下孕前准备的所有新闻
//		getNewsFromBY_yqzb();
//		getNewsFromBY_snsn();
//		getNewsFromBY_ycys();
//		getNewsFromYZQ();
//		getNewsFromYZHQ();
//		getNewsFromYWQ();
//		getNewsFromDaiChan();
//		getNewsFromFangShi();
		//怀孕模块下的月子
//		getNewsFromZuoYueZi();
		//产后模块下的月子
//		getNewsFromYueZi();
//		getNewsFromJianFei();
		//避孕模块
//		getNewsFromSex();
//		getNewsFromRecover();
//		getNewsFromHealth();
		//新生儿
		//新生儿首页
//		getNewsFromXSR_SY();
//		getNewsFromXSR_WY();
//		getNewsFromXSR_HL();
//		getNewsFromXSR_JB();
//		getNewsFrom01_SY();
//		getNewsFrom01_HL();
//		getNewsFrom01_JB();
//		getNewsFrom01_SP();
//		getNewsFrom13_SY();
//		getNewsFrom13_HL();
//		getNewsFrom13_JB();
//		getNewsFrom13_SP();
//		getNewsFrom36_SY();
//		getNewsFrom36_HL();
//		getNewsFrom36_JB();
		getNewsFrom36_SP();
	}
	//太平洋备孕的孕前准备
	private static void getNewsFromBY_yqzb(){
//		String url="https://huaiyun.pcbaby.com.cn/yunqian/zhunbei/";
		Document docu1=null;
		String title="";
		String newsUrl="";
		String modulename="";
		int count=0;
		List<String> lst = GetUrlUtil.getUrlFromTPY_BY_yqzb();
		System.out.println(lst.size());
		for(String ls : lst){		
			System.out.println("开始爬取"+ls+"的网页");
			try {
				docu1 = HtmlUnitUtil.getHtmlFromUrl(ls);
				Elements e_p = docu1.getElementsByClass("aList-title");
				Elements beiyun = docu1.select("body > div.doc.articleList > div.wraper > div > div.left665 > div.position.mb10 > a:nth-child(8)");
				for(Element e:e_p){
					Element e_p_a = e.getElementsByTag("a").get(0);
					title = e_p_a.text();
					count++;
					System.out.println("输出第"+count+"条数据------"+e_p_a.text());
					newsUrl = e_p_a.attr("href");
					newsUrl = "http:"+newsUrl;
					modulename = beiyun.get(0).text();
//					modulename="孕前准备";
					System.out.println(title+"("+modulename+"):"+newsUrl);
					News news=new News();
					news.set("title",title).set("module_id", getModuleID(modulename))
						.set("url",newsUrl).set("news_time", new Date()).save();
				}				
			} catch (Exception e) {
				// TODO: handle exception
			}			
		}
		System.out.println("孕前准备获取的数据有-------"+count+"-----------条");
	}
	//备孕下的生男生女
	private static void getNewsFromBY_snsn(){
		Document docu1=null;
		String title="";
		String newsUrl="";
		String modulename="";
		int count=0;
		//修改
		List<String> lst = GetUrlUtil.getUrlFromTPY_BY_snsn();
		for(String ls : lst){		
			System.out.println("开始爬取生男生女"+ls+"的网页");
			try {
				docu1 = HtmlUnitUtil.getHtmlFromUrl(ls);
				Elements e_p = docu1.getElementsByClass("aList-title");
				Elements snsv = docu1.select("body > div.doc.articleList > div.wraper > div > div.left665 > div.position.mb10 > a:nth-child(8)");
				for(Element e:e_p){
					Element e_p_a = e.getElementsByTag("a").get(0);
					title = e_p_a.text();
					count++;
					System.out.println("输出第"+count+"条数据------"+e_p_a.text());
					newsUrl = e_p_a.attr("href");
					newsUrl = "http:"+newsUrl;
					modulename = snsv.get(0).text();
					System.out.println(title+"("+modulename+"):"+newsUrl);
					News news=new News();
					news.set("title",title).set("module_id", getModuleID(modulename))
						.set("url",newsUrl).set("news_time", new Date()).save();
				}				
			} catch (Exception e) {
				// TODO: handle exception
			}	
		}
		System.out.println("生男生女获取的数据有-------"+count+"-----------条");
	}
	//备孕下的遗传优生
		private static void getNewsFromBY_ycys(){
			Document docu1=null;
			String title="";
			String newsUrl="";
			String modulename="";
			int count=0;
			//修改
			List<String> lst = GetUrlUtil.getUrlFromTPY_BY_ycys();
			for(String ls : lst){		
				System.out.println("开始爬取遗传优生"+ls+"的网页");
				try {
					docu1 = HtmlUnitUtil.getHtmlFromUrl(ls);
					Elements e_p = docu1.getElementsByClass("aList-title");
					Elements ycys = docu1.select("body > div.doc.articleList > div.wraper > div > div.left665 > div.position.mb10 > a:nth-child(8)");
					for(Element e:e_p){
						Element e_p_a = e.getElementsByTag("a").get(0);
						title = e_p_a.text();
						count++;
						System.out.println("输出第"+count+"条数据------"+e_p_a.text());
						newsUrl = e_p_a.attr("href");
						newsUrl = "http:"+newsUrl;
						modulename = ycys.get(0).text();
						System.out.println(title+"("+modulename+"):"+newsUrl);
						News news=new News();
						news.set("title",title).set("module_id", getModuleID(modulename))
							.set("url",newsUrl).set("news_time", new Date()).save();
					}				
				} catch (Exception e) {
					// TODO: handle exception
				}	
			}
			System.out.println("遗传优生获取的数据有-------"+count+"-----------条");
		}
		/*
		 * 怀孕
		 */
		//怀孕下的孕早期
		private static void getNewsFromYZQ(){
			Document docu1=null;
			String url = "https://huaiyun.pcbaby.com.cn/yzq/";
			String title="";
			String newsUrl="";
			String modulename="";
			int count=0;	
			System.out.println("开始爬取孕早期"+url+"的网页");
			try {
				docu1 = HtmlUnitUtil.getHtmlFromUrl(url);
				Elements ycys = docu1.select("#Jbody > div.main > div.head > em");
				modulename = ycys.get(0).text();				
				Elements newlist = docu1.getElementsByClass("tit");
				for(Element newsl : newlist){
					Element e_p_a = newsl.getElementsByTag("a").get(0);
					newsUrl = e_p_a.attr("href");
					newsUrl = "http:" + newsUrl;
					title = e_p_a.text();
					System.out.println("输出第"+count+"条数据------"+e_p_a.text());
					System.out.println(title+"("+modulename+"):"+newsUrl);					
					News news=new News();
					news.set("title",title).set("module_id", getModuleID(modulename))
						.set("url",newsUrl).set("news_time", new Date()).save();
					count++;
				}
			} catch (Exception e) {
				// TODO: handle exception
			}
			
		}
		//怀孕下的孕中期
		private static void getNewsFromYZHQ(){
			Document docu1=null;
			String url = "https://huaiyun.pcbaby.com.cn/yzhq/";
			String title="";
			String newsUrl="";
			String modulename="";
			int count=0;	
			System.out.println("开始爬取孕中期"+url+"的网页");
			try {
				docu1 = HtmlUnitUtil.getHtmlFromUrl(url);
				Elements ycys = docu1.select("#Jbody > div.main > div.head > em");
				modulename = ycys.get(0).text();				
				Elements newlist = docu1.getElementsByClass("tit");
				for(Element newsl : newlist){
					Element e_p_a = newsl.getElementsByTag("a").get(0);
					newsUrl = e_p_a.attr("href");
					newsUrl = "http:" + newsUrl;
					title = e_p_a.text();
					System.out.println("输出第"+count+"条数据------"+e_p_a.text());
					System.out.println(title+"("+modulename+"):"+newsUrl);					
					News news=new News();
					news.set("title",title).set("module_id", getModuleID(modulename))
						.set("url",newsUrl).set("news_time", new Date()).save();
					count++;
				}
			} catch (Exception e) {
				// TODO: handle exception
			}
		}
		//怀孕下的孕晚期
		private static void getNewsFromYWQ(){
			Document docu1=null;
			String url = "https://huaiyun.pcbaby.com.cn/ywq/";
			String title="";
			String newsUrl="";
			String modulename="";
			int count=0;	
			System.out.println("开始爬取孕晚期"+url+"的网页");
			try {
				docu1 = HtmlUnitUtil.getHtmlFromUrl(url);
				Elements ycys = docu1.select("#Jbody > div.main > div.head > em");
				modulename = ycys.get(0).text();				
				Elements newlist = docu1.getElementsByClass("tit");
				for(Element newsl : newlist){
					Element e_p_a = newsl.getElementsByTag("a").get(0);
					newsUrl = e_p_a.attr("href");
					newsUrl = "http:" + newsUrl;
					title = e_p_a.text();
					System.out.println("输出第"+count+"条数据------"+e_p_a.text());
					System.out.println(title+"("+modulename+"):"+newsUrl);					
					News news=new News();
					news.set("title",title).set("module_id", getModuleID(modulename))
						.set("url",newsUrl).set("news_time", new Date()).save();
					count++;
				}
			} catch (Exception e) {
				// TODO: handle exception
			}
		}
		//怀孕下的分娩产前准备
		private static void getNewsFromDaiChan(){
			Document docu1=null;
			String title="";
			String newsUrl="";
			String modulename="";
			int count=0;
			List<String> lst = GetUrlUtil.getUrlFromDaiChan();
			for(String ls : lst){		
				System.out.println("开始爬取分娩下的产前准备"+ls+"的网页");
				try {
					docu1 = HtmlUnitUtil.getHtmlFromUrl(ls);
					Elements e_p = docu1.getElementsByClass("aList-title");
					Elements cqzb = docu1.select("body > div.doc.articleList > div.wraper > div > div.left665 > div.position.mb10 > a:nth-child(8)");
					for(Element e:e_p){
						Element e_p_a = e.getElementsByTag("a").get(0);
						title = e_p_a.text();
						count++;
						System.out.println("输出第"+count+"条数据------"+e_p_a.text());
						newsUrl = e_p_a.attr("href");
						newsUrl = "http:"+newsUrl;
						modulename = cqzb.get(0).text();
						System.out.println(title+"("+modulename+"):"+newsUrl);
						News news=new News();
						news.set("title",title).set("module_id", getModuleID(modulename))
							.set("url",newsUrl).set("news_time", new Date()).save();
					}				
				} catch (Exception e) {
					// TODO: handle exception
				}	
			}
			System.out.println("分娩下的产前准备数据有-------"+count+"-----------条");
		}
		//怀孕下的分娩方式
		private static void getNewsFromFangShi(){
			Document docu1=null;
			String title="";
			String newsUrl="";
			String modulename="";
			int count=0;
			List<String> lst = GetUrlUtil.getUrlFromFangshi();
			for(String ls : lst){		
				System.out.println("开始爬取分娩下的分娩方式"+ls+"的网页");
				try {
					docu1 = HtmlUnitUtil.getHtmlFromUrl(ls);
					Elements e_p = docu1.getElementsByClass("aList-title");
					Elements fmfs = docu1.select("body > div.doc.articleList > div.wraper > div > div.left665 > div.position.mb10 > a:nth-child(8)");
					for(Element e:e_p){
						Element e_p_a = e.getElementsByTag("a").get(0);
						title = e_p_a.text();
						count++;
						System.out.println("输出第"+count+"条数据------"+e_p_a.text());
						newsUrl = e_p_a.attr("href");
						newsUrl = "http:"+newsUrl;
						modulename = fmfs.get(0).text();
						System.out.println(title+"("+modulename+"):"+newsUrl);
						News news=new News();
						news.set("title",title).set("module_id", getModuleID(modulename))
							.set("url",newsUrl).set("news_time", new Date()).save();
					}				
				} catch (Exception e) {
					// TODO: handle exception
				}	
			}
			System.out.println("分娩下的分娩方式数据有-------"+count+"-----------条");
		}
		//怀孕下的产妇饮食
		private static void getNewsFromZuoYueZi(){
			Document docu1=null;
			String title="";
			String newsUrl="";
			String modulename="";
			int count=0;
			List<String> lst = GetUrlUtil.getUrlFromZYZ();
			for(String ls : lst){		
				System.out.println("开始爬取分娩下的分娩方式"+ls+"的网页");
				try {
					docu1 = HtmlUnitUtil.getHtmlFromUrl(ls);
					Elements e_p = docu1.getElementsByClass("aList-title");
					Elements cfys = docu1.select("body > div.doc.articleList > div.wraper > div > div.left665 > div.position.mb10 > a:nth-child(8)");
					for(Element e:e_p){
						Element e_p_a = e.getElementsByTag("a").get(0);
						title = e_p_a.text();
						count++;
						System.out.println("输出第"+count+"条数据------"+e_p_a.text());
						newsUrl = e_p_a.attr("href");
						newsUrl = "http:"+newsUrl;
						modulename = cfys.get(0).text();
						System.out.println(title+"("+modulename+"):"+newsUrl);
						News news=new News();
						news.set("title",title).set("module_id", getModuleID(modulename))
							.set("url",newsUrl).set("news_time", new Date()).save();
					}				
				} catch (Exception e) {
					// TODO: handle exception
				}	
			}
			System.out.println("分娩下的分娩方式数据有-------"+count+"-----------条");
		}
		//产后模块下的月子
		private static void getNewsFromYueZi(){
			Document docu1=null;
			String url = "https://huaiyun.pcbaby.com.cn/yuezi/";
			String title="";
			String newsUrl="";
			String modulename="";
			int count=0;	
			System.out.println("开始爬取产后月子模块下的"+url+"的网页");
			try {
				docu1 = HtmlUnitUtil.getHtmlFromUrl(url);
				Elements yz = docu1.select("#Jbody > div:nth-child(11) > div.head > em");
				modulename = yz.get(0).text();				
				Elements newlist = docu1.getElementsByClass("tit");
				for(Element newsl : newlist){
					Element e_p_a = newsl.getElementsByTag("a").get(0);
					newsUrl = e_p_a.attr("href");
					newsUrl = "http:" + newsUrl;
					title = e_p_a.text();
					System.out.println("输出第"+count+"条数据------"+e_p_a.text());
					System.out.println(title+"("+modulename+"):"+newsUrl);					
					News news=new News();
					news.set("title",title).set("module_id", getModuleID(modulename))
						.set("url",newsUrl).set("news_time", new Date()).save();
					count++;
				}
			} catch (Exception e) {
				// TODO: handle exception
			}
		}
		//产后模块下的减肥
		private static void getNewsFromJianFei(){
			Document docu1=null;
			String title="";
			String newsUrl="";
			String modulename="";
			int count=0;
			List<String> lst = GetUrlUtil.getUrlFromJianFei();
			for(String ls : lst){		
				System.out.println("开始爬取产后下的减肥"+ls+"的网页");
				try {
					docu1 = HtmlUnitUtil.getHtmlFromUrl(ls);
					Elements e_p = docu1.getElementsByClass("aList-title");
					Elements jf = docu1.select("body > div.doc.articleList > div.wraper > div > div.left665 > div.position.mb10 > a:nth-child(7)");
					for(Element e:e_p){
						Element e_p_a = e.getElementsByTag("a").get(0);
						title = e_p_a.text();
						count++;
						System.out.println("输出第"+count+"条数据------"+e_p_a.text());
						newsUrl = e_p_a.attr("href");
						newsUrl = "http:"+newsUrl;
						modulename = jf.get(0).text();
						System.out.println(title+"("+modulename+"):"+newsUrl);
						News news=new News();
						news.set("title",title).set("module_id", getModuleID(modulename))
							.set("url",newsUrl).set("news_time", new Date()).save();
					}				
				} catch (Exception e) {
					// TODO: handle exception
				}	
			}
			System.out.println("产后下的减肥数据有-------"+count+"-----------条");
		}
		//产后模块下的避孕
		private static void getNewsFromSex(){
			Document docu1=null;
			String title="";
			String newsUrl="";
			String modulename="";
			int count=0;
			List<String> lst = GetUrlUtil.getUrlFromSex();
			for(String ls : lst){		
				System.out.println("开始爬取产后下的减肥"+ls+"的网页");
				try {
					docu1 = HtmlUnitUtil.getHtmlFromUrl(ls);
					Elements e_p = docu1.getElementsByClass("aList-title");
					Elements sex = docu1.select("body > div.doc.articleList > div.wraper > div > div.left665 > div.position.mb10 > a:nth-child(7)");
					for(Element e:e_p){
						Element e_p_a = e.getElementsByTag("a").get(0);
						title = e_p_a.text();
						count++;
						System.out.println("输出第"+count+"条数据------"+e_p_a.text());
						newsUrl = e_p_a.attr("href");
						newsUrl = "http:"+newsUrl;
						modulename = sex.get(0).text();
						System.out.println(title+"("+modulename+"):"+newsUrl);
						News news=new News();
						news.set("title",title).set("module_id", getModuleID(modulename))
							.set("url",newsUrl).set("news_time", new Date()).save();
					}				
				} catch (Exception e) {
					// TODO: handle exception
				}	
			}
			System.out.println("产后下的避孕数据有-------"+count+"-----------条");
		}
		//产后模块下的恢复
		private static void getNewsFromRecover(){
			Document docu1=null;
			String title="";
			String newsUrl="";
			String modulename="";
			int count=0;
			List<String> lst = GetUrlUtil.getUrlFromRecover();
			for(String ls : lst){		
				System.out.println("开始爬取产后下的恢复"+ls+"的网页");
				try {
					docu1 = HtmlUnitUtil.getHtmlFromUrl(ls);
					Elements e_p = docu1.getElementsByClass("aList-title");
					Elements rec = docu1.select("body > div.doc.articleList > div.wraper > div > div.left665 > div.position.mb10 > a:nth-child(7)");
					for(Element e:e_p){
						Element e_p_a = e.getElementsByTag("a").get(0);
						title = e_p_a.text();
						count++;
						System.out.println("输出第"+count+"条数据------"+e_p_a.text());
						newsUrl = e_p_a.attr("href");
						newsUrl = "http:"+newsUrl;
						modulename = rec.get(0).text();
						System.out.println(title+"("+modulename+"):"+newsUrl);
						News news=new News();
						news.set("title",title).set("module_id", getModuleID(modulename))
							.set("url",newsUrl).set("news_time", new Date()).save();
					}				
				} catch (Exception e) {
					// TODO: handle exception
				}	
			}
			System.out.println("产后下的恢复数据有-------"+count+"-----------条");
		}
		//产后模块下的女性健康
		private static void getNewsFromHealth(){
			Document docu1=null;
			String title="";
			String newsUrl="";
			String modulename="";
			int count=0;
			List<String> lst = GetUrlUtil.getUrlFromHealth();
			for(String ls : lst){		
				System.out.println("开始爬取产后下的女性健康"+ls+"的网页");
				try {
					docu1 = HtmlUnitUtil.getHtmlFromUrl(ls);
					Elements e_p = docu1.getElementsByClass("aList-title");
					Elements rec = docu1.select("body > div.doc.articleList > div.wraper > div > div.left665 > div.position.mb10 > a:nth-child(7)");
					for(Element e:e_p){
						Element e_p_a = e.getElementsByTag("a").get(0);
						title = e_p_a.text();
						count++;
						System.out.println("输出第"+count+"条数据------"+e_p_a.text());
						newsUrl = e_p_a.attr("href");
						newsUrl = "http:"+newsUrl;
						modulename = rec.get(0).text();
						System.out.println(title+"("+modulename+"):"+newsUrl);
						News news=new News();
						news.set("title",title).set("module_id", getModuleID(modulename))
							.set("url",newsUrl).set("news_time", new Date()).save();
					}				
				} catch (Exception e) {
					// TODO: handle exception
				}	
			}
			System.out.println("产后下的女性健康数据有-------"+count+"-----------条");
		}
		//新生儿
		//新生儿首页---------------------------------------------
		private static void getNewsFromXSR_SY(){
			Document docu1=null;
			String url = "https://yuer.pcbaby.com.cn/xinshenger/";
			String title="";
			String newsUrl="";
			String modulename="";
			int count=0;	
			System.out.println("开始新生儿首页下的"+url+"的网页");
			try {
				docu1 = HtmlUnitUtil.getHtmlFromUrl(url);
				Elements yz = docu1.select("#Jbody > div:nth-child(11) > div.head > em");
				modulename = yz.get(0).text()+"首页";				
				Elements newlist = docu1.getElementsByClass("tit");
				for(Element newsl : newlist){
					Element e_p_a = newsl.getElementsByTag("a").get(0);
					newsUrl = e_p_a.attr("href");
					newsUrl = "http:" + newsUrl;
					title = e_p_a.text();
					System.out.println("输出第"+count+"条数据------"+e_p_a.text());
					System.out.println(title+"("+modulename+"):"+newsUrl);					
					News news=new News();
					news.set("title",title).set("module_id", getModuleID(modulename))
						.set("url",newsUrl).set("news_time", new Date()).save();
					count++;
				}
			} catch (Exception e) {
				// TODO: handle exception
			}
		}
		//新生儿喂养---------------------------------------
		private static void getNewsFromXSR_WY(){
			Document docu1=null;
			String title="";
			String newsUrl="";
			String modulename="";
			int count=0;
			List<String> lst = GetUrlUtil.getUrlFromXSR_WY();
			for(String ls : lst){		
				System.out.println("开始爬取新生儿喂养"+ls+"的网页");
				try {
					docu1 = HtmlUnitUtil.getHtmlFromUrl(ls);
					Elements e_p = docu1.getElementsByClass("aList-title");
					Elements rec = docu1.select("body > div.doc.articleList > div.wraper > div > div.left665 > div.position.mb10 > a:nth-child(8)");
					for(Element e:e_p){
						Element e_p_a = e.getElementsByTag("a").get(0);
						title = e_p_a.text();
						count++;
						System.out.println("输出第"+count+"条数据------"+e_p_a.text());
						newsUrl = e_p_a.attr("href");
						newsUrl = "http:"+newsUrl;
						modulename = rec.get(0).text();
						System.out.println(title+"("+modulename+"):"+newsUrl);
						News news=new News();
						news.set("title",title).set("module_id", getModuleID(modulename))
							.set("url",newsUrl).set("news_time", new Date()).save();
					}				
				} catch (Exception e) {
					// TODO: handle exception
				}	
			}
			System.out.println("新生儿喂养下的数据有-------"+count+"-----------条");
		}
		//新生儿护理---------------------------------------
		private static void getNewsFromXSR_HL(){
			Document docu1=null;
			String title="";
			String newsUrl="";
			String modulename="";
			int count=0;
			List<String> lst = GetUrlUtil.getUrlFromXSR_HL();
			for(String ls : lst){		
				System.out.println("开始爬取新生儿护理"+ls+"的网页");
				try {
					docu1 = HtmlUnitUtil.getHtmlFromUrl(ls);
					Elements e_p = docu1.getElementsByClass("aList-title");
					Elements rec = docu1.select("body > div.doc.articleList > div.wraper > div > div.left665 > div.position.mb10 > a:nth-child(8)");
					for(Element e:e_p){
						Element e_p_a = e.getElementsByTag("a").get(0);
						title = e_p_a.text();
						count++;
						System.out.println("输出第"+count+"条数据------"+e_p_a.text());
						newsUrl = e_p_a.attr("href");
						newsUrl = "http:"+newsUrl;
						modulename = rec.get(0).text();
						System.out.println(title+"("+modulename+"):"+newsUrl);
						News news=new News();
						news.set("title",title).set("module_id", getModuleID(modulename))
							.set("url",newsUrl).set("news_time", new Date()).save();
					}				
				} catch (Exception e) {
					// TODO: handle exception
				}	
			}
			System.out.println("新生儿护理下的网页有有-------"+count+"-----------条");
		}
		//新生儿疾病---------------------------------------
		private static void getNewsFromXSR_JB(){
			Document docu1=null;
			String title="";
			String newsUrl="";
			String modulename="";
			int count=0;
			List<String> lst = GetUrlUtil.getUrlFromXSR_JB();
			for(String ls : lst){		
				System.out.println("开始爬取新生儿疾病"+ls+"的网页");
				try {
					docu1 = HtmlUnitUtil.getHtmlFromUrl(ls);
					Elements e_p = docu1.getElementsByClass("aList-title");
					Elements rec = docu1.select("body > div.doc.articleList > div.wraper > div > div.left665 > div.position.mb10 > a:nth-child(8)");
					for(Element e:e_p){
						Element e_p_a = e.getElementsByTag("a").get(0);
						title = e_p_a.text();
						count++;
						System.out.println("输出第"+count+"条数据------"+e_p_a.text());
						newsUrl = e_p_a.attr("href");
						newsUrl = "http:"+newsUrl;
						modulename = rec.get(0).text();
						System.out.println(title+"("+modulename+"):"+newsUrl);
						News news=new News();
						news.set("title",title).set("module_id", getModuleID(modulename))
							.set("url",newsUrl).set("news_time", new Date()).save();
					}				
				} catch (Exception e) {
					// TODO: handle exception
				}	
			}
			System.out.println("新生儿疾病下的网页有有-------"+count+"-----------条");
		}
		//0-1岁
		//0-1岁首页---------------------------------------------
		private static void getNewsFrom01_SY(){
			Document docu1=null;
			String url = "https://yuer.pcbaby.com.cn/yinger/";
			String title="";
			String newsUrl="";
			String modulename="";
			int count=0;	
			System.out.println("开始0-1岁首页下的"+url+"的网页");
			try {
				docu1 = HtmlUnitUtil.getHtmlFromUrl(url);
				Elements yz = docu1.select("#Jbody > div:nth-child(11) > div.head > em");
				modulename = yz.get(0).text()+"首页";				
				Elements newlist = docu1.getElementsByClass("tit");
				for(Element newsl : newlist){
					Element e_p_a = newsl.getElementsByTag("a").get(0);
					newsUrl = e_p_a.attr("href");
					newsUrl = "http:" + newsUrl;
					title = e_p_a.text();
					System.out.println("输出第"+count+"条数据------"+e_p_a.text());
					System.out.println(title+"("+modulename+"):"+newsUrl);					
					News news=new News();
					news.set("title",title).set("module_id", getModuleID(modulename))
						.set("url",newsUrl).set("news_time", new Date()).save();
					count++;
				}
			} catch (Exception e) {
				// TODO: handle exception
			}
		}
		//0-1岁护理---------------------------------------
		private static void getNewsFrom01_HL(){
			Document docu1=null;
			String title="";
			String newsUrl="";
			String modulename="";
			int count=0;
			List<String> lst = GetUrlUtil.getUrlFrom01_HL();
			for(String ls : lst){		
				System.out.println("开始爬取01护理"+ls+"的网页");
				try {
					docu1 = HtmlUnitUtil.getHtmlFromUrl(ls);
					Elements e_p = docu1.getElementsByClass("aList-title");
					Elements rec = docu1.select("body > div.doc.articleList > div.wraper > div > div.left665 > div.position.mb10 > a:nth-child(8)");
					for(Element e:e_p){
						Element e_p_a = e.getElementsByTag("a").get(0);
						title = e_p_a.text();
						count++;
						System.out.println("输出第"+count+"条数据------"+e_p_a.text());
						newsUrl = e_p_a.attr("href");
						newsUrl = "http:"+newsUrl;
						modulename = rec.get(0).text();
						System.out.println(title+"("+modulename+"):"+newsUrl);
						News news=new News();
						news.set("title",title).set("module_id", getModuleID(modulename))
							.set("url",newsUrl).set("news_time", new Date()).save();
					}				
				} catch (Exception e) {
					// TODO: handle exception
				}	
			}
			System.out.println("新生儿护理下的网页有有-------"+count+"-----------条");
		}
		//0-1疾病---------------------------------------
		private static void getNewsFrom01_JB(){
			Document docu1=null;
			String title="";
			String newsUrl="";
			String modulename="";
			int count=0;
			List<String> lst = GetUrlUtil.getUrlFrom01_JB();
			for(String ls : lst){		
				System.out.println("开始爬取0-1疾病"+ls+"的网页");
				try {
					docu1 = HtmlUnitUtil.getHtmlFromUrl(ls);
					Elements e_p = docu1.getElementsByClass("aList-title");
					Elements rec = docu1.select("body > div.doc.articleList > div.wraper > div > div.left665 > div.position.mb10 > a:nth-child(8)");
					for(Element e:e_p){
						Element e_p_a = e.getElementsByTag("a").get(0);
						title = e_p_a.text();
						count++;
						System.out.println("输出第"+count+"条数据------"+e_p_a.text());
						newsUrl = e_p_a.attr("href");
						newsUrl = "http:"+newsUrl;
						modulename = rec.get(0).text();
						System.out.println(title+"("+modulename+"):"+newsUrl);
						News news=new News();
						news.set("title",title).set("module_id", getModuleID(modulename))
							.set("url",newsUrl).set("news_time", new Date()).save();
					}				
				} catch (Exception e) {
					// TODO: handle exception
				}	
			}
			System.out.println("0-1疾病下的网页有有-------"+count+"-----------条");
		}
		//0-1食谱---------------------------------------
		private static void getNewsFrom01_SP(){
			Document docu1=null;
			String title="";
			String newsUrl="";
			String modulename="";
			int count=0;
			List<String> lst = GetUrlUtil.getUrlFrom01_SP();
			for(String ls : lst){		
				System.out.println("开始爬取0-1食谱"+ls+"的网页");
				try {
					docu1 = HtmlUnitUtil.getHtmlFromUrl(ls);
					Elements e_p = docu1.getElementsByClass("aList-title");
					Elements rec = docu1.select("body > div.doc.articleList > div.wraper > div > div.left665 > div.position.mb10 > a:nth-child(8)");
					for(Element e:e_p){
						Element e_p_a = e.getElementsByTag("a").get(0);
						title = e_p_a.text();
						count++;
						System.out.println("输出第"+count+"条数据------"+e_p_a.text());
						newsUrl = e_p_a.attr("href");
						newsUrl = "http:"+newsUrl;
						modulename = rec.get(0).text();
						System.out.println(title+"("+modulename+"):"+newsUrl);
						News news=new News();
						news.set("title",title).set("module_id", getModuleID(modulename))
							.set("url",newsUrl).set("news_time", new Date()).save();
					}				
				} catch (Exception e) {
					// TODO: handle exception
				}	
			}
			System.out.println("0-1食谱下的网页有有-------"+count+"-----------条");
		}
		//1-3岁
		//1-3岁首页---------------------------------------------
		private static void getNewsFrom13_SY(){
			Document docu1=null;
			String url = "https://yuer.pcbaby.com.cn/youer/";
			String title="";
			String newsUrl="";
			String modulename="";
			int count=0;	
			System.out.println("开始1-3岁首页下的"+url+"的网页");
			try {
				docu1 = HtmlUnitUtil.getHtmlFromUrl(url);
				Elements yz = docu1.select("#Jbody > div:nth-child(11) > div.head > em");
				modulename = yz.get(0).text()+"首页";				
				Elements newlist = docu1.getElementsByClass("tit");
				for(Element newsl : newlist){
					Element e_p_a = newsl.getElementsByTag("a").get(0);
					newsUrl = e_p_a.attr("href");
					newsUrl = "http:" + newsUrl;
					title = e_p_a.text();
					System.out.println("输出第"+count+"条数据------"+e_p_a.text());
					System.out.println(title+"("+modulename+"):"+newsUrl);					
					News news=new News();
					news.set("title",title).set("module_id", getModuleID(modulename))
						.set("url",newsUrl).set("news_time", new Date()).save();
					count++;
				}
			} catch (Exception e) {
				// TODO: handle exception
			}
		}
		//1-3岁护理---------------------------------------
		private static void getNewsFrom13_HL(){
			Document docu1=null;
			String title="";
			String newsUrl="";
			String modulename="";
			int count=0;
			List<String> lst = GetUrlUtil.getUrlFrom13_HL();
			for(String ls : lst){		
				System.out.println("开始爬取13护理"+ls+"的网页");
				try {
					docu1 = HtmlUnitUtil.getHtmlFromUrl(ls);
					Elements e_p = docu1.getElementsByClass("aList-title");
					Elements rec = docu1.select("body > div.doc.articleList > div.wraper > div > div.left665 > div.position.mb10 > a:nth-child(8)");
					for(Element e:e_p){
						Element e_p_a = e.getElementsByTag("a").get(0);
						title = e_p_a.text();
						count++;
						System.out.println("输出第"+count+"条数据------"+e_p_a.text());
						newsUrl = e_p_a.attr("href");
						newsUrl = "http:"+newsUrl;
						modulename = rec.get(0).text();
						System.out.println(title+"("+modulename+"):"+newsUrl);
						News news=new News();
						news.set("title",title).set("module_id", getModuleID(modulename))
							.set("url",newsUrl).set("news_time", new Date()).save();
					}				
				} catch (Exception e) {
					// TODO: handle exception
				}	
			}
			System.out.println("13护理下的网页有有-------"+count+"-----------条");
		}
		//1-3疾病---------------------------------------
		private static void getNewsFrom13_JB(){
			Document docu1=null;
			String title="";
			String newsUrl="";
			String modulename="";
			int count=0;
			List<String> lst = GetUrlUtil.getUrlFrom13_JB();
			for(String ls : lst){		
				System.out.println("开始爬取1-3疾病"+ls+"的网页");
				try {
					docu1 = HtmlUnitUtil.getHtmlFromUrl(ls);
					Elements e_p = docu1.getElementsByClass("aList-title");
					Elements rec = docu1.select("body > div.doc.articleList > div.wraper > div > div.left665 > div.position.mb10 > a:nth-child(8)");
					for(Element e:e_p){
						Element e_p_a = e.getElementsByTag("a").get(0);
						title = e_p_a.text();
						count++;
						System.out.println("输出第"+count+"条数据------"+e_p_a.text());
						newsUrl = e_p_a.attr("href");
						newsUrl = "http:"+newsUrl;
						modulename = rec.get(0).text();
						System.out.println(title+"("+modulename+"):"+newsUrl);
						News news=new News();
						news.set("title",title).set("module_id", getModuleID(modulename))
							.set("url",newsUrl).set("news_time", new Date()).save();
					}				
				} catch (Exception e) {
					// TODO: handle exception
				}	
			}
			System.out.println("1-3疾病下的网页有有-------"+count+"-----------条");
		}
		//1-3食谱---------------------------------------
				private static void getNewsFrom13_SP(){
					Document docu1=null;
					String title="";
					String newsUrl="";
					String modulename="";
					int count=0;
					List<String> lst = GetUrlUtil.getUrlFrom13_SP();
					for(String ls : lst){		
						System.out.println("开始爬取1-3食谱"+ls+"的网页");
						try {
							docu1 = HtmlUnitUtil.getHtmlFromUrl(ls);
							Elements e_p = docu1.getElementsByClass("aList-title");
							Elements rec = docu1.select("body > div.doc.articleList > div.wraper > div > div.left665 > div.position.mb10 > a:nth-child(8)");
							for(Element e:e_p){
								Element e_p_a = e.getElementsByTag("a").get(0);
								title = e_p_a.text();
								count++;
								System.out.println("输出第"+count+"条数据------"+e_p_a.text());
								newsUrl = e_p_a.attr("href");
								newsUrl = "http:"+newsUrl;
								modulename = rec.get(0).text();
								System.out.println(title+"("+modulename+"):"+newsUrl);
								News news=new News();
								news.set("title",title).set("module_id", getModuleID(modulename))
									.set("url",newsUrl).set("news_time", new Date()).save();
							}				
						} catch (Exception e) {
							// TODO: handle exception
						}	
					}
					System.out.println("1-3食谱下的网页有有-------"+count+"-----------条");
				}
				//3-6岁
				//3-6岁首页---------------------------------------------
				private static void getNewsFrom36_SY(){
					Document docu1=null;
					String url = "https://yuer.pcbaby.com.cn/xuelingqian/";
					String title="";
					String newsUrl="";
					String modulename="";
					int count=0;	
					System.out.println("开始1-3岁首页下的"+url+"的网页");
					try {
						docu1 = HtmlUnitUtil.getHtmlFromUrl(url);
						Elements yz = docu1.select("#Jbody > div:nth-child(11) > div.head > em");
						modulename = yz.get(0).text()+"首页";				
						Elements newlist = docu1.getElementsByClass("tit");
						for(Element newsl : newlist){
							Element e_p_a = newsl.getElementsByTag("a").get(0);
							newsUrl = e_p_a.attr("href");
							newsUrl = "http:" + newsUrl;
							title = e_p_a.text();
							System.out.println("输出第"+count+"条数据------"+e_p_a.text());
							System.out.println(title+"("+modulename+"):"+newsUrl);					
							News news=new News();
							news.set("title",title).set("module_id", getModuleID(modulename))
								.set("url",newsUrl).set("news_time", new Date()).save();
							count++;
						}
					} catch (Exception e) {
						// TODO: handle exception
					}
				}
				//3-6岁护理---------------------------------------
				private static void getNewsFrom36_HL(){
					Document docu1=null;
					String title="";
					String newsUrl="";
					String modulename="";
					int count=0;
					List<String> lst = GetUrlUtil.getUrlFrom36_HL();
					for(String ls : lst){		
						System.out.println("开始爬取36护理"+ls+"的网页");
						try {
							docu1 = HtmlUnitUtil.getHtmlFromUrl(ls);
							Elements e_p = docu1.getElementsByClass("aList-title");
							Elements rec = docu1.select("body > div.doc.articleList > div.wraper > div > div.left665 > div.position.mb10 > a:nth-child(8)");
							for(Element e:e_p){
								Element e_p_a = e.getElementsByTag("a").get(0);
								title = e_p_a.text();
								count++;
								System.out.println("输出第"+count+"条数据------"+e_p_a.text());
								newsUrl = e_p_a.attr("href");
								newsUrl = "http:"+newsUrl;
								modulename = rec.get(0).text();
								System.out.println(title+"("+modulename+"):"+newsUrl);
								News news=new News();
								news.set("title",title).set("module_id", getModuleID(modulename))
									.set("url",newsUrl).set("news_time", new Date()).save();
							}				
						} catch (Exception e) {
							// TODO: handle exception
						}	
					}
					System.out.println("36护理下的网页有有-------"+count+"-----------条");
				}
				//3-6疾病---------------------------------------
				private static void getNewsFrom36_JB(){
					Document docu1=null;
					String title="";
					String newsUrl="";
					String modulename="";
					int count=0;
					List<String> lst = GetUrlUtil.getUrlFrom36_JB();
					for(String ls : lst){		
						System.out.println("开始爬取3-6疾病"+ls+"的网页");
						try {
							docu1 = HtmlUnitUtil.getHtmlFromUrl(ls);
							Elements e_p = docu1.getElementsByClass("aList-title");
							Elements rec = docu1.select("body > div.doc.articleList > div.wraper > div > div.left665 > div.position.mb10 > a:nth-child(8)");
							for(Element e:e_p){
								Element e_p_a = e.getElementsByTag("a").get(0);
								title = e_p_a.text();
								count++;
								System.out.println("输出第"+count+"条数据------"+e_p_a.text());
								newsUrl = e_p_a.attr("href");
								newsUrl = "http:"+newsUrl;
								modulename = rec.get(0).text();
								System.out.println(title+"("+modulename+"):"+newsUrl);
								News news=new News();
								news.set("title",title).set("module_id", getModuleID(modulename))
									.set("url",newsUrl).set("news_time", new Date()).save();
							}				
						} catch (Exception e) {
							// TODO: handle exception
						}	
					}
					System.out.println("3-6疾病下的网页有有-------"+count+"-----------条");
				}
				//3-6食谱---------------------------------------
				private static void getNewsFrom36_SP(){
					Document docu1=null;
					String title="";
					String newsUrl="";
					String modulename="";
					int count=0;
					List<String> lst = GetUrlUtil.getUrlFrom36_SP();
					for(String ls : lst){		
						System.out.println("开始爬取3-6食谱"+ls+"的网页");
						try {
							docu1 = HtmlUnitUtil.getHtmlFromUrl(ls);
							Elements e_p = docu1.getElementsByClass("aList-title");
							Elements rec = docu1.select("body > div.doc.articleList > div.wraper > div > div.left665 > div.position.mb10 > a:nth-child(8)");
							for(Element e:e_p){
								Element e_p_a = e.getElementsByTag("a").get(0);
								title = e_p_a.text();
								count++;
								System.out.println("输出第"+count+"条数据------"+e_p_a.text());
								newsUrl = e_p_a.attr("href");
								newsUrl = "http:"+newsUrl;
								modulename = rec.get(0).text();
								System.out.println(title+"("+modulename+"):"+newsUrl);
								News news=new News();
								news.set("title",title).set("module_id", getModuleID(modulename))
									.set("url",newsUrl).set("news_time", new Date()).save();
							}				
						} catch (Exception e) {
							// TODO: handle exception
						}	
					}
					System.out.println("3-6食谱下的网页有有-------"+count+"-----------条");
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
