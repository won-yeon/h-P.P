package com.spring.hotel.dao;

import com.spring.hotel.dto.FindIdDTO;
import com.spring.hotel.dto.LoginDTO;
import com.spring.hotel.dto.findPwDTO;
import com.spring.hotel.vo.AdminVO;
import com.spring.hotel.vo.MemberVO;

public interface LoginDAO {
	public MemberVO LoginIdPw(LoginDTO dto);

	public String findIdDao(FindIdDTO dto);

	public String findPwDao(findPwDTO dto);

	public AdminVO selectAdmin(AdminVO vo);
}
