package com.spring.hotel.vo;

import org.apache.ibatis.type.Alias;


@Alias("room")
public class RoomVO {
	private int roomNO;
	private String roomGrade;
	private String roomType;
	private int price;
	private String state;
	public int getRoomNO() {
		return roomNO;
	}
	public void setRoomNO(int roomNO) {
		this.roomNO = roomNO;
	}
	public String getRoomGrade() {
		return roomGrade;
	}
	public void setRoomGrade(String roomGrade) {
		this.roomGrade = roomGrade;
	}
	public String getRoomType() {
		return roomType;
	}
	public void setRoomType(String roomType) {
		this.roomType = roomType;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	
	
}
