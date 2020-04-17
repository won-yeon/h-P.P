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
                        <li >
                            <a href="swim">수영장</a>
                        </li>
                        <li >
                            <a href="restaurant">레스토랑</a>
                        </li>
                        <li class="mypage_nav_header_tit_li1">
                            <a href="fitness">피트니스</a>
                        </li>
                        
                        
                    </ul>
                </div>
            </div> 
            <!--  nav -->
            <div class="mypage_point">
                <div class="mypage_point_text">
                    <span>피트니스</span>
                </div>
                <hr style="background-color: rgb(90, 76, 65); height: 5px;" >
                <div class="roomimgslide">
                    <div class="swin_img">
                        <div><img src="${pageContext.request.contextPath }/resources/img/fitness-studio-331569_1920.jpg"  height="370" > </div>
                       
                    </div>
                   
                </div>
                <div class="room_context">
                    <div class="room_context_title">
                        <h1>전문 운동 기구를 갖춘 THE HOTEL seoul 피트니스 센터에서 몸과 마음을 재충전 하십시오.
                        </h1>
                    </div>
                    <div class="room_context_subcontent">
                       <div class="swim_context_subcontent1">
                        <p class="tit"><strong>주의사항</strong></p>
                        <p>
                            <p><strong>01.</strong> 기구 사용법을 모르시거나 신체가 허약한 분은 지도교사와 상담 후 운동에 임하여 주시기 바랍니다. <br></p>
                            <p><strong>02.</strong> 본인의 부주의로 인한 사고는 호텔에서는 책임을 지지 않습니다.</p>
                            <p><strong>03.</strong> 귀중품은 반드시 안내데스크에 보관하시길 바랍니다.(분실시 책임지지 않습니다.)</p>
                            
                             
                        </p>
                       </div>
                      

                    </div>
                    <div class="room_context_content">
                        
                        <span>문의전화 02-0000-0000<br><br></span>
                        <h2>위치: 호텔 8층 / 이용시간 06:00~23:00</h2>
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