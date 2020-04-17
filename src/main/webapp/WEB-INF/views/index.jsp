<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!-- 콘텐츠////////////-->
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>hoterProject_home</title>
    <!--style-->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/css/reset.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/css/jquery-ui.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/css/Pstyle.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/css/slick.css">
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <link href="https://fonts.googleapis.com/css?family=Nanum+Gothic" rel="stylesheet">
</head>
<body>
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
                            <a href="/hotel/index">The hotel<br><h2 >seoul</h2></a> 
                        </h1>
                    
                    </div>
                </div>
            </div>
            <div class="nav">
                <div class="container" id="nav_content">
                    <ul>
                        <li class="li_menu"><a href="eventList"><span>이벤트</span></a></li>
                        <li class="li_menu" >
                            <a href="standard" id="a12"><span>객실</span></a>
                            <ul class="ul_sub1 ul_hi" >
                                <li class="tli li11"><a class="sub_a" href="/hotel/standard"><span>스텐다드</span></a></li>
                                <li class="tli li12"><a class="sub_a" href="/hotel/executive"><span>이그제큐티브</span></a></li>
                                <li class="tli li13"><a class="sub_a" href="/hotel/sweet"><span>스위트</span></a></li>
                            </ul>
                        </li>
                        <li class="li_menu">
                            <a href="swim" id="a13"><span>부대시설</span></a>
                            <ul class="ul_sub2 ul_hi" >
                                <li class="tli li21"><a href="/hotel/swim"><span>수영장</span></a></li>
                                <li class="tli li22"><a href="/hotel/restaurant"><span>레스토랑</span></a></li>
                                <li class="tli li22"><a href="/hotel/fitness"><span>피트니스</span></a></li>
                            </ul>
                        </li>
                        <li class="li_menu">
                            <a href="reservation"><span>예약</span></a>
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
        <div class="main_Visual"">
            
            <div class="gallery_img">
                <div><a href="/hotel/restaurant"><img src="${pageContext.request.contextPath }/resources/img/villa-cortine-palace-949552_1920.jpg"height="650" ></a></div>
                <div><a href="/hotel/swim"><img src="${pageContext.request.contextPath }/resources/img/swimming-pool-2386261_1920.jpg" height="650"></a></div>
                <div><a href="/hotel/sweet"><img src="${pageContext.request.contextPath }/resources/img/hotel-389256_1280.jpg" height="650"></a></div>
                <div><a href="/hotel/event"><img src="${pageContext.request.contextPath }/resources/img/cake-3318313_1920.jpg" height="650"></a></div>
            </div>
     
            <div style="height: 50px;"></div>
            <div class="container">
                <div class="resvHotel">
                    <div class="resvHotel_in">
                        <ul class="ul_first">
                            <li class="re_li"><span>체크인</span></li>
                            <li class="re_li2">
                                <input type="text" id="check_in"  style="width: 78px;" onchange="calculday2();changeCki();" readonly/>
                                
                            </li>
                        </ul>
                        <ul>
                            <li class="re_li"><img class="re_li_img"src="${pageContext.request.contextPath }/resources/img/moon.png" alt="" height="20px" width="20px"></li>
                            <li class="re_li2" id="calculDate"></li>
                        </ul>
                        <ul>
                            <li class="re_li"><span>체크아웃</span></li>
                            <li class="re_li2">
                                <input type="text" id="check_out" onchange="calculDay()" style="width: 78px;" readonly/>
                               
                            </li>
                        </ul>
                        
                        
                        <ul>
                            <li class="re_li"><span>인원수</span></li>
                            <li class="re_li2">
                                <select name="" id="nselect" onchange="roomNumCk()">
                                    <option value="">1</option>
                                    <option value="">2</option>
                                    <option value="">3</option>
                                    <option value="">4</option>
                                </select>
                            </li>
                        </ul>
                        <ul class="ul_last">
                            <a href="reservation"><img src="${pageContext.request.contextPath }/resources/img/serch.png" alt="" width="130px" height="60px" ></a>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        

        
      
        
    <script src="${pageContext.request.contextPath }/resources/js/slick.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath }/resources/js/jquery-ui.min.js"></script>
    <script src="${pageContext.request.contextPath }/resources/js/project_index.js"></script>
<jsp:include page="/WEB-INF/views/layout/footer.jsp"/>    
</body>
</html>
        