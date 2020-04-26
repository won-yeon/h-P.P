package com.spring.test;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;




@Controller
public class TestController {
	
	@RequestMapping("test")
	public String ajax() {
		return "test";
	}

	@RequestMapping(value ="/checkId",produces="application/text;charset=utf-8",method = RequestMethod.POST)
	@ResponseBody
	public String test(String userId) {
		System.out.println(userId);
		
		String msg = userId;
		
		return msg;
	}
	
	@RequestMapping(value="/questionContent",produces="application/text;charset=utf-8",method = RequestMethod.POST)
	@ResponseBody
	public String adminQuestionList(String no){
		System.out.println(no);
//	
		String msg = no;
		return msg;
	}
}
