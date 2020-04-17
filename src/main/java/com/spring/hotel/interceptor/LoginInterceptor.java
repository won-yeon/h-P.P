package com.spring.hotel.interceptor;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang.StringUtils;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;



public class LoginInterceptor extends HandlerInterceptorAdapter{
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		HttpSession session = request.getSession();
		
		if(session.getAttribute("LoginUser") != null) {
			session.removeAttribute("LoginUser");
			
		}
		
		return true;
	}

	
	@Override
	public void postHandle(
			HttpServletRequest request, HttpServletResponse response, 
			Object handler, ModelAndView modelAndView) throws Exception {
			HttpSession session = request.getSession();
			String attempted = (String)session.getAttribute("attempedPage");
			boolean result = (boolean)modelAndView.getModelMap().get("user");
			if(result) {
				if (StringUtils.isNotEmpty(attempted)) {
					response.sendRedirect(attempted);
					session.removeAttribute("attempedPage");
				
				} else {
					response.sendRedirect("/hotel/index");
				}
			}else {
				
				response.sendRedirect("/hotel/login");
			}
			
			
		
	}
	


}
