package com.spring.hotel.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.spring.hotel.dao.MemberDAO;
import com.spring.hotel.vo.MemberVO;


@Service
public class MemberServiceImpl implements MemberService {
	
	@Inject
	MemberDAO memberDao;
	
	@Override
	public void JoinInsert(MemberVO vo) {
		memberDao.insertMember(vo);
		
	}
	
	@Override
	public String checkJoinId(String id) {
		String result = memberDao.checkid(id);
		
		String msg;
		if( result ==null || result =="") {
			msg = "아이디사용가능";
		}else {
			msg = "아이디사용중";
		}
		
		return msg;
	}

}
