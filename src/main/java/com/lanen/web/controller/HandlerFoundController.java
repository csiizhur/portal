package com.lanen.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("*")
public class HandlerFoundController {

	/**
	 * 拦截所有URL  springmvc首先进入精确匹配的method,找不到才进入该方法
	 * @return
	 * @author Administrator-zhur
	 * @date 2016年7月7日 上午9:43:18
	 */
	@RequestMapping(value="*")
	public ModelAndView NoHandlerFound(){
		return new ModelAndView("/error/404");
	}
}
