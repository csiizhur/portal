package com.lanen.web.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lanen.web.dao.TeamMapperDao;
import com.lanen.web.pojo.Team;
import com.lanen.web.service.TeamService;

@Service
public class TeamServiceImpl implements TeamService {

	@Autowired
	private TeamMapperDao teamDao;
	@Override
	public List<Team> queryTeam() {
		return teamDao.queryTeam();
	}
	@Override
	public Team queryTeamById(int teamId) {
		return teamDao.queryTeamById(teamId);
	}

}
