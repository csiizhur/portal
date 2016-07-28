package com.lanen.web.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.lanen.web.dao.ArticleMapper;
import com.lanen.web.pojo.Article;
import com.lanen.web.service.NewsService;

/**
 * 
 * @Description 新闻
 * @ClassName NewsServiceImpl.java
 * @author Administrator-zhur
 * @date 2016年7月22日下午1:01:43
 */
@Service
public class NewsServiceImpl implements NewsService {
	
	@Resource
	private ArticleMapper articleDao;
	@Override
	public PageInfo<Article> queryByPage(Integer pageNo,Integer pageSize) {
	    pageNo = pageNo == null?1:pageNo;
	    pageSize = pageSize == null?12:pageSize;
	    PageHelper.startPage(pageNo, pageSize);
	    List<Article> list = articleDao.getHotArticles();
	    //用PageInfo对结果进行包装
	    PageInfo<Article> page = new PageInfo<Article>(list);
	    return page;
	}
	@Override
	public Article queryById(Integer id) {
		
		return articleDao.queryById(id);
	}
	@Override
	public List<Article> queryArticleTopFive() {
		return articleDao.queryArticleTop5();
	}
	@Override
	public PageInfo<Article> queryNewsByPageForType(int newsType,Integer pageNo,Integer pageSize) {
		pageNo = pageNo == null?1:pageNo;
	    pageSize = pageSize == null?12:pageSize;
	    PageHelper.startPage(pageNo, pageSize);
	    List<Article> list = articleDao.queryNewsByType(newsType);
	    //用PageInfo对结果进行包装
	    PageInfo<Article> page = new PageInfo<Article>(list);
	    return page;
	}
	@Override
	public PageInfo<Article> queryNewsByKeyword(String keyWord, Integer pageNo,
			Integer pageSize) {
		 	pageNo = pageNo == null?1:pageNo;
		    pageSize = pageSize == null?12:pageSize;
		    PageHelper.startPage(pageNo, pageSize);
		    List<Article> list = articleDao.queryByKeyWord(keyWord);
		    //用PageInfo对结果进行包装
		    PageInfo<Article> page = new PageInfo<Article>(list);
		    return page;
	} 
	
}
