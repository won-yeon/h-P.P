package com.spring.hotel.controller;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.hotel.dao.ReservDAO;
import com.spring.hotel.dto.FIndRoomListDTO;
import com.spring.hotel.dto.RoomDTO;
import com.spring.hotel.service.ReservationService;
import com.spring.hotel.vo.MemberVO;
import com.spring.hotel.vo.PaymentVO;
import com.spring.hotel.vo.PointVO;
import com.spring.hotel.vo.ReservationVO;
import com.spring.hotel.vo.RoomVO;

@Controller
public class ReservationController {

	@Inject
	ReservationService service;
	
	@Inject
	ReservDAO dao;
	
	@RequestMapping(value ="/roomListCheck",method = RequestMethod.POST)
	@ResponseBody
	public List<RoomVO> test(FIndRoomListDTO dto) {
		
		List<RoomVO> list = new ArrayList<RoomVO>();
		list =service.findRoomList(dto);
		
		return list;
	}
	
	@RequestMapping(value="/insertResrv", method = RequestMethod.POST)
	public String reservDo(ReservationVO reservVO, RoomDTO dto, PaymentVO payVo,  PointVO pointVo, Model model, HttpSession session) {
		int roomNo =service.selectRoomNo(dto);
		reservVO.setRoomNo(roomNo);
		service.insertResrv(reservVO);
		service.insertPayment(payVo);
		pointVo.setPoint(-pointVo.getPoint());
		service.insertPoint(pointVo);
		int RemainPoint =service.getRemainPoint(reservVO);
		MemberVO memberVO =(MemberVO)session.getAttribute("LoginUser");
		memberVO.setRemainPoint(RemainPoint);
		session.setAttribute("LoginUser", memberVO);
		model.addAttribute("reservNo", service.selectRevNo(reservVO.getUserId()));
		
		return "reservation/reservatioResult";
	}
	
}
