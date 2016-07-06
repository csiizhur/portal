package com.lanen.web.service;

import com.github.pagehelper.PageInfo;
import com.lanen.web.pojo.Article;


public interface BaseService {
	PageInfo<Article> queryByPage(String userName,Integer pageNo,Integer pageSize);
}
