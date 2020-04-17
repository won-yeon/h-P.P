package com.spring.hotel.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.spring.hotel.dao.ReservDAO;
import com.spring.hotel.dto.FIndRoomListDTO;
import com.spring.hotel.dto.RoomDTO;
import com.spring.hotel.vo.PaymentVO;
import com.spring.hotel.vo.PointVO;
import com.spring.hotel.vo.ReservationVO;
import com.spring.hotel.vo.RoomVO;

@Service
public class ReservationServiceImpl implements ReservationService {
	
	@Inject
	ReservDAO dao;
	
	@Override
	public List<RoomVO> findRoomList(FIndRoomListDTO dto) {
		
		List<RoomVO> list =dao.findList(dto);
		
		
		
		return list ;
	}
	
	@Override
	public void insertPayment(PaymentVO payVO) {
		String cardNo="";
		for(PaymentVO list : payVO.getPayList()) {
			  cardNo += list.getCardNo();
		}
		payVO.setCardNo(cardNo);
		dao.insertPay(payVO);
		
	}
	
	@Override
	public int selectRoomNo(RoomDTO dto) {
			
		return dao.selectRoomNo(dto);
	}
	
	@Override
	public void insertResrv(ReservationVO reservVO) {
		
		PointVO pointVo = new PointVO();
		pointVo.setUserId(reservVO.getUserId());
		pointVo.setPoint(reservVO.getPrice()*3/100);
		
		dao.insertRev(reservVO);
		
		insertPoint(pointVo);
		
	}
	
	@Override
	public void insertPoint(PointVO pointVo) {
		
		dao.insertPoint(pointVo);
		updatePoint(pointVo);
		
	}
	
	@Override
	public void updatePoint(PointVO pointVo) {
		
		dao.updatePoint(pointVo);
		
	}
	
	@Override
	public int selectRevNo(String userId) {
		
		return dao.selectRevNo(userId);
	}
	
	@Override
	public int getRemainPoint(ReservationVO reservVO) {
		
		return dao.getRemainPoint(reservVO.getUserId());
	}
	
	
	
}

