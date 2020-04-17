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
                <div style="padding: 6px 0 3px 5px;">
                    <span>Total: 1</span>
                </div>
                <div>
                    <hr style="background-color: rgb(156, 128, 107); height: 2px;">
                </div>
                <div class="evnet_list">
                    <ul>
                        <li style="height: 180px;">
                            <div class="evnet_list_img"><img style="width: 270px; height: 160px;" src="${pageContext.request.contextPath }/resources/img/restaurant-3597677_1920.jpg" alt=""></div>
                            <div class="event_list_tit"><span><a href="event">호텔 레스토랑 할인 이벤트</a> </span></div>
                            <div class="event_list_date"><span>2020-11-28 ~ 2021-12-31</span></div>
                            <div class="event_list_summery"><span>THE HOTEL seoul에서 회원 대상 특별한 혜택을 선보입니다.</span></div>
                        </li>
                       
                        
                    </ul>
                </div>
            </div>
            
        </div>
         <!-- 푸터////////////// -->
     <jsp:include page="/WEB-INF/views/layout/footer.jsp"/>  
     <!-- //footer -->
       
    </div>
   
</body>
</html>