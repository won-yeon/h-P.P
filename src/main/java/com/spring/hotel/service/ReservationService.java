package com.spring.hotel.service;

import java.util.List;

import com.spring.hotel.dto.FIndRoomListDTO;
import com.spring.hotel.dto.RoomDTO;
import com.spring.hotel.vo.PaymentVO;
import com.spring.hotel.vo.PointVO;
import com.spring.hotel.vo.ReservationVO;
import com.spring.hotel.vo.RoomVO;

public interface ReservationService {
	public List<RoomVO> findRoomList(FIndRoomListDTO dto);

	public void insertResrv(ReservationVO reservVO);

	public void insertPayment(PaymentVO payVO);
	
	public int selectRoomNo(RoomDTO dto);

	public void insertPoint(PointVO pointVo);
	
	public void updatePoint(PointVO vo);

	public int selectRevNo(String userId);

	public int getRemainPoint(ReservationVO reservVO);
}
