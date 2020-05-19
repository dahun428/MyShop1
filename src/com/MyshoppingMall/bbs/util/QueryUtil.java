package com.MyshoppingMall.bbs.util;

import java.io.FileInputStream;
import java.util.Properties;



public class QueryUtil {

	private static Properties prop = new Properties();

	static {
		try {
			
			prop.load(new FileInputStream("C:\\Projects\\Jsp\\BBS\\src\\com\\MyshoppingMall\\bbs\\util\\query.properties"));
		}catch(Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}
	
	public static String getSQL(String name) {
		return prop.getProperty(name);
	}
		
	
}
