package top.fangping.test;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import top.fangping.util.GetUrlUtil;

public class CaseTest {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		//http://baby.163.com/special/begingravidity_n_20/#headList
		// TODO Auto-generated method stub
//		System.out.println(getInRecTimestamp(30));
//		System.out.println(getSpecificDayFormat(0));
		System.out.println(getCertainTimestamp(0,0,0));;
//		String beiyun_url="";
//		for(int i=2;i<21;i++){
//			if(i<10){
//				beiyun_url="http://baby.163.com/special/begingravidity_n_0"+i+"/#headList";
//			}else{
//				beiyun_url="http://baby.163.com/special/begingravidity_n_"+i+"/#headList";
//			}
//			System.out.println(beiyun_url);
//		}
//		List ls = GetUrlUtil.getUrl(true,true,true);
//		System.out.println(ls.size());
		//http://baby.163.com/special/00362MI3/baby08_20.html#headList
		//http://baby.163.com/special/00362MI3/baby08_20.html#headList
	}
	public static Timestamp getInRecTimestamp(int before_Days)
	{
		Calendar calendar = Calendar.getInstance(); // 得到日历
		calendar.add(Calendar.DAY_OF_MONTH, before_Days); // 设置为前beforeNum天
		return new Timestamp(calendar.getTime().getTime());
	}
	public static String getSpecificDayFormat(int before_Days)
	{
		SimpleDateFormat date_format = new SimpleDateFormat("yyyy-MM-dd");
		Calendar calendar = Calendar.getInstance(); // 得到日历
		calendar.add(Calendar.DAY_OF_MONTH, before_Days); // 设置为前beforeNum天
		Date d = calendar.getTime();
		return "'" + date_format.format(d) + "'";
	}
	private static Timestamp getCertainTimestamp(int hour, int minute, int second)
	{
		Calendar calendar = Calendar.getInstance(); // 得到日历
		calendar.set(Calendar.HOUR_OF_DAY, hour); // 设置为前beforeNum天
		calendar.set(Calendar.MINUTE, minute);
		calendar.set(Calendar.SECOND, second);
		return new Timestamp(calendar.getTime().getTime());
	}
	
}
