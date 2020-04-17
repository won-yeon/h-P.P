package com.spring.hotel.vo;

import java.util.Date;

import org.apache.ibatis.type.Alias;
import org.springframework.format.annotation.DateTimeFormat;


@Alias("nonRev")
public class NonReservationVO {

	private int no;
	private String id;
	private String name;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date checkInDate;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date checkOutDate;
	private int roomNO;
	private int userNum;
	private int breakfast;
	private int extraBed;
	private String memo;
	private int price;
	private int isCheckOut;
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
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
	public int getRoomNO() {
		return roomNO;
	}
	public void setRoomNO(int roomNO) {
		this.roomNO = roomNO;
	}
	public int getUserNum() {
		return userNum;
	}
	public void setUserNum(int userNum) {
		this.userNum = userNum;
	}
	public int getBreakfast() {
		return breakfast;
	}
	public void setBreakfast(int breakfast) {
		this.breakfast = breakfast;
	}
	public int getExtraBed() {
		return extraBed;
	}
	public void setExtraBed(int extraBed) {
		this.extraBed = extraBed;
	}
	public String getMemo() {
		return memo;
	}
	public void setMemo(String memo) {
		this.memo = memo;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getIsCheckOut() {
		return isCheckOut;
	}
	public void setIsCheckOut(int isCheckOut) {
		this.isCheckOut = isCheckOut;
	}
	
	
	
}

