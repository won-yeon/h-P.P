<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>hoterProject_home</title>
    <!--style-->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/css/reset.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/css/Pstyle.css?var=1">
    <link href="https://fonts.googleapis.com/css?family=Nanum+Gothic" rel="stylesheet">
</head>
<body>

    <div id="wrap">
        <!-- ////////////////////헤더 -->
        <jsp:include page="/WEB-INF/views/layout/header.jsp"/>
        <!-- ////////////////헤더 -->
        <!-- 객실관리////////////-->
        <div class="container">
            
            <div style="height: 40px; padding: 30px 0;">
                <span style="font-size: 30px; color: rgb(121, 98, 76);">객실관리</span>
            </div>
            <div class="roomColor1">
                <div class="roomColor1_12"><span> 사용중</span></div>
                <div class="roomColor1_1"></div>
                
                <div class="roomColor1_22"><span> 청소중</span></div>
                <div class="roomColor1_2"></div>
                
                <div class="roomColor1_32"><span> 예약</span></div>
                <div class="roomColor1_3"></div>
                
                <div class="roomColor1_42"><span> 사용가능</span></div>
                <div class="roomColor1_4"></div>
                
            </div>
            <div class="roomState" id="roomState">
                  <div class="roomFloor"><span>2층</span></div>
                <div class="roomFloor"><span>3층</span></div>
                <div class="roomFloor"><span>4층</span></div>
                <div class="roomFloor"><span>5층</span></div>
                <div class="roomFloor"><span>6층</span></div>
                <div class="roomFloor"><span>7층</span></div>
                <div class="roomFloor"><span>9층</span></div>
                <div class="roomFloor"><span>10층</span></div>
            </div>
			 <div class="roomStateSide">
			 	<c:forEach var="vo" items="${list }">
	                <a class="roomState_in" id="roomDetail" href="/hotel/admin/roomDetail?roomNO=${vo.roomNO }">
	                    <div class="roomState1">
	                    <c:choose>
	                    	<c:when test="${vo.state eq '사용가능' }">
	                    		<div class="roomStateColor" style="background-color: green;"></div>
	                    	</c:when>
	                    	<c:when test="${vo.state eq '사용중' }">
	                    		<div class="roomStateColor" style="background-color: red;"></div>
	                    	</c:when>
	                    	<c:when test="${vo.state eq '청소중' }">
	                    		<div class="roomStateColor" style="background-color: blue;"></div>
	                    	</c:when>
	                    	<c:otherwise>
	                    		<div class="roomStateColor" style="background-color: black;"></div>
	                    	</c:otherwise>
	                    </c:choose>
	                        <div class="roomStateColor"></div>
	                        <span>${vo.roomNO }</span>
	                        <span>Grade: ${vo.roomGrade }</span>
	                        <span>Type: ${vo.roomType }</span>
	                        <span>state: ${vo.state }</span>
	                    </div>
	                </a>
                </c:forEach>
            </div>
        </div>
        

        
     
          <!-- 객실관리////////////-->
        <!-- 푸터////////////// -->
        <jsp:include page="/WEB-INF/views/layout/footer.jsp"/>
        <!-- //footer -->
    </div>
    </div>

    <!-- script -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    
    <script>
     	
    </script>
</body>
</html>