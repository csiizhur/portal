package com.lanen.web.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lanen.web.dao.HistoryMapperDao;
import com.lanen.web.pojo.History;
import com.lanen.web.service.HistoryService;

@Service
public class HistoryServiceImpl implements HistoryService {

	@Autowired
	private HistoryMapperDao historyMapperDao;
	@Override
	public List<History> queryHistory() {
		return historyMapperDao.queryHistory();
	}

}
