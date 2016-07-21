package com.lanen.web.dao;

import java.util.List;

import com.lanen.web.pojo.History;

/**
 * 
 * @Description 
 * @ClassName HistoryMapperDao.java
 * @author Administrator-zhur
 * @date 2016年7月7日下午3:16:41
 */
public interface HistoryMapperDao {
	
	
	List<History> queryHistory();
	
}
