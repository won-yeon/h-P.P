<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
                            <a href="">포인트조회</a>
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
                        <li  class="mypage_nav_header_tit_li1">
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
                    <span>문의 내역</span>
                </div>
                <hr style="background-color: rgb(90, 76, 65); height: 5px;" >
                <div    class="mypage_point_text2" >
                    <span>회원님께서 문의하신 내역과 답변을 확인하실 수 있습니다.</span>
                </div>
                    <div class="mypage_page_table">
                        <div class="mypage_page_question_table">
                            <table>
                                <tr >
                                    <th>문의유형</th>
                                    <th>제목</th>
                                    <th>문의일자</th>
                                    
                                </tr>
                                <c:forEach var="vo" items="${list }">
                                	<fmt:formatDate var="dateFmt" pattern="yyyy-MM-dd HH:mm:ss" value="${vo.regDate }"/>
	                                <tr>
	                                   	<td class="q_td2">${vo.questionType }</td>
	                                    <td class="q_td3"><a href="/hotel/myPage/QuestionContentIn?seq=${vo.questionNo }">${vo.questionTitle}</a></td>
	                                    <td class="q_td4"><c:out value="${dateFmt }"/></td>
	                                    
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