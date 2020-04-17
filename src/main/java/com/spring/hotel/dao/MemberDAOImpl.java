package com.spring.hotel.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spring.hotel.vo.MemberVO;


@Repository
public class MemberDAOImpl implements MemberDAO {
	
	@Inject
	SqlSession sqlSession;
	
	@Override
	public void insertMember(MemberVO vo) {
		sqlSession.insert("member.insert", vo);
				
	}
	
	@Override
	public String checkid(String id) {
		
		return sqlSession.selectOne("member.selectId",id);
	}
	

	

}
