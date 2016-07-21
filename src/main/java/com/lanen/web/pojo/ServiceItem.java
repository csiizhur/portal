package com.lanen.web.pojo;

import java.sql.Timestamp;
import java.util.List;

/**
 * 
 * @Description 服务
 * @ClassName ServiceItem.java
 * @author Administrator-zhur
 * @date 2016年7月6日下午3:04:32
 */
public class ServiceItem {

	private int id;
	private String serviceName;
	private String serviceContent;
	private String servicePic;
	private int createUser;
	private Timestamp createTime;
	private int isDel;
	private String serviceAdvantage;
	private String serviceCase;
	private int parentId;
	
	private List<ServiceCase> listServiceCase;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getServiceName() {
		return serviceName;
	}
	public void setServiceName(String serviceName) {
		this.serviceName = serviceName;
	}
	public String getServiceContent() {
		return serviceContent;
	}
	public void setServiceContent(String serviceContent) {
		this.serviceContent = serviceContent;
	}
	public String getServicePic() {
		return servicePic;
	}
	public void setServicePic(String servicePic) {
		this.servicePic = servicePic;
	}
	public int getCreateUser() {
		return createUser;
	}
	public void setCreateUser(int createUser) {
		this.createUser = createUser;
	}
	public Timestamp getCreateTime() {
		return createTime;
	}
	public void setCreateTime(Timestamp createTime) {
		this.createTime = createTime;
	}
	public int getIsDel() {
		return isDel;
	}
	public void setIsDel(int isDel) {
		this.isDel = isDel;
	}
	public int getParentId() {
		return parentId;
	}
	public void setParentId(int parentId) {
		this.parentId = parentId;
	}
	public String getServiceAdvantage() {
		return serviceAdvantage;
	}
	public void setServiceAdvantage(String serviceAdvantage) {
		this.serviceAdvantage = serviceAdvantage;
	}
	public String getServiceCase() {
		return serviceCase;
	}
	public void setServiceCase(String serviceCase) {
		this.serviceCase = serviceCase;
	}
	public List<ServiceCase> getListServiceCase() {
		return listServiceCase;
	}
	public void setListServiceCase(List<ServiceCase> listServiceCase) {
		this.listServiceCase = listServiceCase;
	}
	
	
}
