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
                                <li ><a href="/hotel/myPage/MyProfile">프로필 수정</a></li>
                                <li class="mypage_nav_header_tit_li1"><a href="/hotel/myPage/UpdatePw">비밀번호 변경</a></li>
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
                    <span>비밀번호 변경</span>
                </div>
                <hr style="background-color: rgb(90, 76, 65); height: 5px;" >
                <div    class="mypage_point_text2" >
                	   <c:choose>
                    	<c:when test="${!empty success}">
                    		<span>고객님의 비밀번호가 변경 되었습니다.</span>
                    	</c:when>
                    	<c:otherwise>
                    		<span>고객님의 정보를 변경하실 수 있습니다.</span>	
                    	</c:otherwise>
                    </c:choose>
                </div>
                    <div class="mypage_page_table">
                        <form action="/hotel/myPage/UpdatePwDo" method="post" id="UpdatePwForm">
                            <table>
                               <tr>
                                   <th>현재 비밀번호</th>
                                   <td>
                                   	<input name=userPw id="updatepw_check1" type="password">
                                   	<input style= "display:none" type="text" name ="userId" value="${sessionScope.LoginUser.userId}"  >
                                   </td>
                               </tr>
                               <tr>
                                   <th>새 비밀번호</th>
                                   <td><input name="NewPw" type="password" id="updatepw_check2"><span> 8~15자 이내 영문/숫자/특수문자 조합</span></td>
                               </tr>
                               <tr>
                                   <th>새 비밀번호 확인</th>
                                   <td><input type="password" id="updatepw_check3"></td>
                               </tr>
                              

                            </table>
                            <div class="mypage_page_table_porfile_submit" style="text-align: center; height: 50px; margin-top: 20px;">
                                <input type="button" id="submit_pwupdate" value="변경">
                                
                            </div>
                        </form>  
                    </div>    
            </div>
       </div>
       
       <jsp:include page="/WEB-INF/views/layout/footer.jsp"/> 
   </div>
    <script>
      

        $("#updatepw_check2").change(function(){
                    
                    var regex = /^.*(?=^.{8,15}$)(?=.*\d)(?=.*[a-zA-Z])(?=.*[!@#$%^&+=]).*$/g;


                    if( !regex.test( $("input[id=updatepw_check2]").val() ) ) {
                        $("input[id=updatepw_check2]").val('');
                        alert('비밀번호를 조건에 맞게 입력하세요');
                        
                        return;
                    }
                });
    	
       
        $("#submit_pwupdate").click(function(){
            $("input[type=password]").each(function(index,item){
                if($(item).val()=='' ||$(item).val()==null ){
                    alert('비밀번호를 입력하세요');
                    return false;
                }else{
                	$('#UpdatePwForm').submit();
                	
                }
            });
            
           
        });
		
        
       
    </script>
</body>
</html>