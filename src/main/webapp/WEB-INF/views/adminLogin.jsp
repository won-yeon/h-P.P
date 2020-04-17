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
                <div class="login_1"><span>관리자로그인</span></div>
                <hr style="height: 2px; background-color: rgb(88, 75, 62);">
                <div class="login_main">
                    <div class="login_text">
                        <div><span class="span1">THE HOTEL   </span> <span class="span2">SEOUL   </span><span class="span3"></span></div>
                        <div><span class="span4">관리자용 로그인 페이지 입니다.</span></div>
                    </div>
                    <div class="login_box">
                        <div>
                            <form id="form_login" method="post">
                                <fieldset class="layer">
                                    
                                    <div class="login">
                                        <ul class="top">
                                            <li><label for="txt1">아이디</label><input name="adminId" value="admin1" type="text" id="txt1" onKeyup="this.value=this.value.replace(/[^\\!-z]/gi,'');"></li>
                                            <li><label for="txt2">비밀번호</label><input name="adminPw" value="1234" type="password" id ="txt2"></li>
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
                                                form.action = 'adminLoginCk';
                                               
                                                form.submit();
                                                }
                                                
                                            }

                                            
                                        </script>
                                        
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


    
        
	         

</body>
</html>
    