package com.spring.hotel.vo;



import java.util.Date;

import org.apache.ibatis.type.Alias;
import org.springframework.format.annotation.DateTimeFormat;


@Alias("reservation")
public class ReservationVO {
	private int reservNo;
	private String userId;
	private String userName;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date checkInDate;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date checkOutDate;
	private Date reservRegDate;
	private int roomNo;
	private int roomNum;
	private int userNum;
	private int breakFast;
	private int extraBed;
	private String memo;
	private int checkInTime;
	private int price;
	private int point;
	private int isCancled;
	public int getReservNo() {
		return reservNo;
	}
	public void setReservNo(int reservNo) {
		this.reservNo = reservNo;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
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
	public Date getReservRegDate() {
		return reservRegDate;
	}
	public void setReservRegDate(Date reservRegDate) {
		this.reservRegDate = reservRegDate;
	}
	public int getRoomNo() {
		return roomNo;
	}
	public void setRoomNo(int roomNo) {
		this.roomNo = roomNo;
	}
	public int getRoomNum() {
		return roomNum;
	}
	public void setRoomNum(int roomNum) {
		this.roomNum = roomNum;
	}
	public int getUserNum() {
		return userNum;
	}
	public void setUserNum(int userNum) {
		this.userNum = userNum;
	}
	public int getBreakFast() {
		return breakFast;
	}
	public void setBreakFast(int breakFast) {
		this.breakFast = breakFast;
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
	public int getCheckInTime() {
		return checkInTime;
	}
	public void setCheckInTime(int checkInTime) {
		this.checkInTime = checkInTime;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getPoint() {
		return point;
	}
	public void setPoint(int point) {
		this.point = point;
	}
	public int getIsCancled() {
		return isCancled;
	}
	public void setIsCancled(int isCancled) {
		this.isCancled = isCancled;
	}
	
	
	
}
