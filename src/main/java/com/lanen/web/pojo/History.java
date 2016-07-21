package com.lanen.web.pojo;

import java.util.Date;

/**
 * 历史沿革
 * @Description 
 * @ClassName History.java
 * @author Administrator-zhur
 * @date 2016年7月7日下午3:13:08
 */
public class History {

	private int id;
	private String historyName;
	private Date historyYear;
	private String historyInfo;
	private String historyInfo1;
	private String historyInfo2;
	private String historyInfo3;
	private String historyPic;
	private int isDel;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getHistoryName() {
		return historyName;
	}
	public void setHistoryName(String historyName) {
		this.historyName = historyName;
	}
	public String getHistoryInfo() {
		return historyInfo;
	}
	public void setHistoryInfo(String historyInfo) {
		this.historyInfo = historyInfo;
	}
	public String getHistoryPic() {
		return historyPic;
	}
	public void setHistoryPic(String historyPic) {
		this.historyPic = historyPic;
	}
	public int getIsDel() {
		return isDel;
	}
	public void setIsDel(int isDel) {
		this.isDel = isDel;
	}
	public Date getHistoryYear() {
		return historyYear;
	}
	public void setHistoryYear(Date historyYear) {
		this.historyYear = historyYear;
	}
	public String getHistoryInfo1() {
		return historyInfo1;
	}
	public void setHistoryInfo1(String historyInfo1) {
		this.historyInfo1 = historyInfo1;
	}
	public String getHistoryInfo2() {
		return historyInfo2;
	}
	public void setHistoryInfo2(String historyInfo2) {
		this.historyInfo2 = historyInfo2;
	}
	public String getHistoryInfo3() {
		return historyInfo3;
	}
	public void setHistoryInfo3(String historyInfo3) {
		this.historyInfo3 = historyInfo3;
	}
	
	
}
