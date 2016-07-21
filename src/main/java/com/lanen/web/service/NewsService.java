package com.lanen.web.service;

import java.util.List;

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
	/**
	 * 取出最新两条新闻
	 * @return
	 * @author Administrator-zhur
	 * @date 2016年7月7日 上午10:19:24
	 */
	List<Article> queryArticleTopFive();
	/**
	 * 类型
	 * @param newsType
	 * @return
	 * @author Administrator-zhur
	 * @date 2016年7月7日 下午6:14:15
	 */
	PageInfo<Article> queryNewsByPageForType(int newsType,Integer pageNo,Integer pageSize);
}
