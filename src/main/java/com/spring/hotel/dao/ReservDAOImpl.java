package com.spring.hotel.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spring.hotel.dto.FIndRoomListDTO;
import com.spring.hotel.dto.RoomDTO;
import com.spring.hotel.vo.PaymentVO;
import com.spring.hotel.vo.PointVO;
import com.spring.hotel.vo.ReservationVO;
import com.spring.hotel.vo.RoomVO;

@Repository
public class ReservDAOImpl implements ReservDAO {
	
	@Inject
	SqlSession session;
	
	@Override
	public List<RoomVO> findList(FIndRoomListDTO dto) {
		
		List<RoomVO> list = session.selectList("reservation.findRoomList", dto);
	
		
		return list;
	}
	
	@Override
	public void insertPay(PaymentVO payVO) {
		
		session.insert("reservation.insertPay", payVO);
		
	}
	
	@Override
	public void insertRev(ReservationVO reservVO) {
		
		session.insert("reservation.insertRev", reservVO);
		
	}
	
	@Override
	public int selectRoomNo(RoomDTO dto) {
		
		return session.selectOne("reservation.selectRoom",dto);
		
		
	}
	
	@Override
	public void insertPoint(PointVO pointVo) {
		
		session.insert("reservation.insertPoint",pointVo);
	}
	
	@Override
	public void updatePoint(PointVO vo) {
		
		session.update("reservation.updatePoint", vo);
		
		
	}
	
	@Override
	public int selectRevNo(String userId) {
		
		return session.selectOne("reservation.selectRevNo", userId);
	}
	
	@Override
	public int getRemainPoint(String userId) {
		
		return session.selectOne("reservation.getRemainPoint", userId);
	}

}
