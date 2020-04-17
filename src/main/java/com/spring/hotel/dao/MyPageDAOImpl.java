package com.spring.hotel.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spring.hotel.dto.MyPageDTO;

import com.spring.hotel.vo.PointVO;
import com.spring.hotel.vo.QuestionVO;
import com.spring.hotel.vo.ReservationVO;
import com.spring.hotel.vo.RoomVO;

@Repository
public class MyPageDAOImpl implements MyPageDAO {
	
	@Inject
	SqlSession sqlSession;
	
	@Override
	public String profileCkPw(MyPageDTO dto) {
		
		return sqlSession.selectOne("myPage.checkPw", dto);
	}
	
	@Override
	public void profileUpdate(MyPageDTO dto) {
		 
		sqlSession.update("myPage.update", dto);
		
	}
	
	@Override
	public void profilePwUpdate(MyPageDTO dto) {
		
		sqlSession.update("myPage.pwUpdate",dto);
		
	}
	
	@Override
	public void deleteId(MyPageDTO dto) {
		
		sqlSession.delete("myPage.deleteId", dto);
	}
	
	@Override
	public List<PointVO> pointSelectList(String userId) {
		List<PointVO> list =sqlSession.selectList("myPage.pointList", userId);
		
		return list;
	}
	
	@Override
	public void ContentInsert(QuestionVO vo) {
		sqlSession.insert("myPage.questionInsert", vo);
		
	}
	
	@Override
	public List<QuestionVO> questionList(String userId) {
		
		return sqlSession.selectList("myPage.ContentList", userId);
	}
	
	@Override
	public QuestionVO questionContent(String seq) {
		
		return  sqlSession.selectOne("myPage.qContent", seq);
		
	}
	
	@Override
	public List<ReservationVO> reservationList(String userId) {
		
		return sqlSession.selectList("myPage.reservList",userId);
	}
	
	@Override
	public RoomVO findRGT(int roomGT) {
		
		return sqlSession.selectOne("myPage.findRGT",roomGT);
	}
	
	@Override
	public String checkIdPw(MyPageDTO dto) {
		
		return sqlSession.selectOne("myPage.checkIdPw", dto);
		
	}
	
	@Override
	public ReservationVO selectReservation(int reservNo) {
		
		return sqlSession.selectOne("myPage.selectRev",reservNo);
	}
	
	@Override
	public void updateRevCancled(int reservNo) {
		
		sqlSession.update("myPage.revCancle", reservNo);
	}
	
}
