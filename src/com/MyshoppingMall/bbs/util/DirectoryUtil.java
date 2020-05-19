package com.MyshoppingMall.bbs.util;

import java.io.FileInputStream;
import java.io.InputStream;
import java.net.URL;
import java.util.Properties;



public class DirectoryUtil {

	private static Properties prop = new Properties();
	
	static {
		try {
			
			prop.load(new FileInputStream("C:\\Projects\\Jsp\\BBS\\src\\com\\MyshoppingMall\\bbs\\util\\fileDirectory.properties"));
		}catch(Exception e) {
			e.printStackTrace();
			throw new RuntimeException();
		}
	}
	
	public static String getSQL(String name) {
		return prop.getProperty(name);
	}
		
	
}
