package com.spring.hotel.vo;

import java.util.List;

import org.apache.ibatis.type.Alias;


@Alias("payment")
public class PaymentVO {
	
	private int no;
	private String userId;
	private int price;
	private String card;
	private String cardNo;
	private String cardEndMonth;
	private String cardEndYear;
	private List<PaymentVO> PayList;
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getCard() {
		return card;
	}
	public void setCard(String card) {
		this.card = card;
	}
	public String getCardNo() {
		return cardNo;
	}
	public void setCardNo(String cardNo) {
		this.cardNo = cardNo;
	}
	public String getCardEndMonth() {
		return cardEndMonth;
	}
	public void setCardEndMonth(String cardEndMonth) {
		this.cardEndMonth = cardEndMonth;
	}
	public String getCardEndYear() {
		return cardEndYear;
	}
	public void setCardEndYear(String cardEndYear) {
		this.cardEndYear = cardEndYear;
	}
	public List<PaymentVO> getPayList() {
		return PayList;
	}
	public void setPayList(List<PaymentVO> payList) {
		PayList = payList;
	}
	
	
	
	
	
}
