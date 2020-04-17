<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
                    <span>회원님께서 문의하신 내용을 확인하실 수 있습니다.</span>
                </div>
                    <div class="mypage_page_table">
                        <div class="mypage_page_question_table1">
                            <table>
                               
                                    <tr >
                                        <th>질문유형</th>                                  
                                        <td>
                                            <strong>${vo.questionType}</strong>
                                        </td>
                                    </tr>
                                    <tr >
                                        <th>제목</th>                                  
                                        <td>${vo.questionTitle }</td>
                                    </tr>
                                    <tr >
                                        <th>내용</th>                                  
                                        <td>${vo.questionContent }</td>
                                    </tr>   
                                    <div class="mypage_page_question_table1_submit13">
                                        <a class="mypage_page_question_table1_a2" href="">답변보기</a>
                                    </div>
                               
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