<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<!DOCTYPE html>
<html lang="en">
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
                        <li class="">
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
                        <li class="mypage_nav_header_tit_li1">
                            <a href="/hotel/myPage/ReservationList">예약확인</a>
                        </li>
                        <li >
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
                    <span>예약 확인</span>
                </div>
                <hr style="background-color: rgb(90, 76, 65); height: 5px;" >
                <div    class="mypage_point_text2" >
                    <span>객실 및 예약 내역을 확인하실 수 있습니다.</span>
                </div>
                    <div class="mypage_page_table">
                        <div class="mypage_page_reservation_table">
                            <table>
                                <tr >
                                    <th>예약번호</th>
                                    <th>객실 타입</th>
                                    <th>체크인/체크아웃</th>
                                    <th>예약 날짜</th>
                                    
                                </tr>
                                <c:forEach var="vo1" items="${list }" varStatus="status">
                                	<fmt:formatDate var="dateFmt" pattern="yyyy-MM-dd" value="${vo1.checkInDate }"/>
                                	<fmt:formatDate var="dateFmt1" pattern="yyyy-MM-dd" value="${vo1.checkOutDate }"/>
                                	<fmt:formatDate var="dateFmt2" pattern="yyyy-MM-dd" value="${vo1.reservRegDate }"/>
	                                <tr>
	                                   <td class="r_td1">${vo1.reservNo }</td>
	                                   
	                                   <td class="r_td3"><a href="/hotel/myPage/ReservContent?reservNo=${vo1.reservNo }">${rList[status.index].roomGrade }/${rList[status.index].roomType }</a></td>
	                                   <td class="r_td4"><c:out value="${dateFmt }"/>/<c:out value="${dateFmt1 }"/></td>
	                                   <td class="r_td5"><c:out value="${dateFmt2 }"/></td>
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