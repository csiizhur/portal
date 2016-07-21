package com.lanen.web.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.lanen.web.dao.CompanyInfoMapperDao;
import com.lanen.web.pojo.CompanyInfo;
import com.lanen.web.service.CompanyInfoService;

@Service
public class CompanyInfoServiceImpl implements CompanyInfoService {
	
	@Resource
	private CompanyInfoMapperDao companyInfoDao;
	
	@Override
	public List<CompanyInfo> queryCompanyInfo() {
		
		return companyInfoDao.queryCompanyInfo();
	}

	
}
