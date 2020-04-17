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
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    
<body>
    <div class="wrap">
        <!-- ////////////////////헤더 -->
         <jsp:include page="/WEB-INF/views/layout/header.jsp"/>  
        <!-- ////////////////헤더 -->
        
        <div class="container">
             <!--  nav -->
         <div class="mypage_nav">
                <div class="mypage_nav_header">
                    <ul>
                        <div class="mypage_nav_header_tit">
                            <h1>부대시설</h1>
                        </div>
                        <li >
                            <a href="swim.do">수영장</a>
                        </li>
                        <li class="mypage_nav_header_tit_li1">
                            <a href="restaurant.do">레스토랑</a>
                        </li>
                        <li >
                            <a href="fitness.do">피트니스</a>
                        </li>
                        
                        
                    </ul>
                </div>
            </div>  
            <!--  nav -->
            <div class="mypage_point">
                <div class="mypage_point_text">
                    <span>레스토랑</span>
                </div>
                <hr style="background-color: rgb(90, 76, 65); height: 5px;" >
                <div class="roomimgslide">
                    <div class="swin_img">
                        <div><img src="${pageContext.request.contextPath }/resources/img/villa-cortine-palace-949552_1920.jpg"  height="370" > </div>
                       
                    </div>
                   
                </div>
                <div class="room_context">
                    <div class="room_context_title">
                        <h1>모던 앤 캐주얼 뷔페 레스토랑 카페에서 세련된 분위기 속 엄선된 메뉴와 신선한  음식을 맛볼수 있습니다.
                        </h1>
                    </div>
                    <div class="room_context_subcontent">
                       <div class="swim_context_subcontent1">
                        <p class="tit"><strong>이용시간</strong></p>
                        <p>
                            <p ><strong>01.조식</strong> </p>
                            <p >주중 : 06:30~ 09:30</p>
                            <p ><strong>02.중식</strong> </p>
                            <p >주중 : 11:30~ 14:30</p>
                            <p ><strong>03.석식</strong> </p>
                            <p >주중 : 18:00~ 23:00</p>
                            
                             
                        </p>
                       </div>
                      

                    </div>
                    <div class="room_context_content">
                        
                        <span>문의전화 02-0000-0000<br><br></span>
                        <h2>위치: 호텔 8층 / 좌석수: 108석</h2>
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