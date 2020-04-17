<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>hoterProject_home</title>
    <!--style-->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/css/reset.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/css/jquery-ui.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/css/Pstyle.css?ver=1">
    
   
    <link href="https://fonts.googleapis.com/css?family=Nanum+Gothic" rel="stylesheet">
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>
<body>
<div class="wrap">
    <!-- ////////////////////헤더 -->
    	<jsp:include page="/WEB-INF/views/layout/header.jsp"/>  

    <!-- 예약 -->
    <div style="height: 50px;"></div>
     <div class="container">
        <div class="reserv_top">
            <div class="reserv_top_process">
                <div id="Rprocess1" class="reserv_top_process1"><span>1</span></div>
                <div id="Rprocess2"><span>2</span></div>
                <div id="Rprocess3"><span>3</span></div>
            </div>
            <div class="reserv_top_context">
                <span>날짜, 인원 선택</span>
            </div>
        </div>
        
        <!-- 1111111111111111111111111 -->

        <div class="r1" id="r1">
            <hr >
            <div style="height: 40px;"></div>
            <div class="resvHotel">
                <div class="resvHotel_in">
                    <ul class="ul_first">
                            <li class="re_li"><span>체크인</span></li>
                            <li class="re_li2">
                                <input type="text" id="check_in"onchange="calculday2();" style="width: 78px;" readonly/>
                            </li>
                        </ul>
                    <ul>
                        <li class="re_li"><img class="re_li_img"src="${pageContext.request.contextPath }/resources/img/moon.png" alt="" height="20px" width="20px"></li>
                        <li class="re_li2" id="calculDate"></li>
                    </ul>
                    <ul>
                        <li class="re_li"><span>체크아웃</span></li>
                        <li class="re_li2">
                            <input type="text" id="check_out" onchange="calculDay();inputform();" style="width: 78px;" readonly/>
                           
                        </li>
                    </ul>
                    <ul style="display:none;">
                        <li class="re_li"><span>객실</span></li>
                        <li class="re_li2">
                            <select name="" id="rselect" onchange="roomNumCk();">
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                            </select>
                        </li>
                    </ul>
                    <ul>
                        <li class="re_li"><span>인원수</span></li>
                        <li class="re_li2">
                            <select name="" id="nselect" onchange="roomNumCk();inputform();">
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                                <option value="4">4</option>
                            </select>
                        </li>
                    </ul>
                    <ul class="ul_last">
                        <a id="find_List" href="#"><img src="${pageContext.request.contextPath }/resources/img/serch.png" alt="" width="130px" height="60px" ></a>
                    </ul>
                </div>
                <hr >
                <div style="height: 20px;"></div>
                <div class="reserv_list">
                    <ul id="listResult" >
                      	
                    </ul>
                   
                    <script>
                    $('#find_List').click(function(e){
                    		
							var form ={
									checkInDate : $('#check_in').val(),
									checkOutDate : $('#check_out').val(),
									roomNum :$('#rselect').val(),
									CustomNum : $('#nselect').val()
									
							}
                        $.ajax({
                            url: "roomListCheck",
                            type: "POST",
                            data: form,
                            success: function(data){
                             	var show="";
                            	
                               	$.each(data,function(i){
                               		show += '<li style="height: 180px;">'; 
                                    show += '<div class="reserv_list_img"><img style="width: 300px; height: 160px;" src="${pageContext.request.contextPath }/resources/img/'+data[i].roomGrade+'/'+data[i].roomGrade+'.jpg" alt=""></div>'; 
                                    show += '<div class="reserv_list_tit"><a href="#" onclick="tt(event);reservFun1()" >'+data[i].roomGrade+'/'+data[i].roomType+'</a></div>';
                                    show += '<div class="reserv_list_date"></div>'
                                    show += '<div class="reserv_list_summery"><span>2020-11-28 ~ 2021-12-31 할인, point 3% 적립</span></div>';
                                    show += '</li>';
                                    
                                    
                               	});
                                $("#listResult").html(show); 
                            	
                             
                            },
                            error: function(){
                                alert("error");
                            }
                        });
                    });

                    </script>
                    
                </div>
            </div>
        </div>
        <!-- 222222222222222222222222222222222 -->
        <div class="r2" id="r2">
            <div class="reservoption">
                <div class="reservoptionTop">
                    <span>객실</span>
                </div>
                <div class="reservoptionright">
                    <div class="reservoptionright_1"><span>추가 요청 사항</span></div>
                    <textarea name="" id="extratext" cols="70" rows="6" onchange="inputform()"></textarea>
                    <br><span>※ 전망은 체크인 당일 사정에 따라 달라질 수 있습니다.</span>
                </div>
                <div class="reservoptionleft1">
                    <div class="reservoptionleft1_1"><span><strong>옵션 사항</strong></span></div>
                    <div class="reservoptionleft1_2">
                        <div class="reservoptionleft1_2_1"><span>조식 / 35,000원</span></div>
                        <div class="reservoptionleft1_2_2">
                            <div class="reservoptionleft1_2_3">
                                <select name="" id="breakfast" onchange="inputform();breakfast();calprice();">
                                    <option value="0">0명</option>
                                    <option value="1">1명</option>
                                    <option value="2">2명</option>
                                    <option value="3">3명</option>
                                    <option value="4">4명</option>
                                    <option value="5">5명</option>
                                    <option value="6">6명</option>
                                    <option value="7">7명</option>
                                    <option value="8">8명</option>
                                    <option value="9">9명</option>
                                    <option value="10">10명</option>
                                    <option value="11">11명</option>
                                    <option value="12">12명</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="reservoptionleft1_2">
                        <div class="reservoptionleft1_2_1"><span>엑스트라 베드 / 30,000원</span></div>
                        <div class="reservoptionleft1_2_2">
                            <div class="reservoptionleft1_2_3">
                                <select name="" id="extrabed" style="width: 58px; height: 25px;" onchange="inputform();extrabed();calprice();">
                                    <option value="0">갯수</option>
                                    <option value="1">1개</option>
                                    
                                </select>
                            </div>
                        </div>
                    </div>
                   
                    <div class="reservoptionleft1_5">
                        <span>
                            ※ 위 요금에서 부가가치세 10% 및 봉사료 10%(합계 21%)가 부과됩니다. <br>
                            ※ 위 조식 요금은 성인 투숙객에 한하여 할인이 적용된 금액이며 체크인 이후 조식 추가 요청 시에는 정상요금 64,000원(부가가치세 및 봉사료 포함)으로 이용 가능합니다.<br>
                            ※ 성인 : 만 13세 이상 / 어린이 : 37개월 이상 ~ 만 12세 이하<br>
                            ※ 조식이 포함된 패키지를 예약하실 경우 추가 인원에 대한 조식만 선택해주시기 바랍니다.<br>
                            ※ 37개월 미만의 유아 동반 시 조식에 대한 요금은 무료입니다.<br>
                        </span>
                    </div>
                </div>
                <div class="reservoptionleft2">
                    <div class="reservoptionleft2_1">
                        <span>체크인 예정 시간</span>
                    </div>
                    <div>
                        <select name="" id="check_intime">
                            <option value="15">15:00~16:00</option>
                            <option value="16">16:00~17:00</option>
                            <option value="17">17:00~18:00</option>
                            <option value="18">18:00~19:00</option>
                            <option value="19">19:00~20:00</option>
                            <option value="20">20:00~21:00</option>
                            <option value="21">21:00~22:00</option>
                            <option value="22">22:00~23:00</option>
                        </select>
                    </div>
                    <div class="reservoptionleft2_2">
                        <span>
                            ※ 선택 가능한 시간대 외에 체크인하실 경우 별도의 요금이 추가될 수 있으며, 관련 문의사항은 객실예약(02-0000-0000)으로 연락해 주시기 바랍니다. 
                        </span>
                    </div>
                </div>
            </div>
            <div class="reservCancle">
                <div class="reservCancleTop">
                    <span>취소 및 환불 규정</span>
                </div>
                <div class="reservCancleContext">
                    <span>
                        <p><strong>취소/변경 및 노쇼(No-show) 안내</strong></p> <br>
                        숙박 예정일 1일 전 18시까지는 위약금 없이 취소 및 변경이 가능합니다. <br>
                        숙박 예정일 1일 전 18시 이후 취소/변경 및 노쇼(No-show) 발생 시,<br>
                        - 성수기(5월~10월, 12월 24일~31일) : 최초 1일 숙박 요금의 80%가 위약금으로 부과됩니다.<br>
                        - 비수기(성수기 외 기간) : 최초 1일 숙박 요금의 10%가 위약금으로 부과됩니다.<br>
                    </span>
                </div>           
                <div style="text-align: center; font-size: 23px; padding-top: 20px; color: rgb(134, 108, 82);">
                    요금 합계:<strong id="rrprice1">0</strong>
                </div>
                <div class="reservButtonOption">
                    
                    <a class="reservprevButton" onclick="reservFun3()" href="#">이전</a>
                    <a class="reservNextButton" onclick="reservFun2()" href="#">다음</a>
                </div>
                
            </div>
        </div>
        
    <form id="reservationLast" action="insertResrv" method="post">
        <!-- 333333333333333333333333333333333333 -->
        <div class="r3" id="r3" >
            <div class="reservationCharge">
                <div class="reservationChargeTop">
                    <span>정보입력</span>
                </div>
                <div class="reservationChargeRight">
                   <div class="reservChargePoint1"><span>THE HOTEL seoul 포인트</span></div>
        
        
        
                   <div class="reservChargePoint2">
                       <table >
                           <tr>
                               <th>현재 보유 포인트</th>
                               <td><div id="pointck1" style="display: inline;">${sessionScope.LoginUser.remainPoint }</div><span style="color: brown; font-weight: bold;"> P</span></td>
                           </tr>
                           <tr>
                                <th>사용 포인트</th>
                                <td style="padding-left: 4px;">
                                    <input name="point" type="text" id="pointck2"value="0" onchange="ckPoint();subpoint();" onKeyup="this.value=this.value.replace(/[^0-9]/g,'');">
                                    <input type="checkbox" id="potinckb" onchange="subpoint()"><span> 사용하기</span>
                                </td>
                            </tr>
                            <tr>
                                <th>사용시 결제 요금</th>
                                <td><div id="sprice_point" style="display: inline;"></div><span style=" font-weight: bold;"> 원</span></td>
                            </tr>
                       </table>
                   </div>
                   
                </div>
                
                <div class="reservationChargeleft1">
                    <div class="reservChargePoint1">
                        <span>신용카드정보</span>
                    </div>
                    <div class="reservChargeCard1">
                        <table>
                            <tr>
                                <th><em>*</em> 카드종류</th>
                                <td>
                                    <select name="card" id="cards" onchange="inputform();">
                                        <option value="">선택</option>
                                        <option value="samsung">삼성카드</option>
                                        <option value="hyundai">현대카드</option>
                                        <option value="kookmin">국민카드</option>
                                        <option value="sinhan">신한카드</option>
                                        <option value="lotte">롯데카드</option>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <th><em>*</em> 카드번호</th>
                                <td>
                                    <input name="PayList[0].cardNo" id="rcardn1" style="width: 65px; font-size: 14px;" type="text" maxlength="4"  onKeyup="this.value=this.value.replace(/[^0-9]/g,'');"/>-
                                    <input name="PayList[1].cardNo" id="rcardn2" style="width: 65px; font-size: 14px;" type="password" maxlength="4"  onKeyup="this.value=this.value.replace(/[^0-9]/g,'');"/>-
                                    <input name="PayList[2].cardNo" id="rcardn3" style="width: 65px; font-size: 14px;" type="password" maxlength="4"  onKeyup="this.value=this.value.replace(/[^0-9]/g,'');"/>-
                                    <input name="PayList[3].cardNo" id="rcardn4" style="width: 65px; font-size: 14px;" type="password" maxlength="4"  onKeyup="this.value=this.value.replace(/[^0-9]/g,'');"/>
                                </td>
                            </tr>
                            <tr>
                                <th><em>*</em> 유효기간</th>
                                <td>
                                    <select name="cardEndMonth" id="cardm">
                                        <option value="0">월</option>
                                        <option value="1">1</option>
                                        <option value="2">2</option>
                                        <option value="3">3</option>
                                        <option value="4">4</option>
                                        <option value="5">5</option>
                                        <option value="6">6</option>
                                        <option value="7">7</option>
                                        <option value="8">8</option>
                                        <option value="9">9</option>
                                        <option value="10">10</option>
                                        <option value="11">11</option>
                                        <option value="12">12</option>
                                    </select>
                                    <select id="cardy" name="cardEndYear">
                                        <option value="0">년</option>
                                        <option value="2020">2020</option>
                                        <option value="2021">2021</option>
                                        <option value="2022">2022</option>
                                        <option value="2023">2023</option>
                                        <option value="2024">2024</option>
                                        <option value="2025">2025</option>
                                        <option value="2026">2026</option>
                                        <option value="2027">2027</option>
                                        <option value="2028">2028</option>
                                        <option value="2029">2029</option>    
                                        <option value="2030">2030</option>    
                                    </select>
                                </td>
                            </tr>
                        </table>
                        <div class="reservChargeCard2">
                            <span>※ 신용카드 정보는 고객님의 투숙을 개런티하기 위한 용도 외에는 어떤 목적으로도 사용되지 않으며, 체크카드 및 일부 신용 카드의 경우 사용이 제한 될 수 있습니다.</span>
                        </div>
                    </div>
                </div>
            </div>
            
            
            <div class="reservCancle">
                <div class="reservCancleTop">
                    <span>취소 및 환불 규정</span>
                </div>
                <div class="reservCancleContext">
                    <span>
                        <p><strong>취소/변경 및 노쇼(No-show) 안내</strong></p> <br>
                        숙박 예정일 1일 전 18시까지는 위약금 없이 취소 및 변경이 가능합니다. <br>
                        숙박 예정일 1일 전 18시 이후 취소/변경 및 노쇼(No-show) 발생 시,<br>
                        - 성수기(5월~10월, 12월 24일~31일) : 최초 1일 숙박 요금의 80%가 위약금으로 부과됩니다.<br>
                        - 비수기(성수기 외 기간) : 최초 1일 숙박 요금의 10%가 위약금으로 부과됩니다.<br>
                    </span>
                </div>           
                <div style="text-align: center; font-size: 23px; padding-top: 20px; color: rgb(134, 108, 82);">
                    요금 합계:<strong id="rrprice2">0</strong>
                </div>
                <div class="reservButtonOption">
                    
                    <a class="reservprevButton" onclick="reservFun4()" href="#">이전</a>
                    <input class="reservNextButton" type="button" id="submitReserv"value="다음">
                </div>
                  <div class="reservationData" style="">
                     <input name="userId" type="text" value="${sessionScope.LoginUser.userId}">
                     <input name="userName" type="text" value="${sessionScope.LoginUser.userName}">
                     <input name="checkInDate" id="reservation_ckin" type="text" ><!-- 체크인 -->
                     <input name="checkOutDate" id="reservation_ckout" type="text"><!-- 체크아웃 -->
                     <input name="roomNum" id="reservation_roomnum" type="text"  ><!-- 객실 -->
                     
                     <input name="userNum" id="reservation_personnum" type="text"><!-- 인원수 -->
                     <input name="roomGrade" id="reservation_roomgrade" type="text"><!-- 방Type -->
                     <input name="roomType" id="reservation_roomtype" type="text"><!-- 방Type -->
                     
                     <input name="breakFast" id="reservation_extbed" type="text"><!-- 추가배드 -->
                     <input name="extraBed" id="reservation_bfast" type="text"><!-- 조식 -->
                     <input name="memo" id="reservation_exttext" type="text"><!-- 추가요청사항 -->
                     <input name="checkInTime" id="reservation_ckintime" type="text"><!-- 체크인 시간 -->
                     <input name="price" id="result_price" type="text"	>
                     
                     
                   
                  </div>
                 
               
                          
            </div>
        </div>
        </form> 
    </div>
   
   <script>
   
   $('#submitReserv').click(function(){
	   var month = $('#cardm').val();
	   var year = $('#cardy').val();
	   var cardNo1 = $('#rcardn1').val();
	   var cardNo2 = $('#rcardn2').val();
	   var cardNo3 = $('#rcardn3').val();
	   var cardNo4 = $('#rcardn4').val();
	   var cardSort = $('#cards').val();
	   
		if(cardSort==''){
	   		alert('카드종류를 선택하세요');
	   		
	   		return;
	   	}
		
		if(cardNo1==''||cardNo2==''||cardNo3==''||cardNo4==''){
	   		alert('카드번호를 입력하세요');
	   		
	   		return;
	   	}
	   
	 	if(month==0 || year ==0){
	   		alert('유효기간을 입력하세요');
	   		
	   		return ;
	   	}
	   	
	   	
	   	
	   
	   	
	   	$('#reservationLast').submit();
  
   })
   
   
   </script>

    <!-- 예약 -->


     <!-- 푸터////////////// -->
    <jsp:include page="/WEB-INF/views/layout/footer.jsp"/>  
     <!-- //footer -->
</div>

<script src="${pageContext.request.contextPath }/resources/js/reservation.js?ver=3"></script>
<script src="${pageContext.request.contextPath }/resources/js/jquery-ui.min.js"></script>

</body>
</html>