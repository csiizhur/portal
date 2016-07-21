package com.lanen.web.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lanen.web.dao.EntCultureMapperDao;
import com.lanen.web.pojo.EntCulture;
import com.lanen.web.service.CultureService;

@Service
public class CultureServiceImpl implements CultureService {

	@Autowired
	private EntCultureMapperDao cultureDao;
	@Override
	public List<EntCulture> queryEntCulture() {
		return cultureDao.queryEntCulture();
	}
	@Override
	public EntCulture queryEntCultureById(int cultureId) {
		return cultureDao.queryEntCultureById(cultureId);
	}

}
