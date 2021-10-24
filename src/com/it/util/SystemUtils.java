package com.it.util;

import java.io.File;
import java.io.InputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Properties;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class SystemUtils {

	public static final String timeFormat1 = "yyyy-MM-dd";
	public static final String timeFormat2 = "yyyy-MM-dd HH:mm:ss";
	public static final String timeFormat3 = "HH:mm:ss";
	public static final String timeFlowNumber = "yyyyhhmmsss";

	

	public static String getCurrentTimeToString(String format) {
		SimpleDateFormat sdf = new SimpleDateFormat(format);
		return sdf.format(new Date());
	}

	public static String getCurrentTimeFlowNumber(String format) {
		SimpleDateFormat sdf = new SimpleDateFormat(format);
		return sdf.format(new Date());
	}

	@SuppressWarnings("unused")
	public static Properties getPropertiesUnderClassPathByName(String filename) {
		Properties properties = new Properties();
		InputStream _fis = null;
		try {
			_fis = Thread.currentThread().getContextClassLoader().getResourceAsStream(filename);
			properties.load(_fis);
			String work_begin = properties.getProperty("work_begin");
			String work_end = properties.getProperty("work_end");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return properties;
	}

	public static boolean compareNowTimeBetweenTimes() {
		Properties properties = SystemUtils.getPropertiesUnderClassPathByName("WORKPLAN.INI");
		String date = SystemUtils.getCurrentTimeToString(SystemUtils.timeFormat1);

		String work_begin = date + " " + properties.getProperty("work_begin");
		String work_end = date + " " + properties.getProperty("work_end");

		String now = SystemUtils.getCurrentTimeToString(SystemUtils.timeFormat2);

		int a = SystemUtils.betweenDate(now, work_begin, SystemUtils.timeFormat2);
		int b = SystemUtils.betweenDate(now, work_end, SystemUtils.timeFormat2);

		System.out.println(a + "========" + b);
		boolean flag = a < 0 && b > 0;
		System.out.println(a + "========" + flag);
		return flag;
	}

	public static int betweenDate(String date1, String date2, String format) {
		SimpleDateFormat sdf = new SimpleDateFormat(format);
		Date fDate = null, oDate = null;
		try {
			fDate = sdf.parse(date1);
			oDate = sdf.parse(date2);
		} catch (Exception e) {
			e.printStackTrace();
		}
		if (null == fDate || null == oDate) {
			return -1;
		}
		long intervalMilli = oDate.getTime() - fDate.getTime();

		int _Num = 1;
		if (timeFormat1.equals(format)) {
			_Num = 24 * 60 * 60 * 1000;
		}
		if (timeFormat2.equals(format)) {
			_Num = 60 * 1000;
		}

		return (int) (intervalMilli / _Num);
	}

	public static Configuration getConfiguration() {
		return new Configuration().configure(new File("WebRoot/WEB-INF/hibernate.cfg.xml"));
	}

	public static void saveUser(Object object) {
		Configuration cfg = getConfiguration();
		SessionFactory factory = cfg.buildSessionFactory();
		Session session = null;
		try {
			session = factory.getCurrentSession();
			session.beginTransaction();
			session.save(object);
			session.getTransaction().commit();
		} catch (Exception e) {
			e.printStackTrace();
			session.getTransaction().rollback();
		}
	}
}
