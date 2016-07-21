package com.lanen.web.pojo;

/**
 * 技术团队
 * @Description 
 * @ClassName Team.java
 * @author Administrator-zhur
 * @date 2016年7月7日下午2:45:59
 */
public class Team {

	private int id;
	private String teamName;
	private String teamInfo;
	private String teamPic;
	private int isDel;
	private String teamDescription;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	public String getTeamName() {
		return teamName;
	}
	public void setTeamName(String teamName) {
		this.teamName = teamName;
	}
	public String getTeamInfo() {
		return teamInfo;
	}
	public void setTeamInfo(String teamInfo) {
		this.teamInfo = teamInfo;
	}
	public String getTeamPic() {
		return teamPic;
	}
	public void setTeamPic(String teamPic) {
		this.teamPic = teamPic;
	}
	public int getIsDel() {
		return isDel;
	}
	public void setIsDel(int isDel) {
		this.isDel = isDel;
	}
	public String getTeamDescription() {
		return teamDescription;
	}
	public void setTeamDescription(String teamDescription) {
		this.teamDescription = teamDescription;
	}
	
	
	
}
