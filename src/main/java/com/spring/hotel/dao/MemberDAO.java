package com.spring.hotel.dao;

import com.spring.hotel.vo.MemberVO;


public interface MemberDAO {
	public void insertMember(MemberVO vo);

	public String checkid(String id);

	
}
