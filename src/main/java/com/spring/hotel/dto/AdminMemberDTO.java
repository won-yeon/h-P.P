package com.spring.hotel.dto;



import java.util.Date;


public class AdminMemberDTO {
	private String userId;
	private String userGender;
	private String userName;
	private String userEmail;
	private int phone1;
	private int phone2;
	private int phone3;
	private Date regDateS;
	private Date regDateL;
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserGender() {
		return userGender;
	}
	public void setUserGender(String userGender) {
		this.userGender = userGender;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public int getPhone1() {
		return phone1;
	}
	public void setPhone1(int phone1) {
		this.phone1 = phone1;
	}
	public int getPhone2() {
		return phone2;
	}
	public void setPhone2(int phone2) {
		this.phone2 = phone2;
	}
	public int getPhone3() {
		return phone3;
	}
	public void setPhone3(int phone3) {
		this.phone3 = phone3;
	}
	public Date getRegDateS() {
		return regDateS;
	}
	public void setRegDateS(Date regDateS) {
		this.regDateS = regDateS;
	}
	public Date getRegDateL() {
		return regDateL;
	}
	public void setRegDateL(Date regDateL) {
		this.regDateL = regDateL;
	}
	
	
	
}
