package com.spring.hotel.vo;

import java.util.Date;

import org.apache.ibatis.type.Alias;




@Alias("adminMember")
public class AdminVO {
	private String adminId;
	private String adminPw;
	private String adminName;
	private String adminPosition;
	private String adminPhone;
	private Date adminRegdate;
	private String adminEmail;
	
	
	
	public String getAdminId() {
		return adminId;
	}
	public void setAdminId(String adminId) {
		this.adminId = adminId;
	}
	public String getAdminPw() {
		return adminPw;
	}
	public void setAdminPw(String adminPw) {
		this.adminPw = adminPw;
	}
	public String getAdminName() {
		return adminName;
	}
	public void setAdminName(String adminName) {
		this.adminName = adminName;
	}
	public String getAdminPosition() {
		return adminPosition;
	}
	public void setAdminPosition(String adminPosition) {
		this.adminPosition = adminPosition;
	}
	public String getAdminPhone() {
		return adminPhone;
	}
	public void setAdminPhone(String adminPhone) {
		this.adminPhone = adminPhone;
	}
	public Date getAdminRegdate() {
		return adminRegdate;
	}
	public void setAdminRegdate(Date adminRegdate) {
		this.adminRegdate = adminRegdate;
	}
	public String getAdminEmail() {
		return adminEmail;
	}
	public void setAdminEmail(String adminEmail) {
		this.adminEmail = adminEmail;
	}
	
		

}
