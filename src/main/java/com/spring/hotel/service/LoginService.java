package com.spring.hotel.service;


import com.spring.hotel.dto.FindIdDTO;
import com.spring.hotel.dto.LoginDTO;
import com.spring.hotel.dto.findPwDTO;
import com.spring.hotel.vo.AdminVO;


public interface LoginService {
	public boolean loginCk(LoginDTO dto);
	public String findIdService(FindIdDTO dto);
	public String findPwService(findPwDTO dto);
	public boolean adminLoginCheck(AdminVO vo);

	
}
