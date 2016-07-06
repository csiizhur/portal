package com.lanen.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * 
 * @Description 
 * @ClassName LxwmController.java
 * @author Administrator-zhur
 * @date 2016年7月4日下午3:32:23
 */
@Controller
@RequestMapping("/lxwm")
public class LxwmController {

	
	@RequestMapping("/index")
	public ModelAndView index(){
		return new ModelAndView("contact-us");
	}
}
