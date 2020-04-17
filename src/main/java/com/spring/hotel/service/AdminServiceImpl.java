package com.spring.hotel.service;



import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.spring.hotel.dao.AdminDAO;
import com.spring.hotel.dto.AadminReservDTO;
import com.spring.hotel.dto.AdminMemberDTO;
import com.spring.hotel.dto.AdminParseDTO;
import com.spring.hotel.dto.ReservParseDTO;
import com.spring.hotel.vo.MemberVO;
import com.spring.hotel.vo.NonPayment;
import com.spring.hotel.vo.NonReservationVO;
import com.spring.hotel.vo.PaymentVO;
import com.spring.hotel.vo.QuestionVO;
import com.spring.hotel.vo.ReservationVO;
import com.spring.hotel.vo.RoomVO;


@Service
public class AdminServiceImpl implements AdminService {
	
	
	@Inject
	AdminDAO dao;
	
	@Override
	public List<MemberVO> memberList() {
		List<MemberVO> list =dao.memberList();
		
		return list;
	}
	
	@Override
	public MemberVO memberOne(String userId) {

		return dao.memberOne(userId);
	}
	
	@Override
	public List<ReservationVO> reservList() {
		
		return dao.reservList();
	}
	
	@Override
	public List<ReservationVO> reservList(String userId) {
		
		return dao.reservList(userId);
	}
	
	@Override
	public ReservationVO reservDetail(int reservNo) {
		
		return dao.reservDetail(reservNo);
	}
	
	
	
	@Override
	public RoomVO findGT(int roomNo) {
		
		return dao.findGT(roomNo);
	}
	
	@Override
	public List<MemberVO> MemberSearch(AdminMemberDTO dto) {
		
		return dao.MemberSearch(dto);
	}
	
	@Override
	public AdminMemberDTO parse(AdminParseDTO dto2, AdminMemberDTO dto) throws Exception {
		SimpleDateFormat Format = new SimpleDateFormat("yyyy-MM-dd");
		if(dto2.getTphone2()!="") {
			int phone2 = Integer.parseInt(dto2.getTphone2());
			dto.setPhone2(phone2);
		}
		if(dto2.getTphone3()!="") {
			int phone3 = Integer.parseInt(dto2.getTphone3());
			dto.setPhone3(phone3);
		}
		if(dto2.getTregDateL()!="") {
			Date regDateL = Format.parse(dto2.getTregDateL());
			dto.setRegDateL(regDateL);
		}
		if(dto2.getTregDateS()!="") {
			Date regDateS = Format.parse(dto2.getTregDateS());
			dto.setRegDateS(regDateS);
		}
		return dto;
	}
	
	@Override
	public List<ReservationVO> reservSearch(AadminReservDTO vo) {
		
		return dao.reservSearch(vo);
	}
	
	@Override
	public AadminReservDTO rparse(AadminReservDTO Rdto, ReservParseDTO dto) throws Exception {
		SimpleDateFormat Format = new SimpleDateFormat("yyyy-MM-dd");
		if(dto.getPreservNo()!="") {
			int reservNo = Integer.parseInt(dto.getPreservNo());
			Rdto.setReservNo(reservNo);
		}
		if(dto.getProomNo()!="") {
			int proomNo = Integer.parseInt(dto.getProomNo());
			Rdto.setRoomNo(proomNo);
		}
		if(dto.getPreservRegDate()!="") {
			Date preservRegDate = Format.parse(dto.getPreservRegDate());
			Rdto.setReservRegDate(preservRegDate);
		}
		if(dto.getPcheckInDate()!="") {
			Date pcheckInDate = Format.parse(dto.getPcheckInDate());
			Rdto.setCheckInDate(pcheckInDate);
		}
		if(dto.getPcheckOutDate()!="") {
			Date pcheckOutDate = Format.parse(dto.getPcheckOutDate());
			Rdto.setCheckOutDate(pcheckOutDate);
		}
		if(dto.getPisCancled()!="") {
			int isCancled = Integer.parseInt(dto.getPisCancled());
			Rdto.setIsCancled(isCancled);
		}
		
		return Rdto;
	}
	
	@Override
	public List<QuestionVO> questionList() {
		return dao.questionList();
	}

	@Override
	public QuestionVO questionContent(String no) {
		int questionNo = Integer.parseInt(no);
		
		return dao.questionContent(questionNo);
	}
	
	@Override
	public void replyInsert(QuestionVO vo) {
		dao.replayInsert(vo);
		dao.replayUpdate(vo);
	}
	
	@Override
	public List<RoomVO> roomList() {
		return dao.roomList();
		
	}
	
	@Override
	public RoomVO roomDetail(int roomNO) {
		
		return dao.roomDetail(roomNO);
		
	}
	
	@Override
	public boolean updateState(RoomVO vo) {
		
		if(dao.updateState(vo)==0) {
			return false;
		}else {
			return true;
		}
		
		
	}
	
	@Override
	public void autoRoomState() {
		
		dao.autoUpdateRev();
		
	}
	
	@Override
	public ReservationVO roomReservDetail(int roomNO) {
		return dao.selectRoomDetail(roomNO);
		
	}
	
	@Override
	public void insertNonPay(NonPayment vo1) {
		
		String cardNo="";
		for(PaymentVO list : vo1.getPayList()) {
			  cardNo += list.getCardNo();
		}
		
		vo1.setCardNo(cardNo);
		dao.insertNonPay(vo1);
		
	}
	
	@Override
	public void insertNonRev(NonReservationVO vo2) {
		dao.insertNonRev(vo2);
		
	}
	
	@Override
	public NonReservationVO roomNonReserv(int roomNO) {
		
		return dao.selectNonRserv(roomNO);
	}
	
	@Override
	public void nonRevCheckOut(int no) {
		dao.nonRevCheckOut(no);
		
	}
	
	@Override
	public void reservCancle(int reservNo) {
		dao.updateReservCancle(reservNo);
		
	}
	
}
