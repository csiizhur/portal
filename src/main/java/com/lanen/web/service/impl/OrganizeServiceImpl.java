package com.lanen.web.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lanen.web.dao.OrganizeMapperDao;
import com.lanen.web.pojo.Organize;
import com.lanen.web.service.OrganizeService;

@Service
public class OrganizeServiceImpl implements OrganizeService {

	@Autowired
	private OrganizeMapperDao organizeDao;
	@Override
	public List<Organize> queryOrganize() {
		return organizeDao.queryOrganize();
	}

}
