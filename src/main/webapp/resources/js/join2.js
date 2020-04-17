


function selectEmail(ele){ 
            var $ele = $(ele); 
            var $email2 = $('input[name=email2]'); // '1'인 경우 직접입력 
            if($ele.val() == "1"){ 
                $email2.attr('readonly', false); 
                $email2.val(''); } 
            else { 
                $email2.attr('readonly', true); 
                $email2.val($ele.val()); 
                } 
            }
            
            $(document).ready(function(){
                // 이메일정규식
                $("input[name=email2]").change(function(){
                    var regType2 =/^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
                     if( !regType2.test( $("input[name=email2]").val() ) ) {
                        $("input[name=email2]").val('');
                        alert('잘못된 이메일 형식입니다. 다시 입력하세요');
                            return;
                        }
                    });

                 //아이디 정규식
                $("#joinid_check").change(function(){
                    var regType =  /^[A-Za-z0-9]{5,12}$/g; 
                    if( !regType.test( $("input[id=joinid_check]").val() ) ) {
                        $("input[id=joinid_check]").val('');
                        alert('잘못된 아이디 형식입니다.')
                        return;
                    }
                });

                //비밀번호 정규식
                $("#joinpw_check").change(function(){
                    
                    var regex = /^.*(?=^.{8,15}$)(?=.*\d)(?=.*[a-zA-Z])(?=.*[!@#$%^&+=]).*$/g;


                    if( !regex.test( $("input[id=joinpw_check]").val() ) ) {
                        $("input[id=joinpw_check]").val('');
                        alert('비밀번호를 조건에 맞게 입력하세요');
                        
                        return;
                    }
                });
                //비밀번호 확인 
                $("#joinpw_check2").change(function(){
                  
                    if($("input[id=joinpw_check]").val() ==  $("input[id=joinpw_check2]").val()  )  {}
                    else{
                        alert('비밀번호를 다시 확인해주세요');
                        $("input[id=joinpw_check2]").val('') ;
                        
                    }
                });
               
                $("#joinid_check").keydown(function(){
                    $("#idcheck_dupl").html('아이디중복확인')
                });

                $("#idcheck_dupl").click(function(e){
                	e.preventDefault();
                	
                		 
                		
	                    $.ajax({
		                    url: "checkId",
		                    type: "POST",
		                    data: {ckid: $('#joinid_check').val()},
		                    success: function(data){
		                    	
		                    	$('#idcheck_dupl').html(data);
		                    },
		                    error: function(){
		                        alert("error");
		                    }
		                });
                	
                  
               
            
                });
                //가입신청 빈칸 확인, 중복체크 확인
                $("#join2_form").click(function(e){
                    e.preventDefault();
                  
                    if($("input[name=userName]").val()==""){
                        alert('성명을 입력하세요');
                        $("input[name=userName]").focus();
                    }else if($("input[name=email1]").val()==""){
                        alert('이메일를 입력하세요');
                        $("input[name=email1]").focus();
                    }else if($("input[name=email2]").val()==""){
                        alert('이메일를 입력하세요');
                        $("input[name=email2]").focus();
                    }else if($("input[name=phone1]").val()==""){
                        alert('휴대전화 번호를 입력하세요');
                        $("input[name=phone1]").focus();
                    }else if($("input[name=phone2]").val()==""){
                        alert('휴대전화 번호를 입력하세요');
                        $("input[name=phone2]").focus();
                    }else if($("input[name=phone3]").val()==""){
                        alert('휴대전화 번호를 입력하세요');
                        $("input[name=phone3]").focus();
                    }else if($("input[name=userId]").val()==""){
                        alert('아이디를 입력하세요');
                        $("input[name=userId]").focus();
                    }else if($("input[name=userPw]").val()==""){
                        alert('비밀번호를 입력하세요');
                        $("input[name=userPw]").focus();
                    }else if($("input[name=joinpw2]").val()==""){
                        alert('비밀번호 확인 입력하세요');
                        $("input[name=joinpw2]").focus();
                    }else if($("#idcheck_dupl").text()=='아이디중복확인'){
                        alert('아이디 중복확인을 하십시오');
                        $("#idcheck_dupl").focus();
                    }else if($("#idcheck_dupl").text()=='아이디사용중'){
                        alert('아이디 중복확인을 하십시오');
                        $("#idcheck_dupl").focus();
                    }else{
                    	$("#joinForm").submit();
                    }
                         
              });


         

            });

