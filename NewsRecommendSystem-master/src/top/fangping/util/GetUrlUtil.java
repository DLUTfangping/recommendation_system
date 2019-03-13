package top.fangping.util;

import java.util.ArrayList;
import java.util.List;

public class GetUrlUtil {
	public static List<String> getUrl(boolean beiyun,boolean huaiyun,boolean babybirth){
		List<String> list = new ArrayList<String>();
		
		if(beiyun){
			String beiyun_url="";
			list.add("http://baby.163.com/special/begingravidity_n/");
			for(int i=2;i<21;i++){
				if(i<10){
					beiyun_url="http://baby.163.com/special/begingravidity_n_0"+i+"/#headList";
				}else{
					beiyun_url="http://baby.163.com/special/begingravidity_n_"+i+"/#headList";
				}
				list.add(beiyun_url);
//				System.out.println(beiyun_url);
			}
		}
		if(huaiyun){
			String huaiyun_url="";
			list.add("http://baby.163.com/special/00362MI3/gravidity.html");
			for(int i=2;i<21;i++){
				if(i<10){
					huaiyun_url="http://baby.163.com/special/00362MI3/gravidity_0"+i+".html#headList";
				}else{
					huaiyun_url="http://baby.163.com/special/00362MI3/gravidity_"+i+".html#headList";
				}
//				System.out.println(huaiyun_url);
				list.add(huaiyun_url);
			}
		}
		if(babybirth){
			String babybirth_url="";			
			list.add("http://baby.163.com/special/00362MI3/baby08.html");
			for(int i=2;i<21;i++){
				if(i<10){
					babybirth_url="http://baby.163.com/special/00362MI3/baby08_0"+i+".html#headList";
				}else{
					babybirth_url="http://baby.163.com/special/00362MI3/baby08_"+i+".html#headList";
				}
//				System.out.println(babybirth_url);
				list.add(babybirth_url);
			}
		}
		if(babybirth){
			String babybirth_url="";			
			list.add("http://baby.163.com/special/00362MI3/youer08.html");
			for(int i=2;i<21;i++){
				if(i<10){
					babybirth_url="http://baby.163.com/special/00362MI3/youer08_0"+i+".html#headList";
				}else{
					babybirth_url="http://baby.163.com/special/00362MI3/youer08_"+i+".html#headList";
				}
//				System.out.println(babybirth_url);
				list.add(babybirth_url);
			}
		}
		if(babybirth){
			String babybirth_url="";			
			list.add("http://baby.163.com/special/00362MI3/schoolage.html");
			for(int i=2;i<21;i++){
				if(i<10){
					babybirth_url="http://baby.163.com/special/00362MI3/schoolage_0"+i+".html#headList";
				}else{
					babybirth_url="http://baby.163.com/special/00362MI3/schoolage_"+i+".html#headList";
				}
//				System.out.println(babybirth_url);
				list.add(babybirth_url);
			}
		}
		return list;
	}
	//太平洋制作备孕下的孕前准备的url
	public static List<String> getUrlFromTPY_BY_yqzb(){
		List<String> list = new ArrayList<String>();
		list.add("https://huaiyun.pcbaby.com.cn/yunqian/zhunbei/");
		String url = "";
		for(int i=1;i<100;i++){
			url = "https://huaiyun.pcbaby.com.cn/yunqian/zhunbei/index_"+i+".html";
//			System.out.println(url);
			list.add(url);
		}
		
		return list;
	}
	//太平洋制作备孕下的生男生女的新闻url
	public static List<String> getUrlFromTPY_BY_snsn(){
		List<String> list = new ArrayList<String>();
		list.add("https://huaiyun.pcbaby.com.cn/yunqian/shengyu/");
		String url = "";
		for(int i=1;i<55;i++){
			url = "https://huaiyun.pcbaby.com.cn/yunqian/shengyu/index_"+i+".html";
			list.add(url);
		}
		return list;
	}
	public static List<String> getUrlFromTPY_BY_ycys() {
		List<String> list = new ArrayList<String>();
		list.add("https://huaiyun.pcbaby.com.cn/yunqian/yichuan/");
		String url = "";
		for(int i=1;i<100;i++){
			url = "https://huaiyun.pcbaby.com.cn/yunqian/yichuan/index_"+i+".html";
//			System.out.println(url);
			list.add(url);
		}
		return list;
	}
	public static List<String> getUrlFromDaiChan() {		
		List<String> list = new ArrayList<String>();
		list.add("https://huaiyun.pcbaby.com.cn/fenmian/daichan/");
		String url = "";
		for(int i=1;i<100;i++){
			url = "https://huaiyun.pcbaby.com.cn/fenmian/daichan/index_"+i+".html";
			list.add(url);
		}
		return list;
	}
	public static List<String> getUrlFromFangshi() {
		// TODO Auto-generated method stub
		List<String> list = new ArrayList<String>();
		list.add("https://huaiyun.pcbaby.com.cn/fenmian/fangshi/");
		String url = "";
		for(int i=1;i<100;i++){
			url = "https://huaiyun.pcbaby.com.cn/fenmian/fangshi/index_"+i+".html";
			list.add(url);
		}
		return list;
	}
	public static List<String> getUrlFromZYZ() {
		List<String> list = new ArrayList<String>();
		list.add("https://www.pcbaby.com.cn/shipu/yunfushipu/zuoyuezi/");
		String url = "";
		for(int i=1;i<100;i++){
			url = "https://www.pcbaby.com.cn/shipu/yunfushipu/zuoyuezi/index_"+ i +".html";
			list.add(url);
		}
		return list;
	}
	public static List<String> getUrlFromJianFei() {
		List<String> list = new ArrayList<String>();
		list.add("https://chanhou.pcbaby.com.cn/jianfei/");
		String url = "";
		for(int i=1;i<38;i++){
			url = "https://chanhou.pcbaby.com.cn/jianfei/index_"+i+".html";
			list.add(url);
		}
		return list;
	}
	public static List<String> getUrlFromSex() {
		List<String> list = new ArrayList<String>();
		list.add("https://chanhou.pcbaby.com.cn/sex/");
		String url = "";
		for(int i=1;i<20;i++){
			url = "https://chanhou.pcbaby.com.cn/sex/index_"+i+".html";
			list.add(url);
		}
		return list;
	}
	public static List<String> getUrlFromRecover() {
		List<String> list = new ArrayList<String>();
		list.add("https://chanhou.pcbaby.com.cn/huifu/");
		String url = "";
		for(int i=1;i<16;i++){
			url = "https://chanhou.pcbaby.com.cn/huifu/index_"+i+".html";
			list.add(url);
		}
		return list;
	}
	public static List<String> getUrlFromHealth() {
		List<String> list = new ArrayList<String>();
		list.add("https://chanhou.pcbaby.com.cn/baojian/");
		String url = "";
		for(int i=1;i<56;i++){
			url = "https://chanhou.pcbaby.com.cn/baojian/index_"+i+".html";
			list.add(url);
		}
		return list;
	}
	public static List<String> getUrlFromXSR_WY() {
		List<String> list = new ArrayList<String>();
		list.add("https://yuer.pcbaby.com.cn/xinshenger/weiyang/");
		String url = "";
		for(int i=1;i<55;i++){
			url = "https://yuer.pcbaby.com.cn/xinshenger/weiyang/index_"+i+".html";
			list.add(url);
		}
		return list;
	}
	public static List<String> getUrlFromXSR_HL() {
		List<String> list = new ArrayList<String>();
		list.add("https://yuer.pcbaby.com.cn/xinshenger/huli/");
		String url = "";
		for(int i=1;i<100;i++){
			url = "https://yuer.pcbaby.com.cn/xinshenger/huli/index_"+i+".html";
			list.add(url);
		}
		return list;
	}
	public static List<String> getUrlFromXSR_JB() {
		List<String> list = new ArrayList<String>();
		list.add("https://yuer.pcbaby.com.cn/xinshenger/jibing/");
		String url = "";
		for(int i=1;i<83;i++){
			url = "https://yuer.pcbaby.com.cn/xinshenger/jibing/index_"+i+".html";
			list.add(url);
		}
		return list;
	}
	public static List<String> getUrlFrom01_HL() {
		List<String> list = new ArrayList<String>();
		list.add("https://yuer.pcbaby.com.cn/yinger/huli/");
		String url = "";
		for(int i=1;i<100;i++){
			url = "https://yuer.pcbaby.com.cn/yinger/huli/index_"+i+".html";
			list.add(url);
		}
		return list;
	}
	public static List<String> getUrlFrom01_JB() {
		List<String> list = new ArrayList<String>();
		list.add("https://yuer.pcbaby.com.cn/yinger/jibing/");
		String url = "";
		for(int i=1;i<100;i++){
			url = "https://yuer.pcbaby.com.cn/yinger/jibing/index_"+i+".html";
			list.add(url);
		}
		return list;
	}
	public static List<String> getUrlFrom01_SP() {
		List<String> list = new ArrayList<String>();
		list.add("https://www.pcbaby.com.cn/shipu/youershipu/yeyytlsp/");
		String url = "";
		for(int i=1;i<100;i++){
			url = "https://www.pcbaby.com.cn/shipu/youershipu/yeyytlsp/index_"+i+".html";
			list.add(url);
		}
		return list;
	}
	public static List<String> getUrlFrom13_HL() {
		List<String> list = new ArrayList<String>();
		list.add("https://yuer.pcbaby.com.cn/youer/huli/");
		String url = "";
		for(int i=1;i<100;i++){
			url = "https://yuer.pcbaby.com.cn/youer/huli/index_"+i+".html";
			list.add(url);
		}
		return list;
	}
	public static List<String> getUrlFrom13_JB() {
		List<String> list = new ArrayList<String>();
		list.add("https://yuer.pcbaby.com.cn/youer/jibing//");
		String url = "";
		for(int i=1;i<100;i++){
			url = "https://yuer.pcbaby.com.cn/youer/jibing/index_"+i+".html";
			list.add(url);
		}
		return list;
	}
	public static List<String> getUrlFrom13_SP() {
		List<String> list = new ArrayList<String>();
		list.add("https://www.pcbaby.com.cn/shipu/youershipu/youer/");
		String url = "";
		for(int i=1;i<100;i++){
			url = "https://www.pcbaby.com.cn/shipu/youershipu/youer/index_"+i+".html";
			list.add(url);
		}
		return list;
	}
	public static List<String> getUrlFrom36_HL() {
		List<String> list = new ArrayList<String>();
		list.add("https://yuer.pcbaby.com.cn/xuelingqian/huli/");
		String url = "";
		for(int i=1;i<100;i++){
			url = "https://yuer.pcbaby.com.cn/xuelingqian/huli/index_"+i+".html";
			list.add(url);
		}
		return list;
	}
	public static List<String> getUrlFrom36_JB() {
		List<String> list = new ArrayList<String>();
		list.add("https://yuer.pcbaby.com.cn/xuelingqian/jibing/");
		String url = "";
		for(int i=1;i<100;i++){
			url = "https://yuer.pcbaby.com.cn/xuelingqian/jibing/index_"+i+".html";
			list.add(url);
		}
		return list;
	}
	public static List<String> getUrlFrom36_SP() {
		List<String> list = new ArrayList<String>();
		list.add("https://www.pcbaby.com.cn/shipu/youershipu/xuelingqian/");
		String url = "";
		for(int i=1;i<100;i++){
			url = "https://www.pcbaby.com.cn/shipu/youershipu/xuelingqian/index_"+i+".html";
			list.add(url);
		}
		return list;
	}


}
