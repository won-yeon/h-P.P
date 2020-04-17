<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>	
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>hoterProject_home</title>
    <!--style-->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/css/reset.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/css/Pstyle.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/css/jquery-ui.css">
    
    
    
   
    <link href="https://fonts.googleapis.com/css?family=Nanum+Gothic" rel="stylesheet">
</head>
<body>

    <div id="wrap">
        <!-- ////////////////////헤더 -->
        <jsp:include page="/WEB-INF/views/layout/header.jsp"/>
        <!-- ////////////////헤더 -->
        <!-- 회원관리////////////-->
       
        
        <div class="container">
            <div style="height: 40px; padding: 30px 0;">
                <span style="font-size: 30px; color: rgb(121, 98, 76);">회원관리</span>
            </div>
            
            
            
            <div class="adminMemberDetail">
                <div style="font-size: 24px; color: rgb(121, 98, 76); padding: 12px 0;"  >
                    회원 정보
                </div>  <a href="member" style="display:inline-block; padding: 4px 9px; margin-bottom:10px; background-color: rgb(88, 72, 56); ; color: white; border: 0;">회원 리스트</a>
                <table style="width: 900px;">
                	
            	<fmt:formatDate pattern="yyyy-MM-dd " var="regDate" value="${vo.regDate }"/>
            	
                    <tr>
                        <th>아이디</th><td>${vo.userId }</td>
                        <th>성별</th><td>${vo.userGender }</td>
                        <th>이름</th><td>${vo.userName }</td>
                    </tr>
                    <tr>
                        <th>이메일</th><td>${vo.userEmail }</td>
                        <th>전화번호</th><td>0${vo.phone1 }-${vo.phone2 }-${vo.phone3 }</td>
                        <th>point</th><td>${vo.remainPoint }</td>
                    </tr>
                    <tr>
                        <th>가입일자</th><td><c:out value="${regDate }"></c:out> </td>
                        <th>거주지</th><td>[${vo.addr1}] ${vo.addr2 } ${vo.addr3 }
                        <td colspan="2">
	                       
                        </td>
                    </tr>
                    

                </table>
                <div style="font-size: 23px; color: rgb(121, 98, 76); padding: 12px 0;"  >
             		       예약 내역
                </div>
                <div class="adminMemberDetailRevList">
                    <table class="table table-list-search" style="text-align: center;">
                        <thead>
                            <tr>
                                    <th>예약번호</th>
                                    <th>(성별)아이디</th>
                                    <th>방 번호</th>
                                    <th>체크인</th>
                                    <th>체크 아웃</th>
                                    <th>예약 날짜</th>
                                    <th>상태</th>
                                   
                                </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="vo1" items="${rvo }">
                            <fmt:formatDate pattern="yyyy-MM-dd " var="iDate" value="${vo1.checkInDate }"/>
            				<fmt:formatDate pattern="yyyy-MM-dd " var="oDate" value="${vo1.checkOutDate }"/>
            				<fmt:formatDate pattern="yyyy-MM-dd " var="rDate" value="${vo1.reservRegDate }"/>
                            <tr>
	                                  	<td>${vo1.reservNo }</td>
	                                    <td>${vo1.userId }</td>
	                                    <td>${vo1.roomNo }호</td>
	                                    <td><c:out value="${iDate }"></c:out> </td>
	                                    <td><c:out value="${oDate }"></c:out> </td>
	                                    <td><c:out value="${rDate }"></c:out> </td>
	                                    <td>
	                                    	<c:choose>
	                                    		<c:when test="${0 eq vo1.isCancled  }">
	                                    			예약		
	                                    		</c:when>
	                                    		<c:when test="${1 eq vo1.isCancled  }">
	                                    			취소		
	                                    		</c:when>
	                                    	</c:choose>
	                                    </td>
	                                    
	                                    
	                         </tr>
                            </c:forEach>
                        </tbody>
                    </table>   
                </div>

            </div>

        </div>       
     
          <!-- 회원관리////////////-->
        <!-- 푸터////////////// -->
        <jsp:include page="/WEB-INF/views/layout/footer.jsp"/>
        <!-- //footer -->
    </div>
    </div>

    <!-- script -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath }/resources/js/jquery-ui.min.js"></script>
    <script>
        $(document).ready(function() {
    var activeSystemClass = $('.list-group-item.active');

    //something is entered in search form
    $('#system-search').keyup( function() {
       var that = this;
        // affect all table rows on in systems table
        var tableBody = $('.table-list-search tbody');
        var tableRowsClass = $('.table-list-search tbody tr');
        $('.search-sf').remove();
        tableRowsClass.each( function(i, val) {
        
            //Lower text for case insensitive
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
$( "#check_out" ).datepicker({
            dateFormat: 'yy-mm-dd',
            prevText: '이전 달',
            nextText: '다음 달',
            monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
            monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
            dayNames: ['일','월','화','수','목','금','토'],
            dayNamesShort: ['일','월','화','수','목','금','토'],
            dayNamesMin: ['일','월','화','수','목','금','토'],
            showMonthAfterYear: true,
            changeMonth: true,
            changeYear: true,
            yearSuffix: '년'
            });
        


  
        $( "#check_in" ).datepicker({
            dateFormat: 'yy-mm-dd',
            prevText: '이전 달',
            nextText: '다음 달',
            monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
            monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
            dayNames: ['일','월','화','수','목','금','토'],
            dayNamesShort: ['일','월','화','수','목','금','토'],
            dayNamesMin: ['일','월','화','수','목','금','토'],
            showMonthAfterYear: true,
            changeMonth: true,
            changeYear: true,
            yearSuffix: '년'
            });
     
        $('#allList').click(function(){
      	  var $form = $('#searchForm');
      	  $.ajax({
      		  url:"memberAllList",
      		  type:"POST",
      		  success:function(data){
      			 
      			  
      			  var show;
      			  $.each(data,function(i){
      			  show += '<tr>';
                    show += '<td>'+data[i].userId+'</td>';
                    show += '<td>'+data[i].userName+'</td>';	
                    show += '<td>'+data[i].userEmail+'</td>';		
                    show += '<td>'+data[i].phone1+'-'+data[i].phone2+'-'+data[i].phone3+'</td>';		
                    show += '<td>'+data[i].remainPoint+'</td>';
                    show += '<td>'+data[i].regDate+'</td>';
					  show += '<td><a href="/hotel/admin/memberDetail?userId='+data[i].userId+'" id="detailMember" style=" padding: 4px 9px; background-color: rgb(88, 72, 56); ; color: white; border: 0;">상세보기</a></td>';	                                  		
						  show += '</tr>';	
      			  });
                    
      			  $('#tbody').html(show);
      		  },
      		  error:function(){
      			  alert('error');
      		  }
      	  })
        })
        	
              $('#searchbtn').click(function(){
            	  var $form = $('#searchForm');
            	  $.ajax({
            		  url:"memberSerch",
            		  type:"POST",
            		  data: $form.serialize(),
            		  success:function(data){
            			 
            			  
            			  var show;
            			  $.each(data,function(i){
            				  
            			 
            			  
            			  show += '<tr>';
                          show += '<td>'+data[i].userId+'</td>';
                          show += '<td>'+data[i].userName+'</td>';	
                          show += '<td>'+data[i].userEmail+'</td>';		
                          show += '<td>'+data[i].phone1+'-'+data[i].phone2+'-'+data[i].phone3+'</td>';		
                          show += '<td>'+data[i].remainPoint+'</td>';
                          show += '<td>'+data[i].regDate+'</td>';
						  show += '<td><a href="/hotel/admin/memberDetail?userId='+data[i].userId+'" id="detailMember" style=" padding: 4px 9px; background-color: rgb(88, 72, 56); ; color: white; border: 0;">상세보기</a></td>';	                                  		
							  show += '</tr>';	
            			  });
                          
            			  $('#tbody').html(show);
            		  },
            		  error:function(){
            			  alert('error');
            		  }
            	  })
              })
        </script>
</body>
</html>