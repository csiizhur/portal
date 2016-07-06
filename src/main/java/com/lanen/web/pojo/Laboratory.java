package com.lanen.web.pojo;

/**
 * 
 * @Description 功能实验室表
 * @ClassName Laboratory.java
 * @author Administrator-zhur
 * @date 2016年7月6日下午2:09:26
 */
public class Laboratory {

	private int id;
	private String laboratoryName;
	private String laboratoryInfo;
	private String laboratoryPic;
	private int laboratoryType;
	private int isDel;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getLaboratoryName() {
		return laboratoryName;
	}
	public void setLaboratoryName(String laboratoryName) {
		this.laboratoryName = laboratoryName;
	}
	public String getLaboratoryInfo() {
		return laboratoryInfo;
	}
	public void setLaboratoryInfo(String laboratoryInfo) {
		this.laboratoryInfo = laboratoryInfo;
	}
	public String getLaboratoryPic() {
		return laboratoryPic;
	}
	public void setLaboratoryPic(String laboratoryPic) {
		this.laboratoryPic = laboratoryPic;
	}
	public int getLaboratoryType() {
		return laboratoryType;
	}
	public void setLaboratoryType(int laboratoryType) {
		this.laboratoryType = laboratoryType;
	}
	public int getIsDel() {
		return isDel;
	}
	public void setIsDel(int isDel) {
		this.isDel = isDel;
	}
	
	
}
