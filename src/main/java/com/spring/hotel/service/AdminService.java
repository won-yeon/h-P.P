package com.spring.hotel.service;

import java.util.List;

import com.spring.hotel.dto.AadminReservDTO;
import com.spring.hotel.dto.AdminMemberDTO;
import com.spring.hotel.dto.AdminParseDTO;
import com.spring.hotel.dto.ReservParseDTO;
import com.spring.hotel.vo.MemberVO;
import com.spring.hotel.vo.NonPayment;
import com.spring.hotel.vo.NonReservationVO;
import com.spring.hotel.vo.QuestionVO;
import com.spring.hotel.vo.ReservationVO;
import com.spring.hotel.vo.RoomVO;


public interface AdminService {

	List<MemberVO> memberList();

	MemberVO memberOne(String userId);

	List<ReservationVO> reservList();

	List<ReservationVO> reservList(String userId);

	ReservationVO reservDetail(int reservNo);

	RoomVO findGT(int roomNo);

	List<MemberVO> MemberSearch(AdminMemberDTO dto);

	AdminMemberDTO parse(AdminParseDTO dto2, AdminMemberDTO dto) throws Exception;

	List<ReservationVO> reservSearch(AadminReservDTO aadminReservDTO);

	AadminReservDTO rparse(AadminReservDTO dto1, ReservParseDTO dto) throws Exception;

	List<QuestionVO> questionList();

	QuestionVO questionContent(String no);

	void replyInsert(QuestionVO vo);

	List<RoomVO> roomList();

	RoomVO roomDetail(int roomNO);

	boolean updateState(RoomVO vo);

	void autoRoomState();

	ReservationVO roomReservDetail(int roomNO);

	void insertNonRev(NonReservationVO vo2);

	void insertNonPay(NonPayment vo1);

	NonReservationVO roomNonReserv(int roomNO);

	void nonRevCheckOut(int no);

	void reservCancle(int reservNo);
	
	
	
}
