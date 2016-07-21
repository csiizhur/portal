package com.lanen.web.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.lanen.web.dao.ServiceItemMapperDao;
import com.lanen.web.pojo.Case;
import com.lanen.web.pojo.ServiceItem;
import com.lanen.web.service.ServiceItemService;

@Service
public class ServiceItemServiceImpl implements ServiceItemService {
	
	@Resource
	private ServiceItemMapperDao serviceItemDao;
	
	@Override
	public List<ServiceItem> queryServiceItem() {
		
		return serviceItemDao.queryServiceItem();
	}

	@Override
	public List<ServiceItem> queryServiceItemByParentId(int parentId) {
		return serviceItemDao.queryServiceItemByParentId(parentId);
	}

	@Override
	public List<?> queryServiceCaseById(int serviceId) {
		return serviceItemDao.queryServiceCaseById(serviceId);
	}

	@Override
	public Case queryCaseNameById(int caseId) {
		return serviceItemDao.queryCaseNameById(caseId);
	} 
	
}
