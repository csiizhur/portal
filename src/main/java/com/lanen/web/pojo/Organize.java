package com.lanen.web.pojo;

/**
 * 组织机构
 * @Description 
 * @ClassName Organize.java
 * @author Administrator-zhur
 * @date 2016年7月7日下午2:34:44
 */
public class Organize {

	private int id;
	private String organizeName;
	private String organizeInfo;
	private String organizePic;
	private int isDel;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getOrganizeName() {
		return organizeName;
	}
	public void setOrganizeName(String organizeName) {
		this.organizeName = organizeName;
	}
	public String getOrganizeInfo() {
		return organizeInfo;
	}
	public void setOrganizeInfo(String organizeInfo) {
		this.organizeInfo = organizeInfo;
	}
	public String getOrganizePic() {
		return organizePic;
	}
	public void setOrganizePic(String organizePic) {
		this.organizePic = organizePic;
	}
	public int getIsDel() {
		return isDel;
	}
	public void setIsDel(int isDel) {
		this.isDel = isDel;
	}
	
	
	
}
