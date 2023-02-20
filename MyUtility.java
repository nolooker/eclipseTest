package com.shopping.utility;

import java.io.FileInputStream;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;



//이 클래스는 유틸리티 용도로 사용됩니다.
public class MyUtility {

	public static Map<String, String> getSettingMap(String workingFile) {
		//workingFile을 이용하여 자바의 앱 형식으로 반환해 줍니다.
		Map<String, String> map = new HashMap<String, String>() ;
		Properties prop = null ;
		
		prop = getPropertiesData(workingFile) ;
		
		Enumeration<Object> keys = prop.keys() ;
		
			while(keys.hasMoreElements()) {
				String key = keys.nextElement().toString() ;
				String value = prop.getProperty(key) ;
			map.put(key, value) ; 
			}
		
		return map ;
	} 
	
	// 스트림을 이용하여 프로퍼티 목록을 반환해 줍니다.
	private static Properties getPropertiesData(String workingFile) {
		
		FileInputStream fis = null ;
		Properties properties = null ;
		
		try {
			fis = new FileInputStream(workingFile) ;
			
			properties = new Properties() ;
			properties.load(fis);
			
			
		} catch (Exception e) {
			
			e.printStackTrace();
			
		} finally {
			
				try {
					
					if(fis != null) {fis.close();}
					
				} catch (Exception e2) {
					
					e2.printStackTrace();
				}
				
		}
		
		System.out.println("properties.toString()");
		System.out.println(properties.toString());
		
		return properties;
	}
	
}
