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
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/css/slick.css">
    <link href="https://fonts.googleapis.com/css?family=Nanum+Gothic" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath }/resources/js/slick.min.js" type="text/javascript"></script>
   
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
                            <h1>객실</h1>
                        </div>
                        <li class="mypage_nav_header_tit_li1">
                            <a href="standard">스탠다드</a>
                        </li>
                        <li>
                            <a href="executive">이그제큐티브</a>
                        </li>
                        <li>
                            <a href="sweet">스위트</a>
                        </li>
                        
                        
                    </ul>
                </div>
            </div>
            <!-- 객실페이지 nav -->
            <div class="mypage_point">
                <div class="mypage_point_text">
                    <span>스탠다드</span>
                </div>
                <hr style="background-color: rgb(90, 76, 65); height: 5px;" >
                <div class="roomimgslide">
                    <div class="standard_img1">
                        <div><img src="${pageContext.request.contextPath }/resources/img/standard/bedroom-389254_1280.jpg"  height="370" ></div>
                        <div><img src="${pageContext.request.contextPath }/resources/img/standard/hotel-1979406_1920.jpg" height="370"></div>
                        <div><img src="${pageContext.request.contextPath }/resources/img/standard/standard.jpg" height="370"></div>
                        <div><img src="${pageContext.request.contextPath }/resources/img/standard/room-4821441_1920.jpg" height="370"></div>
                    </div>
                    <div class="standard_img2">
                        <div class="delux_img2_1"><img src="${pageContext.request.contextPath }/resources/img/standard/bedroom-389254_1280.jpg"  height="94" ></div>
                        <div class="delux_img2_1"><img src="${pageContext.request.contextPath }/resources/img/standard/hotel-1979406_1920.jpg" height="94"></div>
                        <div class="delux_img2_1"><img src="${pageContext.request.contextPath }/resources/img/standard/standard.jpg" height="94"></div>
                        <div class="delux_img2_1"><img src="${pageContext.request.contextPath }/resources/img/standard/room-4821441_1920.jpg" height="94"></div>
                    </div>
                </div>
                <div class="room_context">
                    <div class="room_context_title">
                        <h1>디럭스 룸은 편안하고 안락한 공간을 효율적으로 구성했습니다.
                            디럭스 룸은 편안하고 안락한 공간을 효율적으로 구성했습니다.
                        </h1>
                    </div>
                    <div class="room_context_subcontent">
                       <div class="room_context_subcontent1">
                        <p class="tit"><strong>조식 이용 안내</strong></p>
                        <p>- 더 파크뷰 <br>
                            06:00~10:00<br>
                            (주중/주말/공휴일)<br>
                          - 더 라이브러리<br>
                            08:00~11:30</p><br>
                       </div>
                       <div class="room_context_subcontent2">
                        <p class="tit"><strong>체크인/체크아웃 시간</strong></p>
                        <p>
                            - 체크인 : 오후 3시 이후<br>
                            - 체크아웃 : 낮 12시</p>
                       </div>
                       <div class="room_context_subcontent3">
                        <p class="tit"><strong>취소/변경 및 노쇼(No-show)안내</strong></p>
                        <p>
                            숙박 예정일 1일 전 18시까지는 위약금 없음<br>
                            숙박 예정일 1일 전 18시 이후 취소/변경/노쇼 발생 시<br>
                            - 성수기 (5월~10월, 12월 24일~31일) :<br>
                            최초 1일 숙박 요금의 80%가 위약금으로 부과<br>
                            - 비수기 (성수기 외 기간) :<br>
                            최초 1일 숙박 요금의 10%가 위약금으로 부과
                        </p>
                       </div>

                    </div>
                    <div class="room_context_content">
                        <span>글로벌 럭셔리 호텔 디자니어 피터가 디자인한 모던함을 만나 보십시오. 세계적인 수준의 침구류와 함께 생애 최고의 휴식을 경험해보시기 바랍니다.<br><br></span>
                        <span>문의전화 02-0000-0000<br><br></span>
                        <h2>침대:더블,트윈 크기:43m² 룸구성:침실1, 욕실1, 화장실1</h2>
                    </div>
                    

                </div>
            </div>
            
        </div>
         <!-- 푸터////////////// -->
     
    <jsp:include page="/WEB-INF/views/layout/footer.jsp"/>  
     <!-- //footer -->
       
    </div>
    <script>
        $(document).ready(function(){
        
            //standard 이미지슬라이드
            $('.standard_img1').slick({
                slidesToShow: 1,
                slidesToScroll: 1,
                arrows: false,
                fade: true,
                autoplay :true,
                autoplaySpeed:3000,
                asNavFor: '.standard_img2'
                });
                $('.standard_img2').slick({
                slidesToShow: 3,
                slidesToScroll: 1,
                asNavFor: '.standard_img1',
                dots: false,
                centerMode: true,
                arrows: false,
                focusOnSelect: true
                });
               
        });
    </script>
</body>
</html>