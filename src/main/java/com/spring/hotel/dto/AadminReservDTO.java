package com.spring.hotel.dto;

import java.util.Date;


public class AadminReservDTO {
	private String userId;
	private int reservNo;
	private int roomNo;
	private Date reservRegDate;
	private Date checkInDate;
	private Date checkOutDate;
	private int isCancled;
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public int getReservNo() {
		return reservNo;
	}
	public void setReservNo(int reservNo) {
		this.reservNo = reservNo;
	}
	public int getRoomNo() {
		return roomNo;
	}
	public void setRoomNo(int roomNo) {
		this.roomNo = roomNo;
	}
	public Date getReservRegDate() {
		return reservRegDate;
	}
	public void setReservRegDate(Date reservRegDate) {
		this.reservRegDate = reservRegDate;
	}
	public Date getCheckInDate() {
		return checkInDate;
	}
	public void setCheckInDate(Date checkInDate) {
		this.checkInDate = checkInDate;
	}
	public Date getCheckOutDate() {
		return checkOutDate;
	}
	public void setCheckOutDate(Date checkOutDate) {
		this.checkOutDate = checkOutDate;
	}
	public int getIsCancled() {
		return isCancled;
	}
	public void setIsCancled(int isCancled) {
		this.isCancled = isCancled;
	}
	
	
	
}

