package com.lanen.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.github.pagehelper.PageInfo;
import com.lanen.web.pojo.Article;
import com.lanen.web.service.impl.NewsServiceImpl;

/**
 * 
 * @Description 新闻活动
 * @ClassName XwhdController.java
 * @author Administrator-zhur
 * @date 2016年7月4日下午3:45:42
 */
@Controller
@RequestMapping("/xwhd")
public class XwhdController extends BaseController{

	
	@Autowired
	private NewsServiceImpl newsService;
	@RequestMapping("/index")
	public ModelAndView index(Integer currentPage){
		//默认每页10条记录
		PageInfo<Article> article=newsService.queryByPage(currentPage, null);
				
		return backView("news", article);
	}
	
	/**
	 * 新闻详情
	 * @return
	 * @author Administrator-zhur
	 * @date 2016年7月4日 下午3:49:52
	 */
	@RequestMapping("/news-inform")
	public ModelAndView newsInfo(Integer articleId){
		
		//return backView("news-inform", T)
		return new ModelAndView("news/news-inform", "article", newsService.queryById(articleId));
	}

	/**
	 * 公司新闻
	 * @return
	 * @author Administrator-zhur
	 * @date 2016年7月5日 下午2:56:43
	 */
	@RequestMapping("/news-gs-inform")
	public ModelAndView gsNewsInform(){
		return new ModelAndView("news/news-gs-inform");
	}
	/**
	 * 学术新闻
	 * @return
	 * @author Administrator-zhur
	 * @date 2016年7月5日 下午4:39:31
	 */
	@RequestMapping("/news-xs-inform")
	public ModelAndView xsNewsInfo(){
		return new ModelAndView("news/news-xs-inform");
	}
}
