<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>




<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/css/reset.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/css/Pstyle.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <link href="https://fonts.googleapis.com/css?family=Nanum+Gothic" rel="stylesheet">
</head>
<body>
    <div class="wrap">
        
        <jsp:include page="/WEB-INF/views/layout/header.jsp"/>    
        
        <!--로그인  -->
        <div class="container">
            <div class="login_container">
                <div class="login_1"><span>로그인</span></div>
                <hr style="height: 2px; background-color: rgb(88, 75, 62);">
                <div class="login_main">
                    <div class="login_text">
                        <div><span class="span1">THE HOTEL   </span> <span class="span2">SEOUL   </span><span class="span3">에 오신것을 환영합니다.</span></div>
                        <div><span class="span4">THE HOTEL SEOUL의 회원 아이디와 비밀번호를 입력해주시기 바랍니다.</span></div>
                    </div>
                    <div class="login_box">
                        <div>
                            <form id="form_login" method="post">
                                <fieldset class="layer">
                                    
                                    <div class="login">
                                        <ul class="top">
                                            <li><label for="txt1">아이디</label><input name="userId" type="text" id="txt1" onKeyup="this.value=this.value.replace(/[^\\!-z]/gi,'');"></li>
                                            <li><label for="txt2">비밀번호</label><input name="userPw" type="password" id ="txt2"></li>
                                            <li class="btn"><a href="#" onclick="login1()">로그인</a></li>
                                            <li>
                                            	<c:choose>
													<c:when test="${msg =='fail'}">
														<div style="padding-left: 70px; color: red;">
															가입하지 않은 아이디거나 잘못된 아이디 입니다.
														</div>
													</c:when>
													<c:otherwise>
														<div style="padding-left: 70px; color: red;"></div>
													</c:otherwise>
												</c:choose> 
											</li>
                                            <li class="save"><input type="checkbox" id="chk1"><laber for="chk1"> 아이디 저장</laber></li>
                                        </ul>
                                        <script>
                                            function login1(){
                                            	var form = document.getElementById('form_login');
                                                var id = document.getElementById('txt1');
                                                var idv= id.value;
                                                var pw = document.getElementById('txt2');
                                                var pwv = pw.value;

                                                if ( idv =="" ){
                                                    alert('아이디를 입력하세요');
                                                    id.focus();
                                                    return false;
                                                }else if ( pwv ==""){
                                                    alert('비밀번호를 입력하세요');
                                                    pw.focus();
                                                    return false;
                                                }else {
                                                form.action = 'checkLogin';
                                               
                                                form.submit();
                                                }
                                                
                                            }

                                            
                                        </script>
                                        <ul class="btm">
                                            <li class="join">신규회원가입<a href="join">회원가입</a></li>
                                            <li>아이디를 잊으셨나요?<a class="findid_layer" href="#">아이디 찾기</a></li>
                                            <li>비밀번호를를 잊으셨나요?<a class="findpw_layer" href="#">비밀번호 찾기</a></li>
                                        </ul>
                                   </div>
                                </fieldset>
                        
                            </form>
                        </div>
                    </div>
                </div>
            </div>

        </div>


        <!--로그인  -->

        

        <div class="container"><hr></div>
        <div id="footer" role="footer">
            <div class="container">
                <div class="footer">
                    <ul>
                        <li><a href="#">사이트 이용약관</a></li>
                        <li><a href="#">사이트 운영규칙</a></li>
                        <li><a href="#">개인정보취급방침</a></li>
                        <li><a href="#">책임의 한계와 법적고지</a></li>
                        <li><a href="#">고객센터</a></li>
                    </ul>
                    <address>
                        Copyright&copy;hyowon All Right Rederved
                    </address>
                    <div class="w3c">
                        <a href="#">
                            <img style="border:0;width: 88px;height: 31px;"
                            src="${pageContext.request.contextPath }/resources/img/HotelMark.png"
                                alt="HotelMark">
                        </a>
                        
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- 아이디찾기 레이어 -->
    <div class="find_id_container" id="findid_layer">
        <div class="find_id_pop_head">
            <span>아이디 찾기</span>
            <div class="find_id_close_box">
            <a href="#" class="find_id_close">CLOSE</a>
            </div>
        </div>
        <div class="find_id_pop_body">
            <form id="form_find_id">
	            <div class="find_id_box">
	            	<div class="find_id_box1">
	                    <label for="find_id">성명 </label>
	                    <input type="text" name="userName" placeholder="(이름)" id="find_id">
	                </div>
	                <div class="find_id_box2">
	                    <label for="find_id">이메일 </label>
	                    <input type="text" name="userEmail" placeholder="(이메일)" id="find_email">
	                </div>
	            </div>
	            <div class="find_id_submit">
	                <a class="findid_result_layer" href="#">확인</a>
	            </div>
            </form>
           
          
        </div>
    </div>
    <!-- //////////////////아아디찾기 레이어 -->

    <!-- 아이디 찾기 결과 레이어 -->
    <div class="find_id_result_container" id="findid_result_layer">
        <div class="find_id_result_pop_head">
            <span>회원번호 또는 아이디 찾기</span>
            <div class="find_id_result_close_box">
            <a href="#" class="find_id_result_close">CLOSE</a>
            </div>
        </div>
        <div class="find_id_result_pop_body">
            <div class="find_id_result_box">
                <div class="find_id_result">
                      <span id="findIdResult1"></span>
                </div>
            </div>
            <div class="find_id_result_submit">
                <div class="find_id_result_login">
                    <a href="#" class="find_id_result_close">확인</a>
                </div>
                <div class="find_id_result_findpw">
                    <a  class="findpw_layer" href="#">비밀번호찾기</a>
                </div>
            </div>
        </div>
    </div>
    <!-- 아이디 찾기 결과 레이어 -->

    <!-- 비밀번호 찾기 레이어 -->
    <div class="find_pw_container" id="findpw_layer">
        <div class="find_pw_pop_head">
            <span>비밀번호 찾기</span>
            <div class="find_pw_close_box">
            <a href="#" class="find_pw_close">CLOSE</a>
            </div>
        </div>
        <form id="find_pw_form">
	        <div class="find_pw_pop_body">
	            <div class="find_pw_box">
	                <div class="find_pw_box2">
	                    <label for="find_pw_id">아이디 </label>
	                    <input type="text" placeholder="(아이디)" id="find_pw_id" name="userId">
	                </div>
	                <div class="find_pw_box1">
	                    <label for="find_pw_name">성명 </label>
	                    <input type="text" placeholder="(이름)" id="find_pw_name" name="userName">
	                </div>
	                <div class="find_pw_box2">
	                    <label for="find_pw_email">이메일 </label>
	                    <input type="text" placeholder="(이메일)" id="find_pw_email" name="userEmail">
	                </div>
	                
	            </div>
	            <div class="find_pw_submit">
	                <a  class="findpw_result_layer" href="#">확인</a>
	            </div>
	        </div>
	     </form>   
    </div>
    <!-- 비밀번호 찾기 레이어 -->
    <!-- 비밀번호 찾기  결과 레이어 -->
    <div class="find_pw_result_container" id="findpw_result_layer">
        <div class="find_pw_result_pop_head">
            <span>비밀번호 찾기</span>
            <div class="find_pw_result_close_box">
            <a href="#" class="find_pw_result_close">CLOSE</a>
            </div>
        </div>
        <div class="find_pw_result_pop_body">
            <div class="find_pw_result_box">
               <span id="findPwReuslt">
                    비밀번호~~
               </span>
            </div>
            <div class="find_pw_result_submit">
                <a href="#" class="find_pw_result_close">확인</a>
            </div>
        </div>
    </div>
    <!-- 비밀번호 찾기  결과 레이어 -->
    <script src="${pageContext.request.contextPath }/resources/js/login.js?ver=2" ></script>
        
	         

</body>
</html>
    