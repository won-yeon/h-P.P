<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html >
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/css/reset.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/css/Pstyle.css">
    <link href="https://fonts.googleapis.com/css?family=Nanum+Gothic" rel="stylesheet">
</head>
<body>
    <div class="wrap">
        <!-- ////////////////////헤더 -->
        <jsp:include page="/WEB-INF/views/layout/header.jsp"/>  
        <!-- ////////////////헤더 -->
        <!-- 마이페이지 포인트 -->
        <div class="container">
            <!-- 마이페이지 nav -->
            <div class="mypage_nav">
                <div class="mypage_nav_header">
                    <ul>
                        <div class="mypage_nav_header_tit">
                            <h1>마이 페이지</h1>
                        </div>
                        <li class="mypage_nav_header_tit_li1">
                            <a href="/hotel/myPage/MyPoint">포인트조회</a>
                        </li>
                        <li>
                            <span>개인정보</span>
                            <ul>
                                <li><a href="/hotel/myPage/MyProfile">프로필 수정</a></li>
                                <li><a href="/hotel/myPage/UpdatePw">비밀번호 변경</a></li>
                                <li><a href="/hotel/myPage/deleteId">회원 탈퇴 요청</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="/hotel/myPage/ReservationList">예약확인</a>
                        </li>
                        <li>
                            <a href="/hotel/myPage/QuestionContent">문의내역</a>
                        </li>
                        <li>
                            <a href="/hotel/myPage/QuestionDo">문의하기</a>
                        </li>
                    </ul>
                </div>
            </div>
            <!-- 마이페이지 nav -->
            <div class="mypage_point">
                <div class="mypage_point_text">
                    <span>포인트 조회</span>
                </div>
                <hr style="background-color: rgb(90, 76, 65); height: 5px;" >
                <div    class="mypage_point_text2" >
                    <span>THE HOTEL seoul 의 포인트 적립/사용 내역을 확인하실 수 있습니다.</span>
                </div>
                <div class="mypage_potin_table">
                    <div class="mypage_point_text3">
                        <span class="mypage_point_text3_span">&nbsp; ${sessionScope.LoginUser.userId } &nbsp; &nbsp;  </span> 님의 회원 포인트는 <span class="mypage_point_text3_span">&nbsp; &nbsp;${sessionScope.LoginUser.remainPoint } &nbsp; &nbsp;  </span> 입니다.
                       
                    </div>
                    <div class="mypage_potin_table2">
                    	
                        <table>
                            <tr>
                                
                                <th>포인트 내역</th>
                                <th>적립 포인트</th>
                                <th>사용 포인트</th>
                                <th>날짜</th>
                            </tr>
                         <c:forEach var="vo" items="${list }">
                         	<fmt:formatDate var="dateFmt" pattern="yyyy-MM-dd " value="${vo.regDate }"/>
                            <tr>
                            	<c:if test="${vo.point >=0 }">
	                                <td class="td1" >적립</td>
	                                <td class="td2" >${vo.point}</td>
	                                <td class="td3">0</td>
	                                <td class="td4"><c:out value="${dateFmt }"/></td>
                                </c:if>
                                <c:if test="${vo.point <0 }">
	                                <td class="td1" >사용</td>
	                                <td class="td2" >0</td>
	                                <td class="td3">${-vo.point}</td>
	                                <td class="td4"><c:out value="${dateFmt }"/></td>
                                </c:if>
                            </tr>
                  		 </c:forEach>
                          
                          
                        </table>
                    </div>    
                </div>
                
            </div>
            

        </div>

        <!-- 마이페이지 포인트 -->
        
        <jsp:include page="/WEB-INF/views/layout/footer.jsp"/>  
    </div>
</body>
</html>