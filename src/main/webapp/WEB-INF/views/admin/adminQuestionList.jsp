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
    
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
   
    <link href="https://fonts.googleapis.com/css?family=Nanum+Gothic" rel="stylesheet">
</head>
<body>

    <div id="wrap">
        <!-- ////////////////////헤더 -->
       <jsp:include page="/WEB-INF/views/layout/header.jsp"/>
        <!-- ////////////////헤더 -->
        <!-- 문의관리////////////-->
       
        
        <div class="container">
            <div style="height: 40px; padding: 30px 0;">
                <span style="font-size: 30px; color: rgb(121, 98, 76);">문의관리</span>
            </div>
            <!-- 질문내용 -->
            
            <div class="mypage_page_table">
                <div style="height: 30px;"" >
                    <span style="font-size: 20px; color: rgb(121, 98, 76);">질문자 질문</span>
                </div>
                <div class="mypage_page_question_table1">
                    <table id="adminContent">
                            
                    </table>
                   
                </div>
                 <div style="height: 60px;"></div>
            </div>    
            <!-- 질문내용 -->
            
            <div class="mypage_page_table">
                
                <div class="mypage_page_question_table1" id="questionAdminform">
                 
                    
                </div>
                 <div style="height: 60px;"></div>
            </div>    
            
            <!-- 답변하기 -->


            <!-- 답변하기 -->
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
                                    <th></th>
                                    <th>질문자 아이디</th>
                                    <th>질문유형</th>
                                    <th>제목</th>
                                    <th>답변여부</th>
                                    <th>질문 날짜</th>
                                    <th>답변하기</th>
                                </tr>
                            </thead>
                            <tbody>
                            	
                                <c:forEach var="Qlist"   items="${list }">
                                <fmt:formatDate pattern="yyyy-MM-dd " var="regDate" value="${Qlist.regDate }"/>
                                <tr class="parent" >
                                    <td class="item1">${Qlist.questionNo }</td>
                                    <td class="item">${Qlist.userId }</td>
                                    <td class="item">${Qlist.questionType }</td>
                                    <td class="item">${Qlist.questionTitle }</td>
                                    <td class="item">
                                    	<c:if test="${Qlist.isAnswer == 1 }">
                                    	답변
                                    	</c:if>
                                    	<c:if test="${Qlist.isAnswer == 0 }">
                                    	미답
                                    	</c:if>
                                    	
                                    </td>
                                    <td class="item"><c:out value="${regDate }"></c:out></td>
                                    <td><input class="item2" type="submit" value="질문보기" style=" padding: 4px 9px; background-color: rgb(88, 72, 56); ; color: white; border: 0;"></td>
                                </tr>
                                </c:forEach>
                                
                               
                            </tbody>
                        </table> 
                         
                </div>
            </div>
        </div>       


         <script>
         
         function formatDate(date) { 
				var d = new Date(date), 
				month = '' + (d.getMonth() + 1), 
				day = '' + d.getDate(), 
				year = d.getFullYear(); 
				if (month.length < 2){ month = '0' + month;} 
				if (day.length < 2){ day = '0' + day;} 
				return [year, month, day].join('-'); 
				}
         
									$('.item2').on('click', function() {
									  var $idx = $(this).closest('tr');
									  var $ptd = $idx.children().first();
									 var id = $ptd.html();
									 var test = {no : id};
									 var show;
									 var  date1;
									 var text='';
									  $.ajax({
										 
										url:"questionContent",
										type:"POST",
										data:test,
										success:function(data){
											
											date1 = formatDate(data.regDate);
											show += '<tr >';
											show += '<th>질문자 아이디</th>';
											show += '<td id="question_id">'+data.userId+'</td>';
											show += '<th>질문 날짜</th>';
											show += '<td id="question_date">'+date1+'</td>';
											show += '</tr>';
											show += '<tr >';
											show += '<th>질문유형</th>';
											show += '<td colspan="3">'+data.questionType+'</td>';
											show += '</tr>';
											show += '<tr>';
											show += '<th>제목</th>';
											show += '<td colspan="3" id="question_content">'+data.questionTitle+'</td>';
											show += '</tr>';
											show += '<tr >';
											show += '<th>내용</th>';
											show += '<td colspan="3">'+data.questionContent+'</td>';
											show += '</tr>';
											
											$('#adminContent').html(show);

											text += '<div style="height: 30px;"" ><span style="font-size: 20px; color: rgb(121, 98, 76);">답변작성</span></div>';
											text += '<form action="replyInsert" method="POST">';
											text += '<table>';
											text += '<tr><th>질문자 아이디</th><td id="question_id_re"></td><input name="userId" type="text" id="questionId" style="display: none;"></tr>';
											text += '<tr><th>질문유형</th><td colspan="3"><select name="questionType" id="" ><option value="답변" >답변</option></select></td></tr>';
											text += '<tr><th>제목</th><td colspan="3" id="question_content_re"></td><input name="questionTitle" type="text" id="questiontitle" style="display: none;"></tr>';
											text +='<tr><th>내용</th><td colspan="3"><textarea name="questionContent" id="" cols="120" rows="10"></textarea></td></tr>';
											text += '<input style="display:none" name="groupNo" type="text" value='+data.groupNo+'><input class="adminpage_replybtn" type="submit" value="답변보내기">';
											text += '</table>';
											text += '</form>';
											
											$('#questionAdminform').html(text);
											var questionid =$("#question_id").html();
									        
									        var questioncontent =$("#question_content").html();

									        var re = "[답변]";
									        
									        $("#question_id_re").html(questionid); 
									        $("#question_content_re").html(re.concat(questioncontent));
									        $("#questionId").val($.trim(questionid));
									        $("#questiontitle").val($.trim(re.concat(questioncontent)));
										},
										error:function(){
											alert('error');
										}
										  
									  });
									});
									
								
								</script>
        

        
     
          <!-- 문의관리////////////-->
        <!-- 푸터////////////// -->
        <jsp:include page="/WEB-INF/views/layout/footer.jsp"/>
        <!-- //footer -->
    </div>
    

    <!-- script -->
  
   
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
    </script>
</body>
</html>