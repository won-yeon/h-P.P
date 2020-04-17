package com.spring.hotel.dao;

import java.util.List;

import com.spring.hotel.dto.MyPageDTO;

import com.spring.hotel.vo.PointVO;
import com.spring.hotel.vo.QuestionVO;
import com.spring.hotel.vo.ReservationVO;
import com.spring.hotel.vo.RoomVO;


public interface MyPageDAO {
	public String profileCkPw(MyPageDTO dto);

	public void profileUpdate(MyPageDTO dto);

	public void profilePwUpdate(MyPageDTO dto);
	
	public void deleteId(MyPageDTO dto);

	public List<PointVO> pointSelectList(String id);

	public void ContentInsert(QuestionVO vo);

	public List<QuestionVO> questionList(String userId);

	public QuestionVO questionContent(String seq);

	public List<ReservationVO> reservationList(String userId);

	public RoomVO findRGT(int roomGT);

	public String checkIdPw(MyPageDTO dto);

	public ReservationVO selectReservation(int reservNo);

	public void updateRevCancled(int reservNo);

}
