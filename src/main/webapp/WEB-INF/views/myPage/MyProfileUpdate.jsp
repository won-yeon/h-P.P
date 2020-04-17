<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>    
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
                            <a href="">포인트조회</a>
                        </li>
                        <li>
                            <span>개인정보</span>
                            <ul>
                                <li class="mypage_nav_header_tit_li1"><a href="/hotel/myPage/MyProfile">프로필 수정</a></li>
                                <li><a href="/hotel/myPage/UpdatePw">비밀번호 변경</a></li>
                                <li><a href="/hotel/myPage/deleteId">회원 탈퇴 요청</a></li>                            </ul>
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
                    <span>고객님의 정보를 변경하실 수 있습니다.</span>
                </div>
                    <div class="mypage_page_table">
                        <form id="updateSubmit" action="/hotel/myPage/ProUpdate" method="post">
                            <table>
                               <tr>
                                   <th>성명</th>
                                   <td>${sessionScope.LoginUser.userName }</td>
                               </tr>
                               <tr>
                                   <th>아이디</th>
                                   <td>${sessionScope.LoginUser.userId }</td>
                               </tr>
                               <tr>
                                   <th>이메일</th>
                                   <td>
                                   		
                                        <input name="email1" type="text" value='${fn:substringBefore(sessionScope.LoginUser.userEmail, "@")}' onKeyup="this.value=this.value.replace(/[^a-zA-Z0-9]+$/g,'');"> @ <input name="email2" type="text" value='${fn:substringAfter(sessionScope.LoginUser.userEmail, "@")}'> 
                                        <select name="select_email" onChange="selectEmail(this)"> 
                                            <option value="1" selected>직접입력</option> 
                                            <option value="naver.com">naver.com</option> 
                                            <option value="gmail.com">gmail.com</option> 
                                            <option value="hanmail.com">hanmail.com</option>
                                            
                                        </select>
                                     </td>
                               </tr>
                               <tr>
                                   <th>휴대전화</th>
                                   <td>
                                    <select name="phone1" id="" value="${sessionScope.LoginUser.phone1 }">
                                        <option value="010" selected>010</option>
                                        <option value="011" >011</option>
                                        <option value="017" >017</option>
                                        <option value="018" >018</option>
                                        <option value="019" >019</option>
                                        <option value="016" >016</option>
                                    </select>
                                    -
                                    <input type="text"name="phone2" style="width: 50px;" maxlength="4" value="${sessionScope.LoginUser.phone2 }"  onKeyup="this.value=this.value.replace(/[^0-9]/g,'');"/>
                                    -
                                    <input type="text"name="phone3" style="width: 50px;" maxlength="4" value="${sessionScope.LoginUser.phone3 }"  onKeyup="this.value=this.value.replace(/[^0-9]/g,'');"/>
                                </td>
                               </tr>

                            </table>
                            <div class="mypage_page_table_porfile_submit" style="text-align: center; height: 50px; margin-top: 20px;">
                                <input id="update_form" type="button" value="변경">
                                <a href="/hotel/myPage/MyProfile" >취소</a>
                            </div>
                        </form>  
                    </div>    
            </div>

            

        </div>
		
        <!-- 마이페이지 포인트 -->
        <jsp:include page="/WEB-INF/views/layout/footer.jsp"/> 
    </div>
    <script>
        function selectEmail(ele){ 
            var $ele = $(ele); 
            var $email2 = $('input[name=email2]'); // '1'인 경우 직접입력 
            if($ele.val() == "1"){ 
                $email2.attr('readonly', false); 
                $email2.val(''); } 
            else { 
                $email2.attr('readonly', true); 
                $email2.val($ele.val()); 
                } 
            }
            $("input[name=email2]").change(function(){
                    var regType2 =/^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;

                   if( !regType2.test( $("input[name=email2]").val() ) ) {
                        $("input[name=email2]").val('');
                        
                        alert('잘못된 이메일 형식입니다. 다시 입력하세요');
                        return;
                    }
                });

                $("#update_form").click(function(e){
                    e.preventDefault();
                  
                    if($("input[name=email1]").val()==""){
                        alert('이메일를 입력하세요');
                        $("input[name=email1]").focus();
                    }else if($("input[name=email2]").val()==""){
                        alert('이메일를 입력하세요');
                        $("input[name=email2]").focus();
                    }else if($("input[name=phone1]").val()==""){
                        alert('휴대전화 번호를 입력하세요');
                        $("input[name=phone1]").focus();
                    }else if($("input[name=phone2]").val()==""){
                        alert('휴대전화 번호를 입력하세요');
                        $("input[name=phone2]").focus();
                    }else if($("input[name=phone3]").val()==""){
                        alert('휴대전화 번호를 입력하세요');
                        $("input[name=phone3]").focus();
                    }else{
                    	$("#updateSubmit").submit();
                    }
                         
              });

    </script>
</body>
</html>