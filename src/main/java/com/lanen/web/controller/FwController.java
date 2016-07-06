package com.lanen.web.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.github.pagehelper.PageInfo;
import com.lanen.web.pojo.Article;
import com.lanen.web.service.impl.BaseServiceImpl;
import com.lanen.web.service.impl.ServiceItemServiceImpl;
import com.lanen.web.util.Constrants;
import com.lanen.web.util.PageQueryUtil;
import com.lanen.web.util.PageUtil;

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
	private BaseServiceImpl baseService;
	@Autowired
	private ServiceItemServiceImpl serviceItemService;
	@RequestMapping("/index")
	public ModelAndView index(){
		return new ModelAndView("service-center").addObject("list", serviceItemService.queryServiceItem());
	}
	
	/**
	 * 
	 * @return 农药
	 * @author Administrator-zhur
	 * @date 2016年7月4日 下午3:42:11
	 */
	@RequestMapping("/nongYao")
	public ModelAndView nongYao(){
		return new ModelAndView("services/");
	}
	/**
	 * 
	 * @return 新化学物质
	 * @author Administrator-zhur
	 * @date 2016年7月4日 下午3:42:11
	 */
	@RequestMapping("/xinHuaXueWuZhi")
	public ModelAndView xinHuaXueWuZhi(){
		return new ModelAndView("services/");
	}
	/**
	 * 
	 * @return 药品
	 * @author Administrator-zhur
	 * @date 2016年7月4日 下午3:42:11
	 */
	@RequestMapping("/yaoPin")
	public ModelAndView yaoPin(){
		return new ModelAndView("services/yaopin-show");
	}
	/**
	 * 根据上级查出下级
	 * @param parentId
	 * @return
	 * @author Administrator-zhur
	 * @date 2016年7月6日 下午3:42:37
	 */
	@RequestMapping("/service-item/show")
	public ModelAndView listItems(@RequestParam int parentId){
		
		//怎样将list分3个
		List<?> ll=serviceItemService.queryServiceItemByParentId(parentId);
		
		
		return new ModelAndView("/services/item-show").addObject("list", ll);
	}
	/**
	 * 通过currentPage进行分页
	 * @param currentPage
	 * @return
	 * @author Administrator-zhur
	 * @date 2016年7月5日 上午9:07:02
	 */
	@RequestMapping("/tt")
	public ModelAndView testss(Integer currentPage){
		
		//默认每页10条记录
		PageInfo<Article> article=baseService.queryByPage("", currentPage, null);
		
		return backView("news", article);
	}
	
	public ModelAndView backView(String view, PageInfo<Article> article) {
		ModelAndView v = new ModelAndView(view);
		Map<String,Object> map=new HashMap<String,Object>();
		PageQueryUtil page=new PageQueryUtil();
		
	    page.setCurrentPage(article.getPageNum());//当前页
	    page.setTotalSize((int)article.getTotal());//总记录数
	    page.setPageSize(article.getPageSize());//每页记录数
	    page.setTotalPage(article.getPages());//总页数
	    
	    List<Article> pageList= article.getList();
	    //由于在page里面重写了toString方法，这里再构造一个List装list;
	    List<Article> list=new ArrayList<Article>();
	    list.addAll(pageList);
		map.put(Constrants.LIST, list);
		map.put(Constrants.COUNT, 2);
		map.put(Constrants.PAGE, 3);
		map.put(Constrants.PAGE_STRING, PageUtil.pageString(page));
		
		map.put("totalSize", article.getTotal());
		map.put("totalPage", article.getPages());
		map.put("currentPage", article.getPageNum());
		v.addAllObjects(map);
		
		
		return v;
	}
	
}
