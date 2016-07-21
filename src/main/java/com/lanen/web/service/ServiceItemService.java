package com.lanen.web.service;

import java.util.List;

import com.lanen.web.pojo.Case;
import com.lanen.web.pojo.ServiceItem;


public interface ServiceItemService {
	
	
	List<ServiceItem> queryServiceItem();
	List<ServiceItem> queryServiceItemByParentId(int parentId);
	List<?> queryServiceCaseById(int serviceId);
	Case queryCaseNameById(int caseId);
}
