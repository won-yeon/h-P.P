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
                        <fmt:formatDate var="dateFmt" pattern="yyyy-MM-dd" value="${vo.checkInDate }"/>
                        <fmt:formatDate var="dateFmt1" pattern="yyyy-MM-dd" value="${vo.checkOutDate }"/>
                        <fmt:formatDate var="dateFmt2" pattern="yyyy-MM-dd" value="${vo.reservRegDate}"/>
                            <table style="width: 900px; border-collapse: collapse; ">
                                <tr>
                                    <th>예약번호</th><td>${vo.reservNo }</td>
                                    <th>아이디</th><td >${vo.userId }</td>
                                    <th>예약한날짜</th><td><c:out value="${dateFmt2 }" /></td>
                                    					
                                </tr>
                                <tr>
                                    <th>체크인</th><td><c:out value="${dateFmt }" /></td>
                                    <th>체크아웃</th><td><c:out value="${dateFmt1 }" /></td>
                                    <th>체크인시간</th><td>${vo.checkInTime }:00</td>
                                </tr>
                                <tr>
                                    <th>방번호</th><td>${vo.roomNo }</td>
                                    <th>방 등급</th><td>${rvo.roomGrade}</td>
                                    <th>방 타입</th><td>${rvo.roomType }</td>
                                    
                                    
                                </tr>
                                <tr>
                                    <th>결제금액</th><td>${vo.price }</td>
                                    <th>사용포인트</th><td>${vo.point }</td>
                                    
                                </tr>
                                <tr >
                                    <th>option</th>
                                    <td colspan="5">
                                     <c:if test="${vo.breakFast ne 0 }">
                                     	조식 : ${vo.breakFast }
                                     </c:if>
                                     <c:if test="${vo.extraBed ne 0 }">
                                     	추가 베드 : ${vo.extraBed }
                                     </c:if>
									</td>
                                </tr>
                                <tr style="height:70px;">
                                    <th style="width: 120px;">추가요청사항</th><td  colspan="5" style="width: 760px;" >${vo.memo}</td>
                                </tr>
                                <tr>
                                    <th>예약 조정</th>
                                    <td ><div style=" display: inline;"><a href="/hotel/myPage/ReservCancle?reservNo=${vo.reservNo }"  style=" padding: 4px 12px; background-color: rgb(88, 72, 56); ; color: white; border: 0;">예약취소</a></div></td>
                                </tr>
                            </table>
                            <div style="height: 80px;"></div>
                            
                        </div>
                         
                    </div>    
            </div>

            

        </div>

        <!-- 마이페이지 포인트 -->
        <jsp:include page="/WEB-INF/views/layout/footer.jsp"/>
    </div>
</body>
</html>