package com.lanen.web.dao;

import java.util.List;

import com.lanen.web.pojo.Team;

/**
 * 
 * @Description 
 * @ClassName TeamMapperDao.java
 * @author Administrator-zhur
 * @date 2016年7月7日下午2:48:38
 */
public interface TeamMapperDao {
	
	
	List<Team> queryTeam();
	
	Team queryTeamById(int teamId);

}
