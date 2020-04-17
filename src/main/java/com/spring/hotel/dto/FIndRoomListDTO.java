package com.spring.hotel.dto;

public class FIndRoomListDTO {
	
	private String checkInDate;
	private String checkOutDate;
	private String roomNum;
	private String CustomNum;
	public String getCheckInDate() {
		return checkInDate;
	}
	public void setCheckInDate(String checkInDate) {
		this.checkInDate = checkInDate;
	}
	public String getCheckOutDate() {
		return checkOutDate;
	}
	public void setCheckOutDate(String checkOutDate) {
		this.checkOutDate = checkOutDate;
	}
	public String getRoomNum() {
		return roomNum;
	}
	public void setRoomNum(String roomNum) {
		this.roomNum = roomNum;
	}
	public String getCustomNum() {
		return CustomNum;
	}
	public void setCustomNum(String customNum) {
		CustomNum = customNum;
	}
	
	
}
