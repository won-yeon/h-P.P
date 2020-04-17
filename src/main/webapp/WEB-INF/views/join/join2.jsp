<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/css/reset.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/css/Pstyle.css">
    <link href="https://fonts.googleapis.com/css?family=Nanum+Gothic" rel="stylesheet">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script>
        function dateSelect(docForm,selectIndex) {
          watch = new Date(docForm.year.options[docForm.year.selectedIndex].text, docForm.month.options[docForm.month.selectedIndex].value,1);
          hourDiffer = watch - 86400000;
          calendar = new Date(hourDiffer);
      
          var daysInMonth = calendar.getDate();
              for (var i = 0; i < docForm.day.length; i++) {
                  docForm.day.options[0] = null;
              }
              for (var i = 0; i < daysInMonth; i++) {
                  docForm.day.options[i] = new Option(i+1);
          }
          document.form1.day.options[0].selected = true;
      }


function Today(year,mon,day){
       if(year == "null" && mon == "null" && day == "null"){       
       today = new Date();
       this_year=today.getFullYear();
       this_month=today.getMonth();
       this_month+=1;
       if(this_month <10) this_month="0" + this_month;
   
       this_day=today.getDate();
       if(this_day<10) this_day="0" + this_day;     
   }
   else{  
       var this_year = eval(year);
       var this_month = eval(mon); 
       var this_day = eval(day);
       }
   
    montharray=new Array(31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31); 
    maxdays = montharray[this_month-1]; 
  //아래는 윤달을 구하는 것
    if (this_month==2) { 
        if ((this_year/4)!=parseInt(this_year/4)) maxdays=28; 
        else maxdays=29; 
    } 
   
   document.writeln("<select name='year' size=1 onChange='dateSelect(this.form,this.form.month.selectedIndex);'>");
       for(i=this_year-100;i<this_year+1;i++){//현재 년도에서 과거로 5년까지 미래로 5년까지를 표시함
           if(i==this_year) document.writeln("<OPTION VALUE="+i+ " selected >" +i); 
           else document.writeln("<OPTION VALUE="+i+ ">" +i); 
       }    
   document.writeln("</select>년");      
  
   
   document.writeln("<select name='month' size=1 onChange='dateSelect(this.form,this.selectedIndex);'>");
       for(i=1;i<=12;i++){ 
           if(i<10){
               if(i==this_month) document.writeln("<OPTION VALUE=0" +i+ " selected >0"+i); 
               else document.writeln("<OPTION VALUE=0" +i+ ">0"+i);
           }         
           else{
               if(i==this_month) document.writeln("<OPTION VALUE=" +i+ " selected >" +i);  
               else document.writeln("<OPTION VALUE=" +i+ ">" +i);  
           }                     
      }         
   document.writeln("</select>월");
   
   document.writeln("<select name='day' size=1>");
       for(i=1;i<=maxdays;i++){ 
           if(i<10){
               if(i==this_day) document.writeln("<OPTION VALUE=0" +i+ " selected >0"+i); 
               else document.writeln("<OPTION VALUE=0" +i+ ">0"+i); 
           }
           
           else{
               if(i==this_day) document.writeln("<OPTION VALUE=" +i+ " selected } >"+i); 
               else document.writeln("<OPTION VALUE=" +i+ ">" +i);  
           }                     
      }         
   document.writeln("</select>일"); 
     
  }
 </script>
    
</head>
<body>
    <div class="wrap">
        <jsp:include page="/WEB-INF/views/layout/header.jsp"/>   
  
        <!-- 회원가입2 -->
        <div class="container">
            <div class="join_container">
                <div class="join_top_text"><span class="span1">THE HOTEL   </span> <span class="span2">SEOUL     </span><span class="span3">가입</span></div>
                <div class="join_top">
                    <div class="join_top1"><span class="join_top_sapn">약관동의</span></div>
                    <div class="join_top2" style="border-bottom: 4px solid rgb(134, 108, 82);"><span class="join_top_sapn">회원정보 입력</span></div>
                    <div class="join_top3"><span class="join_top_sapn">가입완료</span></div>
                </div>
                <div class="login_secondform_text1"><h1>회원정보입력</h1></div>
                <hr  style="height: 2px; background-color: rgb(88, 75, 62);">
                <div class="join_text11">
                    <div class="join_text1"><span>기본 입력</span></div>
                    <div class="join_text2"><em>*</em> 표시 필수 입력사항</div>
                </div>
                <form action="/hotel/join/joinInsert" id="joinForm" name="form1" method="post">
                    <table>
                        <tr>
                            <th><em>*</em> 성명</th>
                            <td>
                                <select name="userGender" id="ge">
                                    <option value="남자">남자</option>
                                    <option value="여자">여자</option>
                                </select>
                                
                                <input type="text" name="userName" onKeyup="this.value=this.value.replace(/[^가-힣]+$/g,'');" >
                            </td>
                        </tr>
                        <tr>
                            <th><em>*</em> 생년월일</th>
                            <td>
                                <script> Today('null','null','null'); </script>
                            </td>
                        </tr>
                        <tr>
                            <th><em>*</em> 이메일</th>
                            <td>
                                <input  name="email1" type="text" onKeyup="this.value=this.value.replace(/[^a-zA-Z0-9]+$/g,'');"> @ <input name="email2" type="text"> 
                                <select name="" onChange="selectEmail(this)"> 
                                    <option value="1" selected>직접입력</option> 
                                    <option value="naver.com">naver.com</option> 
                                    <option value="gmail.com">gmail.com</option> 
                                    <option value="hanmail.com">hanmail.com</option>
                                    
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <th><em>*</em> 휴대전화</th>
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
                                <input type="text"name="phone2" style="width: 50px;" maxlength="4"  onKeyup="this.value=this.value.replace(/[^0-9]/g,'');"/>
                                -
                                <input  type="text"name="phone3" style="width: 50px;" maxlength="4"  onKeyup="this.value=this.value.replace(/[^0-9]/g,'');"/>
                                
                            </td>
                        </tr>
                        <tr>
                            <th>자택주소</th>
                            <td style="position: relative;">
                                <input type="text" name="Addr1" id="sample2_postcode" placeholder="우편번호" readonly>
                                <input type="button" onclick="sample2_execDaumPostcode()" value="우편번호 찾기" readonly><br>
                                <input style="width: 300px;" name="Addr2" type="text" id="sample2_address" placeholder="주소" ><br>
                                <input style="position: absolute; top: 26px; left: 330px; width: 200px;" name="Addr3" type="text" id="sample2_detailAddress" placeholder="상세주소">
                                
                            </td>
<div id="layer" style="display:none;position:fixed;overflow:hidden;z-index:1;-webkit-overflow-scrolling:touch;">
<img src="//t1.daumcdn.net/postcode/resource/images/close.png" id="btnCloseLayer" style="width:27px; height:27dpx; cursor:pointer;position:absolute;right:-3px;top:-3px;z-index:1" onclick="closeDaumPostcode()" alt="닫기 버튼">
</div>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
   
    var element_layer = document.getElementById('layer');

    function closeDaumPostcode() {

        element_layer.style.display = 'none';
    }

    function sample2_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                var addr = ''; 
                var extraAddr = ''; 
                if (data.userSelectedType === 'R') { 
                    addr = data.roadAddress; // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }  
                if(data.userSelectedType === 'R'){
                    
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                   
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                   
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
               }
				document.getElementById('sample2_postcode').value = data.zonecode;
                document.getElementById("sample2_address").value = addr;
                document.getElementById("sample2_detailAddress").focus();
				element_layer.style.display = 'none';
            },
            width : '100%',
            height : '100%',
            maxSuggestItems : 5
        }).embed(element_layer);


        element_layer.style.display = 'block';

        
        initLayerPosition();
    }

    
    function initLayerPosition(){
        var width = 300; 
        var height = 400;
        var borderWidth = 5; 
		element_layer.style.width = width + 'px';
        element_layer.style.height = height + 'px';
        element_layer.style.border = borderWidth + 'px solid';
        element_layer.style.left = (((window.innerWidth || document.documentElement.clientWidth) - width)/2 - borderWidth) + 'px';
        element_layer.style.top = (((window.innerHeight || document.documentElement.clientHeight) - height)/2 - borderWidth) + 'px';
    }
</script>
                        </tr>
                    </table>
                    <div class="join_text1">
                        <span>웹사이트 아이디 비밀번호 입력</span>
                    </div>
                    <table>
                        <tr>
                            <th><em>*</em> 아이디</th>
                            <td>
                                <input type="text" id="joinid_check" name="userId">
                                <a href="#" id="idcheck_dupl" style=" font-size: 12px; background-color: rgb(134, 108, 82); color: white; padding: 4px 2px;">
                                   아이디중복확인
                                </a>
                                <span>5~12자 이내 영문 또는 영문/숫자 조합</span>
                            </td>
                        </tr>
                        <tr>
                            <th><em>*</em> 비밀번호</th>
                            <td>
                                <input  type="password" id="joinpw_check" name="userPw">
                                <span>8~15자 이내 영문/숫자/특수문자 조합</span>
                            </td>
                        </tr>
                        <tr>
                            <th><em>*</em> 비밀번호 확인</th>
                            <td><input type="password"  id="joinpw_check2" name="joinpw2"></td>
                        </tr>
                    </table>
                    <div class="joint_textL">
                    ※ The Hotel seoul 가입 고객께는 모바일 카드가 발급되며 혜택 및 약관은 홈페이지에서 확인 가능합니다.
                    </div>
                    <div class="joint_textL2">
                        <input type="submit"  id="join2_form" value="가입신청" >
                   
                    </div>
                </form>
            </div>
        </div>
    </div>

    
   <script src="${pageContext.request.contextPath }/resources/js/join2.js?ver=1"></script>
 
    <jsp:include page="/WEB-INF/views/layout/footer.jsp"/>   
</body>
</html>