package com.lanen.web.dao;

import java.util.List;

import com.lanen.web.pojo.Article;

public interface ArticleMapper {
	
	/*
	 * 文章首页
	 */
	List<Article> getHotArticles();
	
	/**
	 * 根据id查
	 * @param id
	 * @return
	 * @author Administrator-zhur
	 * @date 2016年7月5日 下午2:07:14
	 */
	Article queryById(Integer articleId);
	
}
