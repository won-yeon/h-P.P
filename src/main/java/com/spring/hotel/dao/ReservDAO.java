package com.spring.hotel.dao;

import java.util.List;

import com.spring.hotel.dto.FIndRoomListDTO;
import com.spring.hotel.dto.RoomDTO;
import com.spring.hotel.vo.PaymentVO;
import com.spring.hotel.vo.PointVO;
import com.spring.hotel.vo.ReservationVO;
import com.spring.hotel.vo.RoomVO;

public interface ReservDAO {
	public List<RoomVO> findList(FIndRoomListDTO dto);

	public void insertPay(PaymentVO payVO);

	public void insertRev(ReservationVO reservVO);

	public int selectRoomNo(RoomDTO dto);

	public void insertPoint(PointVO pointVo);

	public void updatePoint(PointVO vo);

	public int selectRevNo(String userId);

	public int getRemainPoint(String userId);

	
}
