package com.yy.entity;

import org.springframework.stereotype.Component;

@Component
public class NewsTitle {

	private Integer id;
	private Integer jinLiId;
	private Integer yuanGongId;
	private Integer stuId;
	private String addTime;
	private String jingLiName;
	
	private String jintian;
	
	public String getJintian() {
		return jintian;
	}
	public void setJintian(String jintian) {
		this.jintian = jintian;
	}
	public NewsTitle() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getJinLiId() {
		return jinLiId;
	}
	public void setJinLiId(Integer jinLiId) {
		this.jinLiId = jinLiId;
	}
	public Integer getYuanGongId() {
		return yuanGongId;
	}
	public void setYuanGongId(Integer yuanGongId) {
		this.yuanGongId = yuanGongId;
	}
	public Integer getStuId() {
		return stuId;
	}
	public void setStuId(Integer stuId) {
		this.stuId = stuId;
	}
	public String getAddTime() {
		return addTime;
	}
	public void setAddTime(String addTime) {
		this.addTime = addTime;
	}
	public String getJingLiName() {
		return jingLiName;
	}
	public void setJingLiName(String jingLiName) {
		this.jingLiName = jingLiName;
	}
	@Override
	public String toString() {
		return "NewsTitle [id=" + id + ", jinLiId=" + jinLiId + ", yuanGongId="
				+ yuanGongId + ", stuId=" + stuId + ", addTime=" + addTime
				+ ", jingLiName=" + jingLiName + ", jintian=" + jintian + "]";
	}
	
	
	
}
