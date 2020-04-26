<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>
<body>
	
<input type="text" name="userId" id="test">
<a id="btn" href="#">체크</a>

<hr>
<table>
	<tr class="parent" >
        <td class="item1">1234</td>
        <td class="item">{Qlist.userId }</td>
        <td class="item">{Qlist.questionType }</td>
        <td class="item">{Qlist.questionTitle }</td>
        <td class="item">{Qlist.replyVar }</td>
        <td class="item">{Qlist.regDate }</td>
        <td><input class="item1" type="button" value="질문보기" style=" padding: 4px 9px; background-color: rgb(88, 72, 56); ; color: white; border: 0;"></td>
    </tr>
</table>	
<script>
$(".item1").click(function(e) {
	 $.ajax({
		url:"questionContent",
		type:"POST",
		date: {no :$('#test').val()},
		success:function(data){
				
				alert(data);
			},
		error:function(){
			alert('error');
		}
		  
	  });
	});

$(".item1").click(function(e){
	$.ajax({
		url : "questionContent",
		type:"POST",
		data: {no :$('#test').val()},
		success:function(data){
			
			alert(data);
		},
		error:function(){
			alert("에러");
		}
	});
});

 	$("#btn").click(function(e){
 		e.preventDefault();
 		
 		
 		$.ajax({
 			url : "checkId",
 			type:"POST",
 			data: {userId :$('#test').val()},
 			success:function(data){
 				
 				alert(data);
 			},
 			error:function(){
 				alert("에러");
 			}
 		});
 	});
      
  
 
</script>

      
      
      
      
      
      
      
      
      
      
      
      
      
</body>
</html>