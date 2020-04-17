package com.spring.hotel.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.hotel.dto.AadminReservDTO;
import com.spring.hotel.dto.AdminMemberDTO;
import com.spring.hotel.dto.AdminParseDTO;
import com.spring.hotel.dto.ReservParseDTO;
import com.spring.hotel.service.AdminService;
import com.spring.hotel.vo.MemberVO;
import com.spring.hotel.vo.NonPayment;
import com.spring.hotel.vo.NonReservationVO;
import com.spring.hotel.vo.QuestionVO;
import com.spring.hotel.vo.ReservationVO;
import com.spring.hotel.vo.RoomVO;


@Controller
public class AdminController {
	
	@Inject
	AdminService service;
	
	@RequestMapping("admin/member")
	public String adminMember() {
		
		return "admin/adminMember";
	}
	
	@RequestMapping("admin/memberDetail")
	public String adminMemberDetail(String userId,Model model) {
		model.addAttribute("vo", service.memberOne(userId));
		model.addAttribute("rvo", service.reservList(userId));
		
		return "admin/adminMemberDetail";
	}
	
	@RequestMapping("admin/question")
	public String adminQuestion(Model model) {
		model.addAttribute("list",service.questionList());
		return "admin/adminQuestionList";
	}
	@RequestMapping("admin/reserv")
	public String adminReserv(Model model) {
		
		return "admin/adminReserv";
	}
	
	@RequestMapping("admin/reservDetail")
	public String adminReservDetail(int reservNo, Model model) {
		ReservationVO vo = service.reservDetail(reservNo);
		RoomVO vo1 = service.findGT(vo.getRoomNo());
		model.addAttribute("vo", vo);
		model.addAttribute("rvo",vo1);
		return "admin/adminReservDetail";
	}
	@RequestMapping("admin/room")
	public String adminRoom(Model model) {
		
		model.addAttribute("list", service.roomList());
		return "admin/adminRoom";
	}
	
	@RequestMapping("admin/memberSerch")
	@ResponseBody
	public List<MemberVO> adminMeberSearch(AdminMemberDTO dto ,AdminParseDTO dto2, Model model) throws Exception {
		AdminMemberDTO Rdto = service.parse(dto2,dto);
		
		return service.MemberSearch(Rdto);
	}
	
	@RequestMapping("admin/memberAllList")
	@ResponseBody
	public List<MemberVO> adminMemberAll(){
		return service.memberList();
	}
	
	@RequestMapping("admin/reservationSearch")
	@ResponseBody
	public List<ReservationVO> reservationSearch(AadminReservDTO dto1, ReservParseDTO dto) throws Exception{
		
	
		return service.reservSearch(service.rparse(dto1,dto));
		
	}
	
	@RequestMapping("admin/reservAllList")
	@ResponseBody
	public List<ReservationVO> adminReservAll(){
		return service.reservList();
	}
	
	@RequestMapping(value="admin/questionContent",method = RequestMethod.POST)
	@ResponseBody
	public QuestionVO adminQuestionList(String no){
		
		return service.questionContent(no);
	}
	
	@RequestMapping("admin/replyInsert")
	public String replyInsert(QuestionVO vo) {
		
		service.replyInsert(vo);
		
		
		return "redirect:/admin/question";
	}
	
	@RequestMapping("admin/roomDetail")
	public String roomDetail(int roomNO, Model model) {
		
		
		model.addAttribute("Nvo", service.roomNonReserv(roomNO));
		model.addAttribute("Rvo", service.roomReservDetail(roomNO));
		model.addAttribute("vo",service.roomDetail(roomNO) );
		return "admin/adminRoomDetail";
	}
	
	@RequestMapping("admin/updateState")
	@ResponseBody
	public boolean updateState(RoomVO vo){
		
		return service.updateState(vo);
	}
	@RequestMapping(value="admin/nonReservCharge", method = RequestMethod.POST)
	public String nonRevCharge(NonPayment vo1, NonReservationVO vo2, RoomVO vo) {
		service.insertNonRev(vo2);
		service.insertNonPay(vo1);
		vo.setState("사용중");
		service.updateState(vo);
		return "redirect:/admin/room";
	}
	
	@RequestMapping("admin/nonRevCheckOut")
	public String nonRevCheckOut(int no, int roomNo) {
		service.nonRevCheckOut(no);
		RoomVO vo = new RoomVO();
		vo.setRoomNO(roomNo);
		vo.setState("청소중");
		service.updateState(vo);
		return "redirect:/admin/room";
	}
	
	@RequestMapping("admin/reservCancle")
	public String reservCancled(int reservNo) {
		service.reservCancle(reservNo);
		
		return "admin/adminReserv";
	}
	
	
}
