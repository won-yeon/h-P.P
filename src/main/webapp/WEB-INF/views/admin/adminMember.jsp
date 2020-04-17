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
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/css/Pstyle.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/css/jquery-ui.css">
    
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    
   
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
            <div class="searchformember">
            	<form id="searchForm" method="POST" action="memberSerch">
                <table style="width: 900px;">
                    <tr>
                        
                        <th>성별</th>
                        <td>
                            <select name="userGender" id="ge">
                                <option value="남자">남자</option>
                                <option value="여자">여자</option>
                            </select>
                        </td>
                        <th>아이디</th><td><input name="userId" type="text"></td>
                        <th>이름</th><td><input name="userName" type="text" onKeyup="this.value=this.value.replace(/[^가-힣]+$/g,'');"></td>
                    </tr>
                    <tr>
                        
                        <th>이메일</th><td><input name="userEmail" type="text" onKeyup="this.value=this.value.replace(/[^a-zA-Z0-9]+$/g,'');"></td>
                        <th>전화번호</th>				
                        <td>
                            <select name="phone1" id="">
                                    <option value="010" selected>010</option>
                                    <option value="011" >011</option>
                                    <option value="017" >017</option>
                                    <option value="018" >018</option>
                                    <option value="019" >019</option>
                                    <option value="016" >016</option>
                                </select>
                                -
                                <input type="text"name="Tphone2" style="width: 50px;" maxlength="4"  onKeyup="this.value=this.value.replace(/[^0-9]/g,'');"/>
                                -
                                <input type="text"name="Tphone3" style="width: 50px;" maxlength="4"  onKeyup="this.value=this.value.replace(/[^0-9]/g,'');"/>
                        </td>
                        <th>가입일자</th><td><input name="TregDateS" id="check_out" type="text" readonly/> ~ <input name="TregDateL" id="check_in" type="text" readonly/></td>
                    </tr>
                    <tr>
                        <th>검색</th><td><input id="searchbtn" type="button" value="검색" style="margin-left: 40px; padding: 4px 12px; background-color: rgb(88, 72, 56); ; color: white; border: 0;"></td>
                        <th>전체보기</th><td><input id="allList" type="button" value="전체보기" style="margin-left: 40px; padding: 4px 12px; background-color: rgb(88, 72, 56); ; color: white; border: 0;"></td>
                    </tr>
                </table>
               </form>
                
            </div>
            <div style="height: 40px;"></div>
            <div class="row">
                <div class="col-md-3">
                    <form action="#" method="get">
                        <div class="input-group" style="padding-top: 4px;">
                            <!-- USE TWITTER TYPEAHEAD JSON WITH API TO SEARCH -->
                            <span style="padding: 5px 15px;color: white; margin-right: 5px;  background-color: rgb(138, 105, 73);">상세검색</span><input class="form-control" id="system-search" name="q" placeholder="Search for" required>
                            
                        </div>
                    </form>
                </div>
                <div style="height: 10px;"></div>
                <div class="col-md-9">
                <table class="table table-list-search" style="text-align: center;">
                            <thead>
                                <tr>
                                    <th>(성별)아이디</th>
                                    <th>이름</th>
                                    <th>이메일</th>
                                    <th>전화번호</th>
                                    <th>point</th>
                                    <th>가입일자</th>
                                    <th>상세보기</th>
                                </tr>
                            </thead>
                            <tbody id="tbody">
                                <c:forEach var="vo" items="${list }">
                                	<tr>
                                		<td>${vo.userId }</td>
                                		<td>${vo.userName }</td>
                                		<td>${vo.userEmail }</td>
                                		<td>${vo.phone1 }-${vo.phone2 }-${vo.phone3 }</td>
                                		<td>${vo.remainPoint }</td>
                                		<td>${vo.regDate }</td>
                                		<td><a href="/hotel/admin/memberDetail?userId=${vo.userId }" id="detailMember" style=" padding: 4px 9px; background-color: rgb(88, 72, 56); ; color: white; border: 0;">상세보기</a></td>
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
   
    <script src="${pageContext.request.contextPath }/resources/js/jquery-ui.min.js"></script>
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
                
                tableRowsClass.eq(i).hide();
                
            }
            else
            {
                $('.search-sf').remove();
                tableRowsClass.eq(i).show();
            }
        });
       
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
        
        
        function formatDate(date) { 
			var d = new Date(date), 
			month = '' + (d.getMonth() + 1), 
			day = '' + d.getDate(), 
			year = d.getFullYear(); 
			if (month.length < 2){ month = '0' + month;} 
			if (day.length < 2){ day = '0' + day;} 
			return [year, month, day].join('-'); 
			}
    
                $('#allList').click(function(){
              	  var $form = $('#searchForm');
              	   var date1;
              	  $.ajax({
              		  url:"memberAllList",
              		  type:"POST",
              		  success:function(data){
              			 
              			  
              			  var show;
              			  $.each(data,function(i){
              				date1=formatDate(data[i].regDate);
              				
              				show += '<tr>';
                            show += '<td>'+data[i].userId+'</td>';
                            show += '<td>'+data[i].userName+'</td>';	
                            show += '<td>'+data[i].userEmail+'</td>';		
                            show += '<td>'+data[i].phone1+'-'+data[i].phone2+'-'+data[i].phone3+'</td>';		
                            show += '<td>'+data[i].remainPoint+'</td>';
                            show += '<td>'+date1+'</td>';
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
                    	  var date1;
                    	  $.ajax({
                    		  url:"memberSerch",
                    		  type:"POST",
                    		  data: $form.serialize(),
                    		  success:function(data){
                    			 
                    			  
                    			  var show;
                    			  $.each(data,function(i){
                    				  date1=formatDate(data[i].regDate);
                    			 
                    			  
                    			  show += '<tr>';
                                  show += '<td>'+data[i].userId+'</td>';
                                  show += '<td>'+data[i].userName+'</td>';	
                                  show += '<td>'+data[i].userEmail+'</td>';		
                                  show += '<td>'+data[i].phone1+'-'+data[i].phone2+'-'+data[i].phone3+'</td>';		
                                  show += '<td>'+data[i].remainPoint+'</td>';
                                  show += '<td>'+date1+'</td>';
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