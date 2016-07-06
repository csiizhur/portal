package com.lanen.web.dao;

import com.lanen.web.pojo.Laboratory;

/**
 * 
 * @Description 
 * @ClassName LaboratoryMapperDao.java
 * @author Administrator-zhur
 * @date 2016年7月6日下午2:16:32
 */
public interface LaboratoryMapperDao {
	
	
	Laboratory queryLabByType(int laboratoryType);
	
}
