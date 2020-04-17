<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>hoterProject_home</title>
    <!--style-->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/css/reset.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/css/jquery-ui.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/css/Pstyle.css">
    <link href="https://fonts.googleapis.com/css?family=Nanum+Gothic" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>
<body>
<div class="wrap">
    <!-- ////////////////////헤더 -->
    <jsp:include page="/WEB-INF/views/layout/header.jsp"/>

    <!-- 예약 -->
    <div style="height: 50px;"></div>
    <div class="container">
        <div class="reserv_top">
            <div class="reserv_top_process">
                <div class="reserv_top_process1" ><span>1</span></div>
                <div class="reserv_top_process1"><span>2</span></div>
                <div class="reserv_top_process1"><span>3</span></div>
            </div>
            <div class="reserv_top_context">
                <span>예약 완료</span>
            </div>
        </div>
        
        <div class="resservEndTop">
            <div class="reservationChargeTop">
                <span>예약완료</span>
            </div>
            <div class="resservEnd">
                <div class="resservEnd1">
                    <span>예약이 완료 되었습니다.</span>
                </div>
                <div class="resservEnd2">
                    <span>
                        회원님의 예약 번호는 <strong>${reservNo }</strong> 입니다.<br>
                        신분증 지참 및 예약번호를 기억해 주시기 바랍니다.
                    </span>
                </div>
                <div class="resservEnd3">
                    <span>
                       감사합니다.
                    </span>
                </div>
            </div>
        </div>
        <div class="reservCancle">
            <div class="reservCancleTop">
                <span>취소 및 환불 규정</span>
            </div>
            <div class="reservCancleContext">
                <span>
                    <p><strong>취소/변경 및 노쇼(No-show) 안내</strong></p> <br>
                    숙박 예정일 1일 전 18시까지는 위약금 없이 취소 및 변경이 가능합니다. <br>
                    숙박 예정일 1일 전 18시 이후 취소/변경 및 노쇼(No-show) 발생 시,<br>
                    - 성수기(5월~10월, 12월 24일~31일) : 최초 1일 숙박 요금의 80%가 위약금으로 부과됩니다.<br>
                    - 비수기(성수기 외 기간) : 최초 1일 숙박 요금의 10%가 위약금으로 부과됩니다.<br>
                </span>
            </div>           
            
            
        </div>
        <div class="reservButtonOption">
            
            <a class="reservNextButton" href="index">홈으로</a>
        </div>
    </div>
   

    <!-- 예약 -->
	<jsp:include page="/WEB-INF/views/layout/footer.jsp"/>
     <!-- 푸터////////////// -->

     <!-- //footer -->
</div>



</body>
</html>