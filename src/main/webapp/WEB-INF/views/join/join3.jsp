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
               <jsp:include page="/WEB-INF/views/layout/header.jsp"/>   
    

        <div class="container">
            <div class="join_container">
                <div class="join_top_text"><span class="span1">THE HOTEL   </span> <span class="span2">SEOUL     </span><span class="span3">가입</span></div>
                <div class="join_top">
                    <div class="join_top1"><span class="join_top_sapn">약관동의</span></div>
                    <div class="join_top2" ><span class="join_top_sapn">회원정보 입력</span></div>
                    <div class="join_top3" style="border-bottom: 4px solid rgb(134, 108, 82);"><span class="join_top_sapn">가입완료</span></div>
                </div>
                <div class="login_secondform_text1"><h1>가입완료</h1></div>
                <hr  style="height: 2px; background-color: rgb(88, 75, 62);">

                
                    <div class="join_3_1"><span>감사합니다.</span></div>
                    <span class="join_3_2"> ${userId} 님께서는 THE HOTEL seoul에 정상적으로 가입되셨습니다.</span>
                    <div class="join_3_">
                        <div class="join_3_3">
                            
                            <div class="join_3_6" style="margin-top: 40px;"><span>아이디</span></div>
                            <div class="join_3_7" style="margin-top: 40px;"><span>${userId}</span></div>
                        </div>   
                        <div class="join_3_8">
                            <span><br><br>가입을 축하드립니다.<br>로그인 하신 수 다양한 혜택과 서비스를 경험해 보시기 바랍니다.
                            <br><br>회원님을 위한 3만 포인트가 지급되었습니다.<br>로그인 후 마이페이지에서 확인가능합니다.</span>
                        </div>
                    </div>    

                    <div class="join_3_last"><a href="/hotel/login">로그인</a></div>
            
            </div>

            
        </div>

   
   
    </div>
   
    <jsp:include page="/WEB-INF/views/layout/footer.jsp"/>   
</body>
</html>