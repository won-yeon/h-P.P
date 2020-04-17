package com.spring.hotel.service;

import com.spring.hotel.vo.MemberVO;


public interface MemberService {
	
	public void JoinInsert(MemberVO vo);

	public String checkJoinId(String id);

}
