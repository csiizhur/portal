package com.lanen.web.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.lanen.web.pojo.Article;
import com.lanen.web.pojo.Laboratory;
import com.lanen.web.service.impl.LaboratoryServiceImpl;
import com.lanen.web.service.impl.NewsServiceImpl;

@Controller
public class IndexController {

	@Autowired
	private NewsServiceImpl newsService;
	@Autowired
	private LaboratoryServiceImpl laboratoryService;
	/**
	 * 
	 * @return 首页
	 * @author Administrator-zhur
	 * @date 2016年7月6日 下午8:19:03
	 */
	@RequestMapping("/index")
	public ModelAndView index(HttpServletRequest req){
		//加载新闻动态前5条
		List<Article> topFiveNews=newsService.queryArticleTopFive();
		//加载功能实验室前8条
		List<Laboratory> Labs=laboratoryService.queryLabTop8();
		//路径
		String portalPath=req.getServletPath();
		String portalPath1=req.getSession().getServletContext().getRealPath("/");
		String portalPath2=req.getRealPath("/");
		req.getSession().setAttribute("portalPath", portalPath2);
		return new ModelAndView("index").addObject("news", topFiveNews).addObject("labs", Labs);
	}

}
