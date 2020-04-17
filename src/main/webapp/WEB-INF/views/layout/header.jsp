<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

	<!-- ////////////////////헤더 -->
        <div id ="header">
            <div class="container">
                <div class="header">
                    <div class="header_menu">
                        	<c:choose>
                            	<c:when test="${!empty sessionScope.Admin}">
                            		<a href="/hotel/admin/question" >문의관리</a>
                            		<a href="/hotel/AdminlogOut">로그아웃</a>
                            	</c:when>
                            	<c:otherwise>
                            		<c:choose>
		                            	<c:when test="${sessionScope.LoginUser == null }">
		                            		<a href="/hotel/login" >로그인</a>
		                            	</c:when>
		                            	<c:otherwise>
		                            		<a href="/hotel/logOut">로그아웃</a>
		                            		<a href="/hotel/myPage/MyPoint" >마이 페이지</a>
		                            	</c:otherwise>
                       		  	   </c:choose>
                            	</c:otherwise>
                            </c:choose>
                            
                            
                            
                    </div>
                    <div class="header_tit">
                        <h1>
                            <a href="/hotel/index">The hotel<br><h2>seoul</h2></a> 
                        </h1>
                    
                    </div>
                </div>
            </div>
            <div class="nav">
                <div class="container" id="nav_content">
                    <ul>
                        <li class="li_menu"><a href="/hotel/eventList"><span>이벤트</span></a></li>
                        <li class="li_menu" >
                            <a href="/hotel/standard" id="a12"><span>객실</span></a>
                            <ul class="ul_sub1 ul_hi" >
                                <li class="tli li11"><a class="sub_a" href="/hotel/standard"><span>스텐다드</span></a></li>
                                <li class="tli li12"><a class="sub_a" href="/hotel/executive"><span>이그제큐티브</span></a></li>
                                <li class="tli li13"><a class="sub_a" href="/hotel/sweet"><span>스위트</span></a></li>
                            </ul>
                        </li>
                        <li class="li_menu">
                            <a href="/hotel/swim" id="a13"><span>부대시설</span></a>
                            <ul class="ul_sub2 ul_hi" >
                                <li class="tli li21"><a href="/hotel/swim"><span>수영장</span></a></li>
                                <li class="tli li22"><a href="/hotel/restaurant"><span>레스토랑</span></a></li>
                                <li class="tli li22"><a href="/hotel/fitness"><span>피트니스</span></a></li>
                            </ul>
                        </li>
                        <li class="li_menu">
                            <a href="/hotel/reservation"><span>예약</span></a>
                        </li>
                        <c:if test="${!empty sessionScope.Admin}">
	                        <li class="li_menu">
	                            <a href="/hotel/admin/member"><span>회원관리</span></a>
	                        </li>
	                        <li class="li_menu">
	                            <a href="/hotel/admin/reserv"><span>예약관리</span></a>
	                        </li>
	                        <li class="li_menu">
	                            <a href="/hotel/admin/room"><span>객실관리</span></a>
	                        </li>
                        </c:if>
                        
                    </ul>
                </div>
            </div>
        </div>
        <!-- ////////////////헤더 -->
