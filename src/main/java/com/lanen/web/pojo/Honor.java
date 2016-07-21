package com.lanen.web.pojo;

/**
 * 资质荣誉
 * @Description 
 * @ClassName Honor.java
 * @author Administrator-zhur
 * @date 2016年7月7日下午3:05:16
 */
public class Honor {

	private Integer id;
	private String title;
	private String content;
	private String pic;
	private int isDel;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}

	
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getPic() {
		return pic;
	}
	public void setPic(String pic) {
		this.pic = pic;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public int getIsDel() {
		return isDel;
	}
	public void setIsDel(int isDel) {
		this.isDel = isDel;
	}
	
	
	
}
