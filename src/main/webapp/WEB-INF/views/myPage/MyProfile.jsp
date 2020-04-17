<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                                <li class="mypage_nav_header_tit_li1"><a href="/hotel/myPage/MyProfile">프로필 수정</a></li>
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
                    <span>프로필 수정</span>
                </div>
                <hr style="background-color: rgb(90, 76, 65); height: 5px;" >
                <div    class="mypage_point_text2" >
                    <span>${sessionScope.LoginUser.userName} 님의 정보를 안전하게 보호하기 위해 비밀번호를 다시 한번 확인합니다.</span>
                </div>
                    <div class="mypage_page_table">
                        <form action="CheckPw" method="post" id="MyProfilePw">
                            <table>
                                <tr>
                                    <th>아이디</th>
                                    <td>${sessionScope.LoginUser.userId}
                                    <input style="display:none" type="text" name ="userId" value="${sessionScope.LoginUser.userId}" ></td>
                                </tr>
                                <tr>
                                    <th>비밀번호</th>
                                    <td>
                                        <input type="password" name ="userPw">
                                        <c:if test="${!empty msg}"> 
                                        	<span>${msg }</span>
                                        </c:if>
                                    </td>
                                </tr>
                            </table>
                            <div class="mypage_page_table_porfile_submit" style="text-align: center; height: 50px; margin-top: 20px;">
                                <input id="profile_btn"  type="button" value="확인">
                            </div>
                        </form>  
                    </div>    
            </div>

            

        </div>
	
        <!-- 마이페이지 포인트 -->
        <jsp:include page="/WEB-INF/views/layout/footer.jsp"/>  
    </div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script>
        $('#profile_btn').click(function(){
            if($('input[type=password]').val() =='' ||$('input[type=password]').val()==null){
                alert('비밀번호를 입력하세요');
            }else {
            	$('#MyProfilePw').submit();
            }
        });
    </script>
</body>
</html>