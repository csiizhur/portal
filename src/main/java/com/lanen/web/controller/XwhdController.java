package com.lanen.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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
		//TODO 每页12记录数
		PageInfo<Article> article=newsService.queryByPage(currentPage, 12);
				
		return backView("news", article,null);
	}
	@RequestMapping("/search/{keyWord}")
	public ModelAndView search(Integer currentPage,@PathVariable String keyWord){
		//TODO 每页12记录数
		PageInfo<Article> article=newsService.queryNewsByKeyword(keyWord, currentPage, 12);
		
		return backView("news/news-inform-keyword", article,keyWord);
	}
	
	/**
	 * 新闻详情,根据type
	 * @return
	 * @author Administrator-zhur
	 * @date 2016年7月4日 下午3:49:52
	 */
	@RequestMapping("/news-inform")
	public ModelAndView newsInfo(@RequestParam int newsType,Integer articleId,RedirectAttributes attr){
		
		attr.addAttribute("articleId", articleId);
		if(newsType==1){
			return new ModelAndView("redirect:" + "news-gs-detail.html");
		}else{
			return new ModelAndView("redirect:" + "news-xs-detail.html");
		}
	}

	/**
	 * 公司新闻
	 * @return
	 * @author Administrator-zhur
	 * @date 2016年7月5日 下午2:56:43
	 */
	@RequestMapping("/news-gs-inform")
	public ModelAndView gsNewsInform(Integer currentPage){
		
		PageInfo<Article> article=newsService.queryNewsByPageForType(1,currentPage, null);
		
		return backView("news/news-gs-inform", article,null);
		
	}
	/**
	 * 学术新闻
	 * @return
	 * @author Administrator-zhur
	 * @date 2016年7月5日 下午4:39:31
	 */
	@RequestMapping("/news-xs-inform")
	public ModelAndView xsNewsInfo(Integer currentPage){
		PageInfo<Article> article=newsService.queryNewsByPageForType(2,currentPage, null);
		
		return backView("news/news-xs-inform", article,null);
	}
	
	/**
	 * 公司新闻详情
	 * @param articleId
	 * @return
	 * @author Administrator-zhur
	 * @date 2016年7月8日 下午4:34:22
	 */
	@RequestMapping("/news-gs-detail")
	public ModelAndView newsGSDetail(Integer articleId){
		
		return new ModelAndView("news/news-gs-detail", "article", newsService.queryById(articleId));
	}
	/**
	 * 学术新闻详情
	 * @param articleId
	 * @return
	 * @author Administrator-zhur
	 * @date 2016年7月8日 下午4:34:22
	 */
	@RequestMapping("/news-xs-detail")
	public ModelAndView newsXSDetail(Integer articleId){
		
		return new ModelAndView("news/news-xs-detail", "article", newsService.queryById(articleId));
	}
	
}
