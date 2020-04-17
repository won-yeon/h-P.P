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
    
</head>
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
                        <li class="mypage_nav_header_tit_li1">
                            <a href="swim">수영장</a>
                        </li>
                        <li >
                            <a href="restaurant">레스토랑</a>
                        </li>
                        <li >
                            <a href="fitness">피트니스</a>
                        </li>
                        
                        
                    </ul>
                </div>
            </div> 
            <!--  nav -->
            <div class="mypage_point">
                <div class="mypage_point_text">
                    <span>수영장</span>
                </div>
                <hr style="background-color: rgb(90, 76, 65); height: 5px;" >
                <div class="roomimgslide">
                    <div class="swin_img">
                        <div><img src="${pageContext.request.contextPath }/resources/img/beach-174561_1920.jpg"  height="370" > </div>
                       
                    </div>
                   
                </div>
                <div class="room_context">
                    <div class="room_context_title">
                        <h1>THE HOTEL seoul 에서 수영장을 이용하실 수 있습니다.
                        </h1>
                    </div>
                    <div class="room_context_subcontent">
                       <div class="swim_context_subcontent1">
                        <p class="tit"><strong>주의사항</strong></p>
                        <p>
                            <p><strong>01.</strong> 눈병, 피부병, 기타 공중위생병에 영향을 끼치는 환자는 수영장에 입장하실수 없습니다. <br></p>
                            <p><strong>02.</strong> 과도한 음주 후에는 수영장을 이용 할 수 없습니다.</p>
                            <p><strong>03.</strong> 귀중품은 반드시 안내데스크에 보관하시길 바랍니다.(분실시 책임지지 않습니다.)</p>
                            <p><strong>04.</strong> 미취학 아동(만4세 ~ 만6세)의 경우 반드시 보호자가 동반하여야 합니다. </p>
                             
                        </p>
                       </div>
                      

                    </div>
                    <div class="room_context_content">
                        <span>아름다운 풍경안에서 있는 풀장을 무료로 즐기실 수 있습니다.<br><br></span>
                        <span>문의전화 02-0000-0000<br><br></span>
                        <h2>위치: 호텔 광장 / 이용시간 06:00~22:00</h2>
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