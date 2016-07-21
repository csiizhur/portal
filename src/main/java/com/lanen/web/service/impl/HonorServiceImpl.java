package com.lanen.web.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lanen.web.dao.HonorMapperDao;
import com.lanen.web.pojo.Honor;
import com.lanen.web.service.HonorService;

@Service
public class HonorServiceImpl implements HonorService {

	@Autowired
	private HonorMapperDao honorMapperDao;
	@Override
	public List<Honor> queryHonor() {
		return honorMapperDao.queryHonor();
	}

}
