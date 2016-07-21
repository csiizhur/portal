package com.lanen.web.dao;

import java.util.List;

import com.lanen.web.pojo.Case;
import com.lanen.web.pojo.ServiceItem;

/**
 * 
 * @Description 
 * @ClassName LaboratoryMapperDao.java
 * @author Administrator-zhur
 * @date 2016年7月6日下午2:16:32
 */
public interface ServiceItemMapperDao {
	
	
	List<ServiceItem> queryServiceItem();
	List<ServiceItem> queryServiceItemByParentId(int parentId);
	
	List<?> queryServiceCaseById(int serviceId);
	
	Case queryCaseNameById(int caseId);
	
}
