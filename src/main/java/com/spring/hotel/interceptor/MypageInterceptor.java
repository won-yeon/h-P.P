package com.spring.hotel.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang.StringUtils;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class MypageInterceptor extends HandlerInterceptorAdapter {
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
			HttpSession session = request.getSession();
			
		if(session.getAttribute("LoginUser") == null) {
			saveAttemptedLocation(request, session);
			response.sendRedirect("/hotel/login");
		}
			
		return true;
		
		
	}

	private void saveAttemptedLocation(HttpServletRequest request, HttpSession session) {
		
		
		String uri = request.getRequestURI(); 
		String query = request.getQueryString(); 
		if (StringUtils.isNotEmpty(query))
			uri += "?" + query;
		
		session.setAttribute("attempedPage", uri);
	}	


}
