package com.spring.hotel.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spring.hotel.dto.FindIdDTO;
import com.spring.hotel.dto.LoginDTO;
import com.spring.hotel.dto.findPwDTO;
import com.spring.hotel.vo.AdminVO;
import com.spring.hotel.vo.MemberVO;

@Repository
public class LoginDAOImpl implements LoginDAO {
	
	@Inject
	SqlSession sqlSession;
	
	
	@Override
	public MemberVO LoginIdPw(LoginDTO dto) {
		
		return sqlSession.selectOne("login.loginCheck", dto);
	}
	
	@Override
	public String findIdDao(FindIdDTO dto) {
		
		return sqlSession.selectOne("login.findId", dto);
	}
	
	@Override
	public String findPwDao(findPwDTO dto) {
				
		return sqlSession.selectOne("login.findPw",dto);
	}
	
	@Override
	public AdminVO selectAdmin(AdminVO vo) {
		
			
			
		return sqlSession.selectOne("login.adminSelect",vo);
	}
}
