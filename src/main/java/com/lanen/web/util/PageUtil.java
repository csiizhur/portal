package com.lanen.web.util;

public class PageUtil {

	/**
	 *  获取分页字符串
	 * @param page
	 * @return
	 * @author Administrator-zhur
	 * @date 2016年7月22日 下午12:59:06
	 */
	public static String pageString(PageQueryUtil page) {
		StringBuffer buffer = new StringBuffer();
		buffer.append("<li><a href='javascript:void(0);' onclick='toStart()'>首页</a></li>");
		if (page.getCurrentPage() == 1) {
			buffer.append("<li class='am-disabled'><a class='page_s' href='javascript:void(0);'>«</a></li>");
		} else {
			buffer.append(
					"<li><a class='page_s' href='javascript:void(0);' lang='")
					.append(page.getCurrentPage() - 1).append("'>«</a></li>");
		}
		for (int i = page.getStart(); i < page.getEnd(); i++) {
			if (i == page.getCurrentPage()) {
				buffer.append(
						"<li class='am-active'><a class='page_s' href='javascript:void(0);' lang='")
						.append(i).append("'>").append(i).append("</a></li>");
			} else {
				buffer.append(
						"<li><a class='page_s' href='javascript:void(0);' lang='")
						.append(i).append("'>").append(i).append("</a></li>");
			}
		}
		if (page.getCurrentPage() >= page.getTotalPage()) {
			buffer.append("<li class='am-disabled'><a class='page_s' href='javascript:void(0);'>»</a>");
		} else {
			buffer.append(
					"<li><a class='page_s' href='javascript:void(0);' lang='")
					.append(page.getCurrentPage() + 1).append("'>»</a></li>");
		}
		buffer.append("<li><a onclick='toEnd()' href='javascript:void(0);'>尾页</a></li>");
		return buffer.toString();
	}
}
