package com.lanen.web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.lanen.web.pojo.CompanyInfo;
import com.lanen.web.pojo.EntCulture;
import com.lanen.web.pojo.History;
import com.lanen.web.pojo.Honor;
import com.lanen.web.pojo.Organize;
import com.lanen.web.pojo.Team;
import com.lanen.web.service.impl.CompanyInfoServiceImpl;
import com.lanen.web.service.impl.CultureServiceImpl;
import com.lanen.web.service.impl.HistoryServiceImpl;
import com.lanen.web.service.impl.HonorServiceImpl;
import com.lanen.web.service.impl.OrganizeServiceImpl;
import com.lanen.web.service.impl.TeamServiceImpl;

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

	@Autowired
	private CompanyInfoServiceImpl companyService;
	
	@Autowired
	private OrganizeServiceImpl organizeService;
	
	@Autowired
	private TeamServiceImpl teamService;
	
	@Autowired
	private CultureServiceImpl cultureService;
	
	@Autowired
	private HonorServiceImpl honorService;
	
	@Autowired
	private HistoryServiceImpl historyService;
	
	@RequestMapping("/index")
	public ModelAndView index(){
		CompanyInfo c=companyService.queryCompanyInfo().get(0);
		return new ModelAndView("about-us").addObject("c", c);
	}
	
	/**
	 * 公司介绍
	 * @return
	 * @author Administrator-zhur
	 * @date 2016年7月5日 下午3:04:50
	 */
	@RequestMapping("company-inform")
	public ModelAndView CompanyInfo(){
		List<CompanyInfo> listCompanyInfo=companyService.queryCompanyInfo();
		return new ModelAndView("about_us/company-inform").addObject("listCompany", listCompanyInfo);
	}
	/**
	 * 组织机构
	 * @return
	 * @author Administrator-zhur
	 * @date 2016年7月5日 下午4:15:14
	 */
	@RequestMapping("/organize-inform")
	public ModelAndView OrganizeInfo(){
		List<Organize> list=organizeService.queryOrganize();
		return new ModelAndView("about_us/organize-inform").addObject("list", list);
	}
	/**
	 * 技术团队
	 * @return
	 * @author Administrator-zhur
	 * @date 2016年7月5日 下午3:04:50
	 */
	@RequestMapping("/team-inform")
	public ModelAndView TeamInfo(){
		List<Team> list=teamService.queryTeam();
		return new ModelAndView("about_us/team-inform")
		.addObject("list", list);
	}
	/**
	 * 企业文化
	 * @return
	 * @author Administrator-zhur
	 * @date 2016年7月5日 下午4:27:41
	 */
	@RequestMapping("/ent-culture-inform")
	public ModelAndView EntCultureInfo(){
		List<EntCulture> list=cultureService.queryEntCulture();
		return new ModelAndView("about_us/ent-culture-inform")
		.addObject("list", list);
	}
	/**
	 * 资质荣誉
	 * @return
	 * @author Administrator-zhur
	 * @date 2016年7月5日 下午4:27:41
	 */
	@RequestMapping("/honor-inform")
	public ModelAndView HonorInfo(){
		List<Honor> list=honorService.queryHonor();
		return new ModelAndView("about_us/honor-inform")
		.addObject("list", list);
	}
	/**
	 * 历史沿革
	 * @return
	 * @author Administrator-zhur
	 * @date 2016年7月5日 下午4:27:41
	 */
	@RequestMapping("/history-inform")
	public ModelAndView HistoryInfo(){
		List<History> list=historyService.queryHistory();
		return new ModelAndView("about_us/history-inform")
		.addObject("list", list);
	}
	
	/**
	 * team详细信息
	 * @param teamId
	 * @return
	 * @author Administrator-zhur
	 * @date 2016年7月11日 下午5:41:11
	 */
	@RequestMapping(value="/team/detail/{teamId}",method=RequestMethod.GET)
	public ModelAndView teamDetail(@PathVariable int teamId){
		Team team=teamService.queryTeamById(teamId);
		return new ModelAndView("about_us/team-detail").addObject("team", team);
	}
	
	/**
	 * 企业文化详细信息
	 * @param cultureId
	 * @return
	 * @author Administrator-zhur
	 * @date 2016年7月11日 下午6:16:29
	 */
	@RequestMapping(value="/culture/detail/{cultureId}",method=RequestMethod.GET)
	public ModelAndView cultureDetail(@PathVariable int cultureId){
		EntCulture culture=cultureService.queryEntCultureById(cultureId);
		return new ModelAndView("about_us/culture-detail").addObject("culture", culture);
	}
}
