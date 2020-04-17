package com.spring.hotel.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.hotel.service.MemberService;
import com.spring.hotel.vo.MemberVO;

@Controller
public class MemberController {
	
	@Inject
	MemberService MemberService;
	
	@RequestMapping("join")
	public String join() {
		return "join/join1";
	}
	
	@RequestMapping("join/join2")
	public String join2() {
		return "join/join2";
	}
	
	@RequestMapping("join/joinInsert")
	public String join3(MemberVO vo,@RequestParam("year") String year,@RequestParam("month") String month,@RequestParam("day") String day,@RequestParam("email1")String email1,@RequestParam("email2")String email2, Model model) {
		String birthDay = year+month+day;
		String userEmail= email1+"@"+email2;
		vo.setBirthDay(birthDay);
		vo.setUserEmail(userEmail);
		
		MemberService.JoinInsert(vo);
		model.addAttribute("userId", vo.getUserId());
		return "join/join3";
	}
	
	@RequestMapping(value ="join/checkId",produces="application/text;charset=utf-8",method = RequestMethod.POST)
	@ResponseBody
	public String checkid(String ckid) {
		
		return MemberService.checkJoinId(ckid);
	}
}
