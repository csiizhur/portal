package com.lanen.web.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.web.servlet.ModelAndView;

import com.github.pagehelper.PageInfo;
import com.lanen.web.util.Constrants;
import com.lanen.web.util.PageQueryUtil;
import com.lanen.web.util.PageUtil;

public class BaseController {

	public ModelAndView backView(String view, PageInfo T) {
		ModelAndView v = new ModelAndView(view);
		Map<String,Object> map=new HashMap<String,Object>();
		PageQueryUtil page=new PageQueryUtil();
		
	    page.setCurrentPage(T.getPageNum());//当前页
	    page.setTotalSize((int)T.getTotal());//总记录数
	    page.setPageSize(T.getPageSize());//每页记录数
	    page.setTotalPage(T.getPages());//总页数
	    
	    List pageList= T.getList();
	    //由于在page里面重写了toString方法，这里再构造一个List装list;
	    List list=new ArrayList();
	    list.addAll(pageList);
		map.put(Constrants.LIST, list);
		map.put(Constrants.PAGE_STRING, PageUtil.pageString(page));
		
		map.put("totalSize", T.getTotal());
		map.put("totalPage", T.getPages());
		map.put("currentPage", T.getPageNum());
		v.addAllObjects(map);

		return v;
	}
}
