package com.spring.hotel.service;



import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import com.spring.hotel.dao.LoginDAO;
import com.spring.hotel.dto.FindIdDTO;
import com.spring.hotel.dto.LoginDTO;
import com.spring.hotel.dto.findPwDTO;
import com.spring.hotel.vo.AdminVO;
import com.spring.hotel.vo.MemberVO;

@Service
public class LoginServiceImpl implements LoginService {
	
	@Inject
	LoginDAO loginDao;
	
	@Inject
	HttpServletRequest request;
	
	@Override
	public boolean loginCk(LoginDTO dto) {
		boolean result;
		MemberVO vo = loginDao.LoginIdPw(dto);
		if(vo==null) {
			result = false;
		}else {
			result = true;
			HttpSession session = request.getSession();
			session.setAttribute("LoginUser", vo);
		}
			return result;
	}
	
	@Override
	public String findIdService(FindIdDTO dto) {
		String name = loginDao.findIdDao(dto);
		String msg = "";
		
		if(name =="" || name== null) {
			msg = "아이디를 찾을 수 없습니다.";
		}else {
			msg = "아이디는  "+name+" 입니다.";
		}
		
		return msg;
		
	}
	
	@Override
	public String findPwService(findPwDTO dto) {
		String pw = loginDao.findPwDao(dto);
		String msg = "";
		
		if(pw == "" || pw == null) {
			msg = "비밀번호를 찾을 수 없습니다.";
		}else {
			msg = "비밀번호는 "+pw+" 입니다.";
		}
		return msg;
	}
	
	@Override
	public boolean adminLoginCheck(AdminVO vo) {
		
		
		
		if(loginDao.selectAdmin(vo) == null) {
			return false;
		}else {
			HttpSession session = request.getSession();
			session.setAttribute("Admin", loginDao.selectAdmin(vo));
			return true;
		}
		
		
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
