package com.lanen.web.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.github.pagehelper.PageInfo;
import com.lanen.web.admin.util.Constrants;
import com.lanen.web.util.PageQueryUtil;
import com.lanen.web.util.PageUtil;

public class BaseController {

	public ModelAndView backView(String view, PageInfo T,String keyWord) {
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

		if(keyWord!=null&&!("").equals(keyWord)){
			v.addObject("keyWord", keyWord);
		}
		return v;
	}
	
	/**
	 * 得到request对象
	 */
	protected HttpServletRequest getRequest() {
		return ((ServletRequestAttributes)RequestContextHolder.getRequestAttributes()).getRequest();
	}
	/**
	 * 得到session
	 * @return
	 * @author Administrator-zhur
	 * @date 2016年7月12日 下午5:19:55
	 */
	protected HttpSession getSession(){
		return getRequest().getSession();
	}
	
	/**
	 * 
	 * @Function: successView
	 * @Description: 返回信息提示视图
	 * 
	 * @param:参数描述
	 * @return：返回结果描述
	 * @throws：异常描述
	 * 
	 * @version: v1.0.0
	 * @author: master
	 * @date: 2015-5-15 下午2:54:29
	 * 
	 *        Modification History: Date Author Version Description
	 *        ---------------------------------------------------------*
	 */
	public ModelAndView returnView(String message,String view) {
		return new ModelAndView(view).addObject(Constrants.MESSAGE_TIP_FLAGS, true)
				.addObject(Constrants.MESSAGE_TIP, message);
	}
}
