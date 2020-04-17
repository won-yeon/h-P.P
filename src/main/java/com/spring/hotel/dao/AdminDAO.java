package com.spring.hotel.dao;

import java.util.List;

import com.spring.hotel.dto.AadminReservDTO;
import com.spring.hotel.dto.AdminMemberDTO;
import com.spring.hotel.vo.MemberVO;
import com.spring.hotel.vo.NonPayment;
import com.spring.hotel.vo.NonReservationVO;
import com.spring.hotel.vo.QuestionVO;
import com.spring.hotel.vo.ReservationVO;
import com.spring.hotel.vo.RoomVO;

public interface AdminDAO {

	List<MemberVO> memberList();

	MemberVO memberOne(String userId);

	List<ReservationVO> reservList();

	List<ReservationVO> reservList(String userId);

	ReservationVO reservDetail(int reservNo);

	RoomVO findGT(int roomNo);

	List<MemberVO> MemberSearch(AdminMemberDTO dto);

	List<ReservationVO> reservSearch(AadminReservDTO vo);

	List<QuestionVO> questionList();

	QuestionVO questionContent(int questionNo);

	void replayInsert(QuestionVO vo);

	void replayUpdate(QuestionVO vo);

	List<RoomVO> roomList();

	RoomVO roomDetail(int roomNO);

	int updateState(RoomVO vo);

	void autoUpdateRev();

	ReservationVO selectRoomDetail(int roomNO);

	void insertNonPay(NonPayment vo1);

	void insertNonRev(NonReservationVO vo2);

	NonReservationVO selectNonRserv(int roomNO);

	void nonRevCheckOut(int no);

	void updateReservCancle(int reservNo);

}
