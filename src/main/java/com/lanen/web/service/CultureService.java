package com.lanen.web.service;

import java.util.List;

import com.lanen.web.pojo.EntCulture;


public interface CultureService {
	
	
	List<EntCulture> queryEntCulture();
	
	EntCulture queryEntCultureById(int cultureId);
}
