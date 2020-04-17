package com.spring.hotel.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spring.hotel.dto.AadminReservDTO;
import com.spring.hotel.dto.AdminMemberDTO;
import com.spring.hotel.vo.MemberVO;
import com.spring.hotel.vo.NonPayment;
import com.spring.hotel.vo.NonReservationVO;
import com.spring.hotel.vo.QuestionVO;
import com.spring.hotel.vo.ReservationVO;
import com.spring.hotel.vo.RoomVO;

@Repository
public class AdminDAOImpl implements AdminDAO{
	
	@Inject
	SqlSession session;
	
	@Override
	public List<MemberVO> memberList() {
		
		
		return session.selectList("admin.memberList");
	}
	
	@Override
	public MemberVO memberOne(String userId) {
		
		return session.selectOne("admin.memberOne", userId);
	}
	
	@Override
	public List<ReservationVO> reservList() {
		
		return session.selectList("admin.reservList");
	}
	
	@Override
	public List<ReservationVO> reservList(String userId) {
		
		return session.selectList("admin.reservListId", userId);
	}
	
	@Override
	public ReservationVO reservDetail(int reservNo) {
		
		return session.selectOne("admin.reservDetail",reservNo);
	}
	
	@Override
	public RoomVO findGT(int roomNo) {
		
		return session.selectOne("admin.findGT",roomNo);
	}
	
	@Override
	public List<MemberVO> MemberSearch(AdminMemberDTO dto) {
		
		return session.selectList("admin.MemberSearch", dto);
	}
	
	@Override
	public List<ReservationVO> reservSearch(AadminReservDTO vo) {

		return session.selectList("admin.reservSearch", vo);
	}
	
	@Override
	public List<QuestionVO> questionList() {
		
		return session.selectList("admin.question");
	}
	
	@Override
	public QuestionVO questionContent(int questionNo) {
		
		return session.selectOne("admin.questionContent",questionNo);
	}
	
	@Override
	public void replayInsert(QuestionVO vo) {
		session.insert("admin.reply", vo);
		
	}
	@Override
	public void replayUpdate(QuestionVO vo) {
		
		session.update("admin.replyUpdate", vo);
	}
	
	@Override
	public List<RoomVO> roomList() {
		return session.selectList("admin.roomList");
		
	}
	
	@Override
	public RoomVO roomDetail(int roomNO) {
		
		return session.selectOne("admin.roomDetail", roomNO);
	}
	
	@Override
	public ReservationVO selectRoomDetail(int roomNO) {
		return session.selectOne("admin.roomReservDetail", roomNO);
		
	}
	
	@Override
	public int updateState(RoomVO vo) {
		return session.update("admin.updateState", vo);

	}
	
	@Override
	public void autoUpdateRev() {
		session.update("admin.autoUpdate");
		
	}
	
	@Override
	public void insertNonPay(NonPayment vo1) {
		session.insert("admin.insertNonPay", vo1);
		
	}
	
	@Override
	public void insertNonRev(NonReservationVO vo2) {
		session.insert("admin.insertNonRev", vo2);
		
	}
	@Override
	public NonReservationVO selectNonRserv(int roomNO) {
		return session.selectOne("admin.selectNoneRev", roomNO);
		 
	}
	
	@Override
	public void nonRevCheckOut(int no) {
		session.update("admin.nonRevCheckOut",no);
	}
	
	@Override
	public void updateReservCancle(int reservNo) {
		session.update("admin.reservCancle", reservNo);
		
	}
}
