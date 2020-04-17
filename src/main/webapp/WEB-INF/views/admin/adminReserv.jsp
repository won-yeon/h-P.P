<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
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
            <form id="Rsearch" method="POST" >
                <table id="tbody" style="width: 900px;">
                    <tr>
                        <th>예약번호</th><td><input name="preservNo" type="text" onKeyup="this.value=this.value.replace(/[^0-9]/g,'');"></td>
                        <th>아이디</th><td><input name="userId" type="text"></td>
                        <th>방번호</th><td><input name="proomNo" type="text" onKeyup="this.value=this.value.replace(/[^0-9]/g,'');"></td>
                    </tr>
                    <tr>
                        <th>체크인</th><td><input name="pcheckInDate" type="text" id="check_in" readonly></td>
                        <th>체크아웃</th><td><input name="pcheckOutDate" type="text" id="check_out" readonly></td>
                        <th>예약날짜</th><td><input name="preservRegDate" type="text" id="regDat11"></td>
                    </tr>
                    <tr>
                        <th>상태</th>
                        <td>
                            <select name="pisCancled" id="">
                                <option value="">전체</option>
                                <option value="0">취소</option>
                                <option value="1">예약</option>
                                <option value="2">완료</option>
                            </select>
                        </td>
                        <th>검색</th><td><input id="Rbtn" type="button" value="검색" style="margin-left: 40px; padding: 4px 12px; background-color: rgb(88, 72, 56); ; color: white; border: 0;"></td>
                        <th>전체보기</th><td><input id="Allbtn" type="button" value="전체보기" style="margin-left: 40px; padding: 4px 12px; background-color: rgb(88, 72, 56); ; color: white; border: 0;"></td>
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
                                    <th>예약번호</th>
                                    <th>(성별)아이디</th>
                                    <th>방 번호</th>
                                    <th>체크인</th>
                                    <th>체크 아웃</th>
                                    <th>예약 날짜</th>
                                    <th>상태</th>
                                    <th>상세보기</th>
                                </tr>
                            </thead>
                            <tbody id="body1">
                                
	                            
                                
                               
                            </tbody>
                        </table>   
                </div>
            </div>
        </div>       


        
        

        
     
          <!-- 예약관리////////////-->
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
        
        $( "#regDat11" ).datepicker({
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
        
        $('#Rbtn').click(function(){
      	  var $form = $('#Rsearch');
      	  $.ajax({
      		  url:"reservationSearch",
      		  type:"POST",
      		  data: $form.serialize(),
      		  success:function(data){
      			
					  var date1;
					  var date2;
					  var date3;
      			  var show;
      			  var text;
      			  $.each(data,function(i){
      				
      				
      				 
     				 date1=formatDate(data[i].checkInDate);
     				 date2=formatDate(data[i].checkOutDate);
     				 date3=formatDate(data[i].reservRegDate);
     				 
      				  if(data[i].isCancled=="0"){
      					  text="예약";
      				  }else if (data[i].isCancled=="1"){
      					  text="취소";
      				  }else{
      					  text="완료";
      				  }
      				  
      			  show += '<tr>';
                    show += '<td>'+data[i].reservNo+'</td>';
                    show += '<td>'+data[i].userId+'</td>';	
                    show += '<td>'+data[i].roomNo+'</td>';		
                    show += '<td>'+date1+'</td>';		
                    show += '<td>'+date2+'</td>';
                    show += '<td>'+date3+'</td>';
                    show += '<td>'+text+'</td>'
						  show += '<td><a href="/hotel/admin/reservDetail?reservNo='+data[i].reservNo+'" id="detailMember" style=" padding: 4px 9px; background-color: rgb(88, 72, 56); ; color: white; border: 0;">상세보기</a></td>';	                                  		
							  show += '</tr>';	
      			  });
      			  $('#body1').html(show);
      		  },
      		  error:function(){
      			  alert('error');
      		  }
      	  })
        })
        
        $('#Allbtn').click(function(){
      	 
      	  $.ajax({
      		  url:"reservAllList",
      		  type:"POST",
      		  success:function(data){
      			
					  var date1;
					  var date2;
					  var date3;
      			  var show;
      			  var text;
      			  $.each(data,function(i){
      				
      				
      				 
     				 date1=formatDate(data[i].checkInDate);
     				 date2=formatDate(data[i].checkOutDate);
     				 date3=formatDate(data[i].reservRegDate);
     				 
      				  if(data[i].isCancled=="0"){
      					  text="예약";
      				  }else if (data[i].isCancled=="1"){
      					  text="취소";
      				  }else{
      					  text="완료";
      				  }
      				  
      			  show += '<tr>';
                    show += '<td>'+data[i].reservNo+'</td>';
                    show += '<td>'+data[i].userId+'</td>';	
                    show += '<td>'+data[i].roomNo+'</td>';		
                    show += '<td>'+date1+'</td>';		
                    show += '<td>'+date2+'</td>';
                    show += '<td>'+date3+'</td>';
                    show += '<td>'+text+'</td>'
						  show += '<td><a href="/hotel/admin/reservDetail?reservNo='+data[i].reservNo+'" id="detailMember" style=" padding: 4px 9px; background-color: rgb(88, 72, 56); ; color: white; border: 0;">상세보기</a></td>';	                                  		
							  show += '</tr>';	
      			  });
      			  $('#body1').html(show);
      		  },
      		  error:function(){
      			  alert('error');
      		  }
      	  })
        })
        
       
			</script>
</body>
</html>