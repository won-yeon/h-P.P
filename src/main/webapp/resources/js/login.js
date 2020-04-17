$(document).ready(function(){
            $(".findid_layer").click(function(e){
                e.preventDefault();
                $("#findid_layer").css("display","block");
            });
            $("#findid_layer .find_id_close").click(function(e){
                e.preventDefault();
                $("#findid_layer").css("display","none");
            });
            //////////////////////
            $(".findid_result_layer").click(function(e){
            	e.preventDefault();
            	if($("#find_id").val()==""){
            		alert('이름을 입력하세요');
            		return false;
            	}else if($("#find_email").val()==""){
            		alert('이메일을 입력하세요');
            		return false;
            	}else{
	            	
	            	$.ajax({
	                    url: "login/findId",
	                    type: "POST",
	                    
	                    data: $("#form_find_id").serialize(),
	                    success: function(data){
	                    	$("#findid_result_layer").css("display","block");
	                        $("#findid_layer").css("display","none")
	                        $('#findIdResult1').text(data);
	                    },
	                    error: function(){
	                        alert("error");
	                    }
	                });
            	}
                
            });
            $("#findid_result_layer .find_id_result_close").click(function(e){
                e.preventDefault();
                $("#findid_result_layer").css("display","none");
            });
            /////////////////////
            
            $(".findpw_layer").click(function(e){
                e.preventDefault();
                $("#findpw_layer").css("display","block");
                $("#findid_result_layer").css("display","none");
                $("#find_id").val("");
                $("#find_email").val("")
            });
            $("#findpw_layer .find_pw_close").click(function(e){
                e.preventDefault();
                $("#findpw_layer").css("display","none");
            });
            /////////////////////////
            $(".findpw_result_layer").click(function(e){
                e.preventDefault();
                if($("#find_pw_id").val()==""){
                	
            		alert('아이디를 입력하세요');
            		return false;
            	}else if($("#find_pw_name").val()==""){
            		alert('이름을 입력하세요');
            		return false;
            	}else if($("#find_pw_email").val()==""){
            		alert('이메일을 입력하세요');
            		return false;
            	}else{
            	
            	$.ajax({
                    url: "login/findPw",
                    type: "POST",
                    
                    data: $("#find_pw_form").serialize(),
                    success: function(data){
                    	$('#findPwReuslt').text(data);
                    	$("#findpw_result_layer").css("display","block");
                        $("#findpw_layer").css("display","none");
                    },
                    error: function(){
                        alert("error");
                    }
                });
            	}
                
                
            });
            $("#findpw_result_layer .find_pw_result_close").click(function(e){
                e.preventDefault();
                $("#findpw_result_layer").css("display","none");

                

            });
        });