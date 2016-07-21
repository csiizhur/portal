package com.lanen.web.pojo;

import java.util.Date;

/**
 * 企业文化
 * @Description 
 * @ClassName EntCulture.java
 * @author Administrator-zhur
 * @date 2016年7月7日下午2:54:06
 */
public class EntCulture {

	private int id;
	private String cultureName;
	private String cultureDescription;
	private String cultureInfo;
	private String culturePic;
	private Date cultureDate;
	private int isDel;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}

	public String getCultureName() {
		return cultureName;
	}
	public void setCultureName(String cultureName) {
		this.cultureName = cultureName;
	}
	public String getCultureInfo() {
		return cultureInfo;
	}
	public void setCultureInfo(String cultureInfo) {
		this.cultureInfo = cultureInfo;
	}
	public String getCulturePic() {
		return culturePic;
	}
	public void setCulturePic(String culturePic) {
		this.culturePic = culturePic;
	}
	public int getIsDel() {
		return isDel;
	}
	public void setIsDel(int isDel) {
		this.isDel = isDel;
	}
	public String getCultureDescription() {
		return cultureDescription;
	}
	public void setCultureDescription(String cultureDescription) {
		this.cultureDescription = cultureDescription;
	}
	public Date getCultureDate() {
		return cultureDate;
	}
	public void setCultureDate(Date cultureDate) {
		this.cultureDate = cultureDate;
	}
	
	
	
}
