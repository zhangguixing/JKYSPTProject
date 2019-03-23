package com.B509.JKGLPT.utils;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * 日期转换工具类
 * 
 * @author 兴跃神话
 *
 */
public class DateUtil {
	
	/**
	 * 日期转字符串
	 * 
	 * @param date		将转换的日期
	 * @param format	转换的格式
	 * @return
	 */
	public static String formatDate(Date date, String format) {
		try {
			SimpleDateFormat dateFormat = new SimpleDateFormat(format);
			if (date != null) {
				return dateFormat.format(date);
			}
		} catch (Exception e) {
			System.out.println("日期转字符串异常" + e.getMessage());
		}
		return null;
	}

	/**
	 * 日期转字符串
	 * 
	 * @param str 		时间字符串
	 * @param format	字符串格式
	 * @return
	 */
	public static Date formatString(String str, String format) {
		Date date = null;
		try {
			if (str != null && str.trim() != "") {
				SimpleDateFormat sdf = new SimpleDateFormat(format);
				date = sdf.parse(str);
			}
		} catch (Exception e) {
			System.out.println("字符串转日期出错: " + e.getMessage());
		}
		return date;
	}
	
	/**
	 * 获取当前时间 格式为yyyy-MM-dd hh:mm:ss
	 * @return
	 * @throws Exception
	 */
	public static String getCurrentDateStr() throws Exception {
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		return sdf.format(date);
	}
}
