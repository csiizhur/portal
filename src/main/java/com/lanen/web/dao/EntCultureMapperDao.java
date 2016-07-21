package com.lanen.web.dao;

import java.util.List;

import com.lanen.web.pojo.EntCulture;

/**
 * 
 * @Description 
 * @ClassName EntCultureMapperDao.java
 * @author Administrator-zhur
 * @date 2016年7月7日下午2:57:33
 */
public interface EntCultureMapperDao {
	
	
	List<EntCulture> queryEntCulture();
	
	EntCulture queryEntCultureById(int cultureId);
	
}
