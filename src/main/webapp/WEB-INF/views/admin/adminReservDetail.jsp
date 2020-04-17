<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>hoterProject_home</title>
    <!--style-->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/css/reset.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/css/Pstyle.css">
    
   
    
    
   
    <link href="https://fonts.googleapis.com/css?family=Nanum+Gothic" rel="stylesheet">
</head>
<body>

    <div id="wrap">
        <!-- ////////////////////헤더 -->
       <jsp:include page="/WEB-INF/views/layout/header.jsp"/>
        <!-- ////////////////헤더 -->

        <!-- 예약관리////////////-->
       
        
        <div class="container">
            <div style="height: 40px; padding: 30px 0;">
                <span style="font-size: 30px; color: rgb(121, 98, 76);">예약관리</span>
            </div>
            <div class="searchformember" style="margin:  auto;">
                
            </div>
          
            <div style="font-size: 24px; color: rgb(121, 98, 76); padding: 12px 0;"  >
                예약 정보
            </div>
			<a href=reserv style="display:inline-block; padding: 4px 9px; margin-bottom:10px; background-color: rgb(88, 72, 56); ; color: white; border: 0;">회원 리스트</a>
            <table style="width: 900px; border-collapse: collapse; ">
            	<fmt:formatDate pattern="yyyy-MM-dd " var="iDate" value="${vo.checkInDate }"/>
            	<fmt:formatDate pattern="yyyy-MM-dd " var="oDate" value="${vo.checkInDate }"/>
            	<fmt:formatDate pattern="yyyy-MM-dd " var="rDate" value="${vo.checkInDate }"/>
                <tr>
                    <th>예약번호</th><td>${vo.reservNo }</td>
                    <th>아이디</th><td >${vo.userId }</td>
                    <th>예약한날짜</th><td>${vo.userName }</td>
                    
                </tr>
                <tr>
                    <th>체크인 날짜</th><td><c:out value="${iDate }"/></td>
                    <th>체크아웃 날짜</th><td><c:out value="${oDate }"/></td>
                    <th>체크인 시간</th><td>${vo.checkInTime }:00</td>
                </tr>
                <tr>
                    <th>방번호</th><td>${vo.roomNo }</td>
                    <th>방 등급</th><td>${rvo.roomGrade }</td>
                    <th>방 타입</th><td>${rvo.roomType }</td>
                </tr>
                <tr>
                    <th>결제금액</th><td>${vo.price }</td>
                    <th>사용포인트</th><td>${vo.point }</td>
                    <th>총 금액</th><td>${vo.price-vo.point }</td>
                    
                </tr>
                <tr >
                    <th>option</th>
                    <td colspan="3">
                    	<c:if test="${vo.breakFast ne '0' }">
                    		조식 ${vo.breakFast } 인 /
                    	</c:if>
                    	<c:if test="${vo.extraBed ne '0' }">
                    		엑스트라 베드 ${vo.extraBed } 
                    	</c:if>
                    </td>
                    <th>예약한 날짜</th><td colspan="3"><c:out value="${rDate }"/></td>
                </tr>
                <tr style="height:70px;">
                    <th style="width: 120px;">추가요청사항</th><td  colspan="5" style="width: 760px;" >${vo.memo } </td>
                </tr>
                <tr>
                    <th>회원정보상세</th>
                    <td ><div style=" display: inline;">	<a href="/hotel/admin/memberDetail?userId=${vo.userId }"  style=" padding: 4px 12px; background-color: rgb(88, 72, 56); ; color: white; border: 0;">회원정보</a></div></td>
                    
                    <th>예약 조정</th>
                    <td ><div style=" display: inline;">	<a href="/hotel/admin/reservCancle?reservNo=${vo.reservNo }"  style=" padding: 4px 12px; background-color: rgb(88, 72, 56); ; color: white; border: 0;">예약취소</a></div></td>
                </tr>
            </table>
            <div style="height: 80px;"></div>
        </div>       


        
        

        
     
          <!-- 예약관리////////////-->
        <!-- 푸터////////////// -->
        <jsp:include page="/WEB-INF/views/layout/footer.jsp"/>
        <!-- //footer -->
    </div>
    
    <!-- script -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
   
    <script>
        $(document).ready(function() {
    var activeSystemClass = $('.list-group-item.active');

    
    $('#system-search').keyup( function() {
       var that = this;
        
        var tableBody = $('.table-list-search tbody');
        var tableRowsClass = $('.table-list-search tbody tr');
        $('.search-sf').remove();
        tableRowsClass.each( function(i, val) {
        
         
            var rowText = $(val).text().toLowerCase();
            var inputText = $(that).val().toLowerCase();
            if(inputText != '')
            {
                $('.search-query-sf').remove();
                tableBody.prepend('<tr class="search-query-sf"><td colspan="6"><strong>Searching for: "'
                    + $(that).val()
                    + '"</strong></td></tr>');
            }
            else
            {
                $('.search-query-sf').remove();
            }

            if( rowText.indexOf( inputText ) == -1 )
            {
                //hide rows
                tableRowsClass.eq(i).hide();
                
            }
            else
            {
                $('.search-sf').remove();
                tableRowsClass.eq(i).show();
            }
        });
        //all tr elements are hidden
        if(tableRowsClass.children(':visible').length == 0)
        {
            tableBody.append('<tr class="search-sf"><td class="text-muted" colspan="6">No entries found.</td></tr>');
        }
    });
});
    </script>
</body>
</html>