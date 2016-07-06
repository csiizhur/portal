package com.lanen.web.service;

import com.lanen.web.pojo.Laboratory;


public interface LaboratoryService {
	
	/**
	 * 根据type查
	 * @param id
	 * @return
	 * @author Administrator-zhur
	 * @date 2016年7月5日 下午2:06:11
	 */
	Laboratory queryLabByType(int type);
}
