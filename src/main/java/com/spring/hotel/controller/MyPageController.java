package com.spring.hotel.controller;


import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


import com.spring.hotel.dto.MyPageDTO;
import com.spring.hotel.service.AdminService;
import com.spring.hotel.service.MyPageService;
import com.spring.hotel.vo.MemberVO;
import com.spring.hotel.vo.PointVO;
import com.spring.hotel.vo.QuestionVO;
import com.spring.hotel.vo.ReservationVO;
import com.spring.hotel.vo.RoomVO;




@Controller
public class MyPageController {
	
	@Inject
	MyPageService service;
	
	@Inject
	AdminService adService;
	
	
	@RequestMapping("myPage/MyPoint")
	public String myPage(HttpServletRequest request, Model model) {
		MemberVO vo =(MemberVO) request.getSession().getAttribute("LoginUser");
		
		String id = vo.getUserId();
		
		List<PointVO> list =  service.pointSelect(id);
		model.addAttribute("list", list);
		
		return "myPage/MyPoint";
	}
	
	@RequestMapping("myPage/MyProfile")
	public String myProfile() {
		return "myPage/MyProfile";
		
	}
	
	
	
	@RequestMapping("myPage/CheckPw")
	public String myProfileCkPw(MyPageDTO dto,Model model) {
		String page;
		String msg;
		if(service.profileCheckPw(dto)) {
			page="myPage/MyProfileUpdate";
		}else {
			page="myPage/MyProfile";
			msg = "잘못된 비밀번호입니다.";
			model.addAttribute("msg", msg);
		}
		
		return page;
	}
	
	
	
	@RequestMapping("myPage/ProUpdate")
	public String myProUpdate(HttpServletRequest request,MyPageDTO dto, @RequestParam("email1")String email1, @RequestParam("email2")String email2) {
		MemberVO vo = (MemberVO)request.getSession().getAttribute("LoginUser");
		dto.setUserId(vo.getUserId());
		dto.setUserEmail(email1+"@"+email2);
		service.profileUpdate(dto);
		return "myPage/MyProfile";
	}
	@RequestMapping("myPage/UpdatePw")
	public String myProPwUpdate() {
		return "myPage/MyProfilePw";
	}
	
	
	@RequestMapping("myPage/UpdatePwDo")
	public String myProPwUpdate(MyPageDTO dto, Model model) {

		boolean result =service.profilePwUpdate(dto); 
		if(result) {
			model.addAttribute("success", "성공");
		}else {
			
			model.addAttribute("fail", "실패");
		}
		return "myPage/MyProfilePw";
	}
	
	@RequestMapping("myPage/deleteId")
	public String deleteId() {
		return "myPage/MyProfileDelete";
			
	}
	
	@RequestMapping("myPage/deleteDo")
	public String deleteIdDo(MyPageDTO dto , Model model, HttpSession session) {
		String page;
		
		if(service.deleteId(dto) == "삭제") {
			page="index";
		}else {
			page="myPage/MyProfileDelete";
			model.addAttribute("msg", service.deleteId(dto));
		}
		session.invalidate();
		
		return page;
	}
	
	@RequestMapping("myPage/QuestionDo")
	public String questionDo() {
		return "myPage/MyQuestionDo";
	}
	@RequestMapping("myPage/QuestionContent")
	public String questContent(HttpServletRequest request,Model model ) {
		MemberVO vo =(MemberVO)request.getSession().getAttribute("LoginUser");
		String userId =vo.getUserId();
		List<QuestionVO> list = service.questionList(userId);
		
		
		model.addAttribute("list", list);
		
		return "myPage/MyQuestion";
	}
	@RequestMapping("myPage/ReservationList")
	public String reservationList(HttpServletRequest request, Model model) {
		MemberVO vo =(MemberVO)request.getSession().getAttribute("LoginUser");
		String userId = vo.getUserId();
		List<ReservationVO> list = service.reservedList(userId);
		List<RoomVO> rList = service.findTG(list); 
		model.addAttribute("list", list);
		model.addAttribute("rList", rList);
		return "myPage/MyReservation";
	}
	
	@RequestMapping("myPage/QuestionForm")
	public String questionForm(QuestionVO vo) {
		service.ContentForm(vo);
		return "redirect:/myPage/QuestionContent";
	}
	@RequestMapping("myPage/QuestionContentIn")
	public String questionIn(@RequestParam String seq , Model model ) {
		
		model.addAttribute("vo", service.questContent(seq) );
		return "myPage/MyQuestionContent";
				
	}
	
	@RequestMapping("myPage/ReservContent")
	public String ReservContent(int reservNo, Model model) {
		ReservationVO vo = service.reservContent(reservNo);
		RoomVO vo1 = adService.findGT(vo.getRoomNo());
		model.addAttribute("vo", vo);
		model.addAttribute("rvo",vo1);
		return "myPage/MyReservationContent";
	}
	@RequestMapping("myPage/ReservCancle")
	public String ReservCancle(int reservNo) {
		service.revCancle(reservNo);
		
		return "redirect:/myPage/ReservationList";
	}
	
}
