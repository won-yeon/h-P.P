package com.spring.hotel.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.hotel.dto.FindIdDTO;
import com.spring.hotel.dto.LoginDTO;
import com.spring.hotel.dto.findPwDTO;
import com.spring.hotel.service.LoginService;
import com.spring.hotel.vo.AdminVO;


@Controller
public class LoginController {
	
	@Inject
	LoginService loginService;
	
	@RequestMapping("checkLogin")
	public void loginChekc(Model model ,LoginDTO dto) {
		
		boolean result = loginService.loginCk(dto);
		model.addAttribute("user",result);
		if(!result) {
			model.addAttribute("msg", "fail");
		}
		
	}
	
	@RequestMapping(value= "/logOut")
	public String login(HttpSession session) {
		session.removeAttribute("LoginUser");
		session.invalidate();
		return "redirect:index";
	}
	
	@RequestMapping(value ="login/findId",produces="application/text;charset=utf-8", method = RequestMethod.POST)
	@ResponseBody
	public String findId(FindIdDTO dto) {
		
		return loginService.findIdService(dto);
	
	}
	
	@RequestMapping(value = "login/findPw",produces="application/text;charset=utf-8", method = RequestMethod.POST)
	@ResponseBody
	public String findId(findPwDTO dto ) {
		
		return loginService.findPwService(dto);
	}
	
	@RequestMapping("adminLoginCk")
	public String adminLoginCheck(Model model,AdminVO vo) {
		
		String page;
		if(loginService.adminLoginCheck(vo)) {
			page = "redirect:/index";
		}else {
			page = "adminLogin";
			model.addAttribute("msg", "fail");
		}
		
		return page;
	}
	
	@RequestMapping("AdminlogOut")
	public String adminLogOut(HttpSession session) {
		session.invalidate();
		return "redirect:index";
	}
	
}

