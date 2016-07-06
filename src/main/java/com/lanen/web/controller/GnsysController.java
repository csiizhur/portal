package com.lanen.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.lanen.web.pojo.Laboratory;
import com.lanen.web.service.impl.LaboratoryServiceImpl;

/**
 * 
 * @Description 功能实验室
 * @ClassName XwhdController.java
 * @author Administrator-zhur
 * @date 2016年7月4日下午3:45:42
 */
@Controller
@RequestMapping("/gnsys")
public class GnsysController {

	@Autowired
	private LaboratoryServiceImpl laboratoryService;
	
	@RequestMapping("/index")
	public ModelAndView index(){
		return new ModelAndView("/laboratory");
	}
	
	/**
	 * 功能实验室详情
	 * @return
	 * @author Administrator-zhur
	 * @date 2016年7月4日 下午3:49:52
	 */
	@RequestMapping("/gnsysInfo")
	public ModelAndView gnsysInfo(@RequestParam int type){
		
		Laboratory lab=laboratoryService.queryLabByType(type);
		//return new ModelAndView("/laboratory/laboratory-inform").addObject(lab);
		return new ModelAndView("/laboratory/laboratory-inform").addObject("lab", lab);
	}
	
}
