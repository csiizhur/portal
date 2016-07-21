package com.lanen.web.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.lanen.web.pojo.Case;
import com.lanen.web.pojo.ServiceCase;
import com.lanen.web.pojo.ServiceItem;
import com.lanen.web.service.impl.CaseServiceImpl;
import com.lanen.web.service.impl.ServiceItemServiceImpl;

/**
 * 
 * @Description
 * @ClassName FwController.java
 * @author Administrator-zhur
 * @date 2016年7月4日下午3:41:08
 */
@Controller
@RequestMapping("/fw")
public class FwController {

	@Autowired
	private ServiceItemServiceImpl serviceItemService;
	@Autowired
	private CaseServiceImpl caseService;
	
	@RequestMapping("/index")
	public ModelAndView index() {
		/*return new ModelAndView("service-center").addObject("list",
				serviceItemService.queryServiceItem());*/
		
		return new ModelAndView("redirect:detail/hjdl.html");
	}

	/**
	 * 
	 * @return 农药
	 * @author Administrator-zhur
	 * @date 2016年7月4日 下午3:42:11
	 */
	@RequestMapping("/detail/*")
	public ModelAndView serviceDetail(HttpServletRequest req) {
		String requestUrl = req.getRequestURI();
		/*String temUrl = requestUrl.substring(requestUrl.indexOf("/"),
				requestUrl.lastIndexOf("/"));*/
		String temUrl=requestUrl.substring(requestUrl.lastIndexOf("/"), requestUrl.indexOf("."));
		ServiceItem si=new ServiceItem();
		List<ServiceItem> list=new ArrayList<ServiceItem>();
		List<Case> caseList=new ArrayList<Case>();
		if (temUrl.equals("/hjdl")) {
			list =serviceItemService.queryServiceItemByParentId(0);
		} else if (temUrl.equals("/dlxjc-glp")) {
			list = serviceItemService
					.queryServiceItemByParentId(1);
		} else if (temUrl.equals("/dddlx")) {
			list =  serviceItemService
					.queryServiceItemByParentId(2);
		}else if(temUrl.equals("/dlxjc")){
			list =serviceItemService
					.queryServiceItemByParentId(3);
		}else if(temUrl.equals("stdlx")){
			list =serviceItemService
					.queryServiceItemByParentId(4);
		}else if(temUrl.equals("/ywaq")){
			
			list = serviceItemService
					.queryServiceItemByParentId(5);
		}else if(temUrl.equals("/yxxyj")){
			list =  serviceItemService
					.queryServiceItemByParentId(6);
		}else {
			list = serviceItemService
					.queryServiceItemByParentId(7);
		}

		if(list.size()>0&&list!=null){
			si=list.get(0);
			caseList=getCaseName(si.getId());
		}else{
			si.setServiceAdvantage("抱歉没有该服务信息！");
			si.setServicePic("抱歉没有该服务案例");
			si.setServiceContent("抱歉没有该服务信息！");
			si.setServiceCase("抱歉没有该服务案例");
		}
		return new ModelAndView("services/item-show").addObject("si", si).addObject("casess", caseList);
	}

	/**
	 * 
	 * @return 新化学物质
	 * @author Administrator-zhur
	 * @date 2016年7月4日 下午3:42:11
	 */
	@RequestMapping("/xhxwz/")
	public ModelAndView xinHuaXueWuZhi() {
		return new ModelAndView("services/");
	}

	/**
	 * 
	 * @return 药品
	 * @author Administrator-zhur
	 * @date 2016年7月4日 下午3:42:11
	 */
	@RequestMapping("/yaoPin")
	public ModelAndView yaoPin() {
		return new ModelAndView("services/yaopin-show");
	}

	/**
	 * 根据上级查出下级
	 * 
	 * @param parentId
	 * @return
	 * @author Administrator-zhur
	 * @date 2016年7月6日 下午3:42:37
	 */
	@RequestMapping("/service-item/show")
	public ModelAndView listItems(@RequestParam int parentId) {

		// 怎样将list分3个
		List<?> ll = serviceItemService.queryServiceItemByParentId(parentId);

		return new ModelAndView("/services/item-show").addObject("list", ll);
	}

	public List<Case> getCaseName(int serviceId){
		List<Case> list=new ArrayList<Case>();
		List<ServiceItem> l=(List<ServiceItem>) serviceItemService.queryServiceCaseById(serviceId);
		for(ServiceItem si:l){
			ServiceCase sc=si.getListServiceCase().get(0);
			System.err.println(sc.getCaseId());
			Case casess=serviceItemService.queryCaseNameById(sc.getCaseId());
			list.add(casess);
		}
		return list;
	}
}
