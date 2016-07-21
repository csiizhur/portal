/**   
* Copyright: Copyright (c) 2015 xlz
* 
* @ClassName: BaseServiceImpl.java
* @Description: 基础业务处理类
*
* @version: v1.0.0
* @author: xuyiping
* @date: 2015-4-21 上午9:37:24 
*
* Modification History:
* Date         Author          Version            Description
*---------------------------------------------------------*
* 2014-1-13     xuyiping           v1.0.0               修改原因
*/
package com.lanen.web.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.lanen.web.dao.LaboratoryMapperDao;
import com.lanen.web.pojo.Laboratory;
import com.lanen.web.service.LaboratoryService;

/**
 * 
 * @author yiping.xu 基础业务层
 * @param <T>
 */
@Service
public class LaboratoryServiceImpl implements LaboratoryService {
	
	@Resource
	private LaboratoryMapperDao laboratoryDao;
	
	@Override
	public List<Laboratory> queryLabByType(int laboratoryType) {
		
		return laboratoryDao.queryLabByType(laboratoryType);
	}

	@Override
	public List<Laboratory> queryLabTop8() {
		return laboratoryDao.queryLabTop8();
	}

	@Override
	public Laboratory queryLabById(int id) {
		return laboratoryDao.queryLabById(id);
	} 
	
}
