package com.spring.hotel.service;

import java.util.List;

import com.spring.hotel.dto.MyPageDTO;

import com.spring.hotel.vo.PointVO;
import com.spring.hotel.vo.QuestionVO;
import com.spring.hotel.vo.ReservationVO;
import com.spring.hotel.vo.RoomVO;

public interface MyPageService {
	public boolean profileCheckPw(MyPageDTO dto);

	public void profileUpdate(MyPageDTO dto);

	public boolean profilePwUpdate(MyPageDTO dto);

	public String deleteId(MyPageDTO dto);

	public List<PointVO> pointSelect(String id);

	public void ContentForm(QuestionVO vo);

	public List<QuestionVO> questionList(String userId);

	public QuestionVO questContent(String seq);

	public List<ReservationVO> reservedList(String userId);

	public List<RoomVO> findTG(List<ReservationVO> list);

	public ReservationVO reservContent(int reservNo);

	public void revCancle(int reservNo);
}
