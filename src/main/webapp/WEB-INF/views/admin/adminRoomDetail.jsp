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
    <link href="https://fonts.googleapis.com/css?family=Nanum+Gothic" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>
<body>

    <div id="wrap">
        <!-- ////////////////////헤더 -->
        <jsp:include page="/WEB-INF/views/layout/header.jsp"/>
        <!-- ////////////////헤더 -->
        <!-- 객실관리////////////-->
        <div class="container">
            
            <div style="height: 40px; padding: 30px 0;">
                <span style="font-size: 30px; color: rgb(121, 98, 76);">객실관리</span>
            </div>
            <div class="adminRoomDetail">
            <form id="updateFormS" method="POST" action="updateState">
                <table>
                    <tr>
                        <th>방번호</th><td>${vo.roomNO }호</td>
                        <th>등급</th><td>${vo.roomGrade }</td>
                        <th>타입</th><td>${vo.roomType }</td>
                        <th>가격</th><td>${vo.price }원</td>
                        <th>상태</th><td>${vo.state }</td>
                    </tr>
                  
                    <tr>
                   	 
                        <th>상태변경</th>
                        <td>
                            <div >
                            	<input style="display:none;" name="roomNO" value="${vo.roomNO }" type="text" readonly/>
                                <select value="${vo.state }" name="state" >
	                                <option value="사용가능">사용가능</option>
                                    <option value="청소중">청소중</option>
                                </select>
                                
                            </div>
                          
                        </td>
                        <c:if test="${empty Nvo.no }">
	                        <th>변경</th>
	                        <td><input id="changeState" style=" margin-left: 20px; padding: 4px 12px; background-color: rgb(88, 72, 56);  color: white; border: 0;" type="button" value="변경"></td>
                        </c:if>
                    </tr>
                </table>
			</form>       
            </div>
				<script>
					$("#changeState").click(function(){
						
						$.ajax({
							
							url:'updateState',
							type:'post',
							data:$('#updateFormS').serialize(),
							success:function(data){
								if(data==true){
									alert('성공');
								}
							}
						})
					});
				</script>            
            
            <!-- /////////////예약중 -->
            <c:if test="${Rvo.isCancled eq 0}">
            
            	<div style="height: 40px;"></div>
		           <div style="font-size: 24px; color: rgb(121, 98, 76); padding: 12px 0;"  >
		       			        예약 정보
		           </div>
			</c:if>
			
			<c:if test="${Rvo.isCancled eq 2}">
            
            	<div style="height: 40px;"></div>
		           <div style="font-size: 24px; color: rgb(121, 98, 76); padding: 12px 0;"  >
		       			         사용 중(reserved)
		           </div>
			</c:if>
			
			<c:if test="${Rvo.isCancled eq 0}">
		           <table style="width: 1200px; border-collapse: collapse; ">
		               <tr>
		                   <th>예약번호</th><td>${Rvo.reservNo }</td>
		                   <th>아이디</th><td >${Rvo.userId }</td>
		                   <th>예약한날짜</th><td>${Rvo.reservRegDate }</td>
		                   
		               </tr>
		               <tr>
		                   <th>체크인</th><td>${Rvo.checkInDate }</td>
		                   <th>체크아웃</th><td colspan="3">${Rvo.checkOutDate }</td>
		                   
		               </tr>
		               <tr>
		            	   	<th>방번호</th><td>${Rvo.roomNo }</td>
		                   <th>방 등급</th><td>${vo.roomGrade }</td>
		                   <th>방 타입</th><td >${vo.roomType }</td>
		                   
		                   
		               </tr>
		               <tr >
		             	  <th>결제금액</th><td>${Rvo.price }</td>
		                   <th>사용포인트</th><td>${Rvo.point }</td>
		                   <th>총 금액</th><td>${Rvo.price + Rvo.point }</td>
		                </tr >
		               <tr >
		                   <th>option</th><td colspan="5">엑스트라 배드, 조식 3인</td>
		               </tr>
		               <tr style="height:70px;">
		                   <th style="width: 120px;">추가요청사항</th><td  colspan="5" style="width: 760px;" >땅콩 알러지있음 조식시 신경 써주세여 땅콩 알러지있음 조식시 신경 써주세여땅콩 알러지있음 조식시 신경 써주세여땅콩 알러지있음 조식시 신경 써주세여땅콩 알러지있음 조식시 신경 써주세여땅콩 알러지있음 조식시 신경 써주세여땅콩 알러지있음 조식시 신경 써주세여땅콩 알러지있음 조식시 신경 써주세여땅콩 알러지있음 조식시 신경 써주세여땅콩 알러지있음 조식시 신경 써주세여 </td>
		               </tr>
		               <tr>
		                   <th>회원정보상세</th>
		                   <td ><div style=" display: inline;">	<a href=""  style=" padding: 4px 12px; background-color: rgb(88, 72, 56); ; color: white; border: 0;">회원정보</a></div></td>
		                   <th>예약 조정</th>
		                   <td ><div style=" display: inline;">	<a href=""  style=" padding: 4px 12px; background-color: rgb(88, 72, 56); ; color: white; border: 0;">예약취소</a></div></td>
		                   <th>체크인</th>
		                   <td><div style=" display: inline;">	<a href=""  style=" padding: 4px 12px; background-color: rgb(88, 72, 56); ; color: white; border: 0;">체크인</a></div></td>
		               </tr>
		           </table>
		           </c:if>
		           <div style="height: 80px;"></div>
            
            
            
            <!-- /////////////예약중 -->

            <!-- //////////사용가능 -->
			<c:if test="${empty Rvo.reservNo&& empty Nvo.no }">
            <div style="font-size: 24px; color: rgb(121, 98, 76); padding: 12px 0;"  >
                사용 가능
            </div>
		<form method="post" action="nonReservCharge">  
            <table style="width: 1200px; border-collapse: collapse; ">
               <tr>
                   <th>방번호</th><td>${vo.roomNO }호</td>
                   <input type="text" name="roomNO" style="display:none" value="${vo.roomNO }">
                   <th>등급</th><td>${vo.roomGrade }</td>
                   <th>타입</th><td>${vo.roomType }</td>
               </tr>
               <tr>
                   <th>checkIn</th><td><input name="checkInDate" id="check_in" type="text" readonly></td>
                   <th>checkout</th><td><input name="checkOutDate" id="check_out" type="text" readonly></td>
                   <th>인원수</th>
                   <td>
                        <select name="userNum" id="">
                            <option value="1">1명</option>
                            <option value="2">2명</option>
                            <option value="3">3명</option>
                            <option value="4">4명</option>
                        </select>
                    </td>

               </tr>
               <tr>
                   <th>조식</th>
                   <td>
                       <select name="breakfast" id="breakfast1" >
                       <option value="0">0명</option>
                           <option value="1">1명</option>
                           <option value="2">2명</option>
                           <option value="3">3명</option>
                           <option value="4">4명</option>
                       </select>
                   </td>
                   
                   </td>
                   <th>엑스트라 베드</th>
                   <td>
                   		<select name="extraBed" id= "extrabed1" >
                   		<option value="0">없음</option>
                   			<option value="1">1개</option>
                   		</select>
				   </td>
               </tr>
               <tr style="height:120px;">
                   <th>추가요청사항</th>
                   <td colspan="5"><textarea  style="resize: none;" name="memo"  cols="100" rows="5"></textarea></td>
               </tr>
					
               
               
            </table>
            <div style="font-size: 24px; color: rgb(121, 98, 76); padding: 12px 0;"  >
                결제
            </div>

            <div class="reservChargeCard1">
              
                <table style="width: 1200px; border-collapse: collapse; ">
                    
                    <tr>
                        <th> 카드종류</th>
                        <td>
                            <select name="card" >
                                <option value="samsung">삼성카드</option>
                                <option value="hyundai">현대카드</option>
                                <option value="kookmin">국민카드</option>
                                <option value="sinhan">신한카드</option>
                                <option value="lotte">롯데카드</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <th> 카드번호</th>
                        <td>
                            <input style="width: 65px; font-size: 14px;" name="PayList[0].cardNo" maxlength="4"  onKeyup="this.value=this.value.replace(/[^0-9]/g,'');" type="text">-
                            <input style="width: 65px; font-size: 14px;" name="PayList[1].cardNo" maxlength="4"  onKeyup="this.value=this.value.replace(/[^0-9]/g,'');" type="password">-
                            <input style="width: 65px; font-size: 14px;" name="PayList[2].cardNo" maxlength="4"  onKeyup="this.value=this.value.replace(/[^0-9]/g,'');" type="password">-
                            <input style="width: 65px; font-size: 14px;" name="PayList[3].cardNo" maxlength="4"  onKeyup="this.value=this.value.replace(/[^0-9]/g,'');" type="password">
                        </td>
                    </tr>
                    <tr>
                        <th> 유효기간</th>
                        <td>
                            <select name="cardEndMonth" >
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
                            <select name= "cardEndYear">
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
                    <tr>
                        
                        <th>금액</th><td><input type="text" name="price" value="${vo.price }" id="formPrice" readonly >원</td>
                    </tr>
                </table>

            <div style="text-align: center; padding-top: 30px;">
                <span style="font-size: 20px; color: rgb(88, 72, 56);">총결제 금액은 <strong id="lastPrice">${vo.price }원</strong> 입니다 </span>
            </div>
            <div style="text-align: center; padding-top: 10px;">
                <input type="submit" value="결제하기" style="padding: 10px 10px; color: white; background-color: rgb(88, 72, 56);">
            </div>
		</form>
            <div style="height: 80px; " ></div>
		</c:if>
            <!-- //////////사용가능 -->

           	<script>
           		$('#breakfast1').change(function(){
           			var bf = $('#breakfast1').val();
           			var eb = $('#extrabed1').val();
           			$('#lastPrice').html(${vo.price}+bf*35000+eb*30000);
           			$('#formPrice').val(${vo.price}+bf*35000+eb*30000);
           		});
           		
           		$('#extrabed1').change(function(){
           			var bf = $('#breakfast1').val();
           			var eb = $('#extrabed1').val();
           			$('#lastPrice').html(${vo.price}+bf*35000+eb*30000);
           			$('#formPrice').val($('#lastPrice').html());	
           		})
           		
           		
           		
       
           		
           	</script>

                <!-- //////////사용중2 -->
                <fmt:formatDate pattern="yyyy-MM-dd " var="cinDate" value="${Nvo.checkInDate }"/>
                <fmt:formatDate pattern="yyyy-MM-dd " var="coutDate" value="${Nvo.checkInDate }"/>
            	
            	
			<c:if test="${!empty Nvo.no }">
                <div style="font-size: 24px; color: rgb(121, 98, 76); padding: 12px 0;"  >
                    사용 중(walking)
                </div>
    
                <table style="width: 1200px; border-collapse: collapse; ">
                    <tr>
                        <th>방번호</th><td>${Nvo.roomNO }호</td>
                        <th>등급</th><td>${vo.roomGrade }</td>
                        <th>타입</th><td>${vo.roomType }</td>
                    </tr>
                    <tr>
                        <th>checkIn</th><td><c:out value="${cinDate }"></c:out></td>
                        <th>checkout</th><td><c:out value="${coutDate }"></c:out></td>
                        <th>인원수</th>
                        <td>
                          ${Nvo.userNum }명
                        </td>
    
                    </tr>
                    <tr>
                        <th>성인조식</th>
                        <td>
                          ${Nvo.breakfast }
                        </td>
                        <th>엑스트라 베드</th>
                        <td>${Nvo.extraBed }</td>
                        <th>체크아웃</th><td><a href="nonRevCheckOut?no=${Nvo.no }&roomNo=${Nvo.roomNO}" style=" margin-left: 20px; padding: 4px 12px; background-color: rgb(88, 72, 56);  color: white; border: 0;" >체크아웃</a></td>
                    </tr>
                    <tr style="height:120px;">
                        <th>추가요청사항</th>
                        <td colspan="5"><textarea rows="6" cols="110" style="resize: none;" readonly>${Nvo.memo }</textarea></td>
                    </tr>
    
                    
                    
                </table>
                
   			 </c:if>
                <div style="height: 80px; " ></div>
    
                <!-- //////////사용중2 -->
        </div>
        

        
     
          <!-- 객실관리////////////-->
        <!-- 푸터////////////// -->
        <jsp:include page="/WEB-INF/views/layout/footer.jsp"/>
        <!-- //footer -->
    </div>
    </div>

    <!-- script -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
   <script src="${pageContext.request.contextPath }/resources/js/jquery-ui.min.js"></script>
   <script>
   $(function() {
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
	    });
	    $(function() {
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
	    });
   </script>
       
   
</body>
</html>