package com.spring.hotel.service;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;


import com.spring.hotel.dao.MyPageDAO;
import com.spring.hotel.dto.MyPageDTO;

import com.spring.hotel.vo.PointVO;
import com.spring.hotel.vo.QuestionVO;
import com.spring.hotel.vo.ReservationVO;
import com.spring.hotel.vo.RoomVO;

@Service
public class MyPageServiceImpl implements MyPageService {
	
	@Inject
	MyPageDAO dao;
	
	@Override
	public boolean profileCheckPw(MyPageDTO dto) {
		if(dao.profileCkPw(dto)==null || dao.profileCkPw(dto) =="") {
			return false;
		}else {
			return true;
		}
	}
	
	@Override
	public void profileUpdate(MyPageDTO dto) {
		dao.profileUpdate(dto);
		
	}
	
	@Override
	public boolean profilePwUpdate(MyPageDTO dto) {
		
		if(profileCheckPw(dto)) {
			dao.profilePwUpdate(dto);
			return true;
		}else {
			return false;
		}
		
				
	}
	@Override
	public String deleteId(MyPageDTO dto) {
		
		String msg="";
		if(dao.checkIdPw(dto)==null || dao.checkIdPw(dto)=="" ) {
			msg="잘못된 비밀번호입니다";
		}else {
			dao.deleteId(dto);
			msg="삭제";
		}
		
		
		return msg;
		
		
	}
	
	@Override
	public List<PointVO> pointSelect(String id) {
		
		List<PointVO> list = dao.pointSelectList(id);
		
		
		return list;
	}
	
	@Override
	public void ContentForm(QuestionVO vo) {
		dao.ContentInsert(vo);
		
	}
	
	@Override
		public List<QuestionVO> questionList(String userId) {
		
		List<QuestionVO> list = dao.questionList(userId);
		
		
			return  list;
	}
	
	@Override
	public QuestionVO questContent(String seq) {
		
		 return dao.questionContent(seq);
		
	}
	
	@Override
	public List<ReservationVO> reservedList(String userId) {
		
		return dao.reservationList(userId);
	}
	
	@Override
	public List<RoomVO> findTG(List<ReservationVO> list) {
		List<RoomVO> rlist = new ArrayList<RoomVO>();
		
		
		for ( int i = 0; i<list.size(); i++) {
			ReservationVO vo =(ReservationVO)list.get(i);
			int roomNo =vo.getRoomNo();
			RoomVO dto =dao.findRGT(roomNo);
			
			rlist.add(i, dto);
		}
		return rlist;
	}
	
	@Override
	public ReservationVO reservContent(int reservNo) {

		return dao.selectReservation(reservNo);
	}
	
	@Override
	public void revCancle(int reservNo) {
		dao.updateRevCancled(reservNo);
	}
}
