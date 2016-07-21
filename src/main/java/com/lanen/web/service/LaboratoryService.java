package com.lanen.web.service;

import java.util.List;

import com.lanen.web.pojo.Laboratory;


public interface LaboratoryService {
	
	/**
	 * 根据type查
	 * @param id
	 * @return
	 * @author Administrator-zhur
	 * @date 2016年7月5日 下午2:06:11
	 */
	List<Laboratory> queryLabByType(int type);
	
	/**
	 * 取出8条记录
	 * @return
	 * @author Administrator-zhur
	 * @date 2016年7月7日 上午10:27:56
	 */
	List<Laboratory> queryLabTop8();
	/**
	 * 根据id查询
	 * @param id
	 * @return
	 * @author Administrator-zhur
	 * @date 2016年7月7日 上午11:08:22
	 */
	Laboratory queryLabById(int id);
}
