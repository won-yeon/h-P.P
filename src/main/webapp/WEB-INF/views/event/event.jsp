<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
        
        <div class="container">
            <!-- 객실페이지 nav -->
            <div class="mypage_nav">
                <div class="mypage_nav_header">
                    <ul>
                        <div class="mypage_nav_header_tit">
                            <h1>이벤트</h1>
                        </div>
                        <li class="mypage_nav_header_tit_li1"  >
                            <a href="/hotel/eventList">이벤트</a>
                        </li>
                    </ul>
                </div>
            </div>
            <!-- 객실페이지 nav -->
            <div class="mypage_point">
                <div class="mypage_point_text">
                    <span>이벤트</span>
                </div>
                <hr style="background-color: rgb(90, 76, 65); height: 5px;" >
                <div class="roomimgslide">
                    <div class="swin_img">
                        <div><img src="${pageContext.request.contextPath }/resources/img/restaurant-3597677_1920.jpg"  height="370" > </div>
                       
                    </div>
                   
                </div>
                <div class="room_context">
                    <div class="room_context_title">
                        <h1>기간 동안에 THE HOTEL seoul의 회원들께 드리는 할인 이벤트 
                        </h1>
                        <br>
                        <p>THE HOTEL seoul 에서 THE HOTEL seoul 회원 대상 특별한 리워드 혜택을 선보입니다.<br></p>
                        <br>
                        <p>내용 : THE HOTEL seoul 1박 이상 투숙 시 THE HOTEL seoul 의 프리미엄 레스토랑을 10% 낮은 가격으로 이용하실 수 있습니다<br><br>
			                        시행 시점 : 2020년 4월 28일 ~ (체크인 기준)<br>
			                        대상 : THE HOTEL seoul 회원<br>
                        </p>
                        <br>
                        <p>
                        THE HOTEL seoul 홈페이지(shillastay.com), THE HOTEL seoul 홈페이지(shillahotels.com), 신라호텔 APP을 통해 예약한 <br>
                        THE HOTEL seoul 객실 또는 패키지에 한하여 적용됩니다.<br>
                        
                        <br>
                        
                        </p>    
                    </div>
                    <div class="room_context_subcontent">
                       <div class="swim_context_subcontent1">
                        <p class="tit"><strong>이용시간</strong></p>
                        <p>
                            <p ><strong>기간 : 2020-11-28 ~ 2021-12-31</strong> </p><br>
                            <p ><strong> ※ 온라인 예약만 적용됩니다. (전화 예약 또는 호텔 현장 예약 적용 불가)</strong> </p>
                        </p>
                       </div>
                      

                    </div>
                    
                    

                </div>
            </div>
            
        </div>
         <!-- 푸터////////////// -->
     <jsp:include page="/WEB-INF/views/layout/footer.jsp"/>  
     <!-- //footer -->
       
    </div>
    

</body>
</html>