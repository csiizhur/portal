package com.lanen.web.service;

import com.github.pagehelper.PageInfo;
import com.lanen.web.pojo.Article;


public interface NewsService {
	/**
	 * 分页查
	 * @param pageNo
	 * @param pageSize
	 * @return
	 * @author Administrator-zhur
	 * @date 2016年7月5日 下午2:05:33
	 */
	PageInfo<Article> queryByPage(Integer pageNo,Integer pageSize);
	/**
	 * 根据id查
	 * @param id
	 * @return
	 * @author Administrator-zhur
	 * @date 2016年7月5日 下午2:06:11
	 */
	Article queryById(Integer id);
}
