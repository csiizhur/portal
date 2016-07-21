package com.lanen.web.util;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

public class PropertyUtils {
	
	public static String getProperty(String key) {
		InputStream in = StringUtils.class.getResourceAsStream("/config/properties/image.properties");
		Properties p = new Properties();
		try {
			p.load(in);
		} catch (IOException e) {
			new RuntimeException(e.getMessage());
		}
		return p.getProperty(key);
	}
	
}
