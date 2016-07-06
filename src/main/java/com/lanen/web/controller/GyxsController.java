package com.lanen.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * 
 * @Description 
 * @ClassName GyxsController.java
 * @author Administrator-zhur
 * @date 2016年7月4日下午2:33:10
 */
@Controller
@RequestMapping("/gyxs")
public class GyxsController {

	
	@RequestMapping("/index")
	public ModelAndView index(){
		return new ModelAndView("about-us");
	}
	
	/**
	 * 公司介绍
	 * @return
	 * @author Administrator-zhur
	 * @date 2016年7月5日 下午3:04:50
	 */
	@RequestMapping("company-inform")
	public ModelAndView CompanyInfo(){
		return new ModelAndView("about_us/company-inform");
	}
	/**
	 * 组织机构
	 * @return
	 * @author Administrator-zhur
	 * @date 2016年7月5日 下午4:15:14
	 */
	@RequestMapping("/organize-inform")
	public ModelAndView OrganizeInfo(){
		return new ModelAndView("about_us/organize-inform");
	}
	/**
	 * 技术团队
	 * @return
	 * @author Administrator-zhur
	 * @date 2016年7月5日 下午3:04:50
	 */
	@RequestMapping("/team-inform")
	public ModelAndView TeamInfo(){
		return new ModelAndView("about_us/team-inform");
	}
	/**
	 * 企业文化
	 * @return
	 * @author Administrator-zhur
	 * @date 2016年7月5日 下午4:27:41
	 */
	@RequestMapping("/ent-culture-inform")
	public ModelAndView EntCultureInfo(){
		return new ModelAndView("about_us/ent-culture-inform");
	}
	/**
	 * 资质荣誉
	 * @return
	 * @author Administrator-zhur
	 * @date 2016年7月5日 下午4:27:41
	 */
	@RequestMapping("/honor-inform")
	public ModelAndView HonorInfo(){
		return new ModelAndView("about_us/honor-inform");
	}
	/**
	 * 历史沿革
	 * @return
	 * @author Administrator-zhur
	 * @date 2016年7月5日 下午4:27:41
	 */
	@RequestMapping("/history-inform")
	public ModelAndView HistoryInfo(){
		return new ModelAndView("about_us/history-inform");
	}
}
