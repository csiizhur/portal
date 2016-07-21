package com.lanen.web.dao;

import java.util.List;

import com.lanen.web.pojo.CompanyInfo;

/**
 * 
 * @Description 
 * @ClassName CompanyInfoMapperDao.java
 * @author Administrator-zhur
 * @date 2016年7月7日下午2:24:56
 */
public interface CompanyInfoMapperDao {
	
	
	List<CompanyInfo> queryCompanyInfo();
	
}
