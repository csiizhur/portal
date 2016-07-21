package com.lanen.web.service;

import java.util.List;

import com.lanen.web.pojo.Team;


public interface TeamService {
	
	
	List<Team> queryTeam();
	
	Team queryTeamById(int teamId);
}
