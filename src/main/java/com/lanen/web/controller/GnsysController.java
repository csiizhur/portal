package com.lanen.web.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
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
	public ModelAndView index() {

		return new ModelAndView("redirect:detail/sydw.html");
	}

	/**
	 * 功能实验室详情
	 * 
	 * @return
	 * @author Administrator-zhur
	 * @date 2016年7月4日 下午3:49:52
	 */
	@RequestMapping("/gnsysInfo")
	public ModelAndView gnsysInfo(@RequestParam int laboratoryId) {

		Laboratory lab = laboratoryService.queryLabById(laboratoryId);
		return new ModelAndView("/laboratory/laboratory-inform").addObject(
				"lab", lab);
	}
	
	@RequestMapping(value="/detail/*",method=RequestMethod.GET)
	public ModelAndView laboratoryDetail(HttpServletRequest reeq){
		String url=reeq.getRequestURI();
		Laboratory lab = new Laboratory();
		List<Laboratory> list=new ArrayList<Laboratory>();
		
		String messageImg="";
		if(url.contains("/sydw.html")){
			list=laboratoryService.queryLabByType(1);
		}else if(url.contains("/zzbl.html")){
			list=laboratoryService.queryLabByType(2);
		}else if(url.contains("/lcjy.html")){
			list=laboratoryService.queryLabByType(3);
		}else if(url.contains("/ybdl.html")){
			list=laboratoryService.queryLabByType(4);
		}else if(url.contains("/fxs.html")){
			list=laboratoryService.queryLabByType(5);
		}else if(url.contains("/xbsw.html")){
			list=laboratoryService.queryLabByType(6);
		}else if(url.contains("/gsp.html")){
			list=laboratoryService.queryLabByType(7);
		}else if(url.contains("/das.html")){
			list=laboratoryService.queryLabByType(8);
		}else if(url.contains("/detail/hjdl.html")){
			list=laboratoryService.queryLabByType(9);
		}else if(url.contains("/xxzx.html")){
			list=laboratoryService.queryLabByType(10);
		}else {
			list=laboratoryService.queryLabByType(11);
		}
		if(list.size()>0&&list!=null){
			lab=list.get(0);
			if(lab.getLaboratoryPic()==null||("").equals(lab.getLaboratoryPic())){
				messageImg="noPic";
			}
			
		}else{
			lab.setLaboratoryInfo("抱歉没有数据");
			messageImg="noPic";
		}
		return new ModelAndView("laboratory/laboratory-show").addObject("lab", lab).addObject("msg", messageImg);
	}

}
