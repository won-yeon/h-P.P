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
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
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
                        <li  >
                            <a href="/hotel/myPage/QuestionContent">문의내역</a>
                        </li>
                        <li  class="mypage_nav_header_tit_li1">
                            <a href="/hotel/myPage/QuestionDo">문의하기</a>
                        </li>
                    </ul>
                </div>
            </div>
            <!-- 마이페이지 nav -->
            <div class="mypage_point">
                <div class="mypage_point_text">
                    <span>문의하기</span>
                </div>
                <hr style="background-color: rgb(90, 76, 65); height: 5px;" >
                <div    class="mypage_point_text2" >
                    <span></span>
                </div>
                    <div class="mypage_page_table">
                        <div class="mypage_page_question_table1">
                           <form id="questionFormId" action="/hotel/myPage/QuestionForm" method="post">
                            <table>                              
                                    <tr >
                                        <th>질문유형</th>                                  
                                        <td>
                                            <select name = "questionType">
                                                <option value="point">point</option>
                                                <option value="예약">예약 </option>
                                                <option value="예약취소">예약취소</option>
                                                <option value="기타">기타</option>
                                                
                                            </select>
                                            <input style="display:none" name="userId" type="text" value = "${sessionScope.LoginUser.userId}">
                                        </td>
                                    </tr>
                                    <tr>
                                        <th>제목</th>                                  
                                        <td><input type="text" name="questionTitle" style="width: 456px; height: 25px;" ></td>
                                    </tr>
                                    <tr>
                                        <th>내용</th>                                  
                                        <td><textarea name="questionContent" id="qcontent" cols="100" rows="7" style="resize: none;"></textarea></td>
                                    </tr>   
                                    <div class="mypage_page_question_table1_submit13"><input class="mypage_page_question_table1_submit" id="mypageQ_sub" type="button" value="등록"></div>
                            </table>	
                            </form>
                            
                        </div>
                         
                    </div>    
            </div>

            

        </div>
        <jsp:include page="/WEB-INF/views/layout/footer.jsp"/>
    </div>    
       <script>
        $("#mypageQ_sub").click(function(e){
            e.preventDefault();
          
            if($("input[name=questionTitle]").val()==""){
                alert('제목을 입력하세요');
                $("input[name=questionTitle]").focus();
            }else if($("#qcontent").val()==""){
                alert('내용을 입력하세요');
                $("input[name=questionContent]").focus();
            }else {
            	$("#questionFormId").submit();
            }
                 
      });
    </script>
    
</body>
</html>