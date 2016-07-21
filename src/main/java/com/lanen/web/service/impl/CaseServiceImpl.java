package com.lanen.web.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lanen.web.dao.CaseMapper;
import com.lanen.web.service.CaseService;

@Service
public class CaseServiceImpl implements CaseService {

	@Autowired
	private CaseMapper caseDao;


}
