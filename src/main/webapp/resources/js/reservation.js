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
    document.getElementById('check_in').value = new Date().toISOString().substring(0, 10);
    // 페이지 옴겨갈때 순서 색 체크
    function reservFun1(){
        var pr1 =document.getElementById('r1');
        var pr2 =document.getElementById('r2');
        var rp1 =document.getElementById('Rprocess1');
        var rp2 =document.getElementById('Rprocess2');

        rp1.setAttribute('class','null');
        rp2.setAttribute('class','reserv_top_process1');
        pr1.setAttribute('style','display:none;');
        pr2.setAttribute('style','display:block;');
    }
    function reservFun2(){
        var pr2 =document.getElementById('r2');
        var pr3 =document.getElementById('r3');
        var rp2 =document.getElementById('Rprocess2');
        var rp3 =document.getElementById('Rprocess3');

        rp2.setAttribute('class','null');
        rp3.setAttribute('class','reserv_top_process1');
        pr2.setAttribute('style','display:none;');
        pr3.setAttribute('style','display:block;');
    }
    function reservFun3(){
        var pr1 =document.getElementById('r1');
        var pr2 =document.getElementById('r2');
        var rp1 =document.getElementById('Rprocess1');
        var rp2 =document.getElementById('Rprocess2');

        rp1.setAttribute('class','reserv_top_process1');
        rp2.setAttribute('class','null');
        pr1.setAttribute('style','display:block;');
        pr2.setAttribute('style','display:none;');
    }
    function reservFun4(){
        var pr2 =document.getElementById('r2');
        var pr3 =document.getElementById('r3');
        var rp2 =document.getElementById('Rprocess2');
        var rp3 =document.getElementById('Rprocess3');

        rp2.setAttribute('class','reserv_top_process1');
        rp3.setAttribute('class','null');
        pr2.setAttribute('style','display:block;');
        pr3.setAttribute('style','display:none;');
    }

    

	 document.getElementById('check_in').value = new Date().toISOString().substring(0, 10);
        document.getElementById('check_out').value =addDays().toISOString().substring(0, 10);
        
        
        function addDays(){
            var result = new Date();
            result.setDate(result.getDate()+1);
            return result;
        }
        
         function calculDay(){
            var ckday = document.getElementById('check_in');
            var coday = document.getElementById('check_out');
            var cald = document.getElementById('calculDate');
            
           
            var strDay1 = ckday.value;
            var strDay2 = coday.value;
            
            var arr1 = strDay1.split('-'); 
            var arr2 = strDay2.split('-'); 

            var dat1 = new Date(arr1[0], arr1[1], arr1[2]); 
            var dat2 = new Date(arr2[0], arr2[1], arr2[2]);
            var diff = dat2 - dat1; 
            var currDay = 24 * 60 * 60 * 1000;
            if(arr1[1]==2 & arr2[1]==3){
                cald.innerHTML=parseInt((diff/currDay)-2)+"박";   
                
            }else{
                cald.innerHTML=parseInt(diff/currDay)+"박";
            }
            if(diff>0){}
            else if (diff==0){
                alert("1박 이상 선택해야 합니다.")
                coday.value=addDays().toISOString().substring(0, 10);
                cald.innerHTML="1박";
            }else{
                alert("정확한 날짜를 입력해주시기 바랍니다.")
                coday.value=addDays().toISOString().substring(0, 10);
                cald.innerHTML="1박";
            }
            

               
        }
        calculDay();
        
        function calculday2(){
            var today = new Date().toISOString().substring(0, 10);
            var ckday = document.getElementById('check_in');
            var strDay1 = ckday.value;
                       
            var arr1 = strDay1.split('-'); 
            var arr2 = today.split('-'); 
            var dat1 = new Date(arr1[0], arr1[1], arr1[2]); 
            var dat2 = new Date(arr2[0], arr2[1], arr2[2]);
            var diff = dat2 - dat1; 
            if(diff>0){
                
                alert('정확한 날짜를 입력해주시기바랍니다.');
                ckday.value=today;
            }

        }
        
        function roomNumCk(){
            var rselect = document.getElementById('rselect');
            var roption = rselect.options[rselect.selectedIndex].text;
            var nselect = document.getElementById('nselect');
            var noption = nselect.options[nselect.selectedIndex].text;
            if(noption > roption*4 ){
               alert('한 방에 최대인원은 4명입니다.')
               $('#rselect').find("option:eq(0)").prop("selected", true);
               $('#nselect').find("option:eq(0)").prop("selected", true);
            }
        }


function inputform(){
         var ccheck_in =document.getElementById('check_in');
         var ccheck_out =document.getElementById('check_out');
         var ccheck_r =document.getElementById('rselect');
         var ccheck_n =document.getElementById('nselect');
         var ccheck_bf =document.getElementById('breakfast');
         var ccheck_eb =document.getElementById('extrabed');
         var ccheck_it =document.getElementById('check_intime');
         var ccheck_et =document.getElementById('extratext');
         
        
       
        

         var ccheck_in2 =document.getElementById('reservation_ckin');
         var ccheck_out2 =document.getElementById('reservation_ckout');
         var ccheck_r2 =document.getElementById('reservation_roomnum');
         var ccheck_n2 =document.getElementById('reservation_personnum');
         var ccheck_bf2 =document.getElementById('reservation_bfast');
         var ccheck_eb2 =document.getElementById('reservation_extbed');
         var ccheck_it2 =document.getElementById('reservation_ckintime');
         var ccheck_et2 =document.getElementById('reservation_exttext');
         
        
         ccheck_in2.value = ccheck_in.value;
         ccheck_out2.value = ccheck_out.value;
         ccheck_r2.value = ccheck_r.value;
         ccheck_n2.value = ccheck_n.value;
         ccheck_bf2.value = ccheck_bf.value;
         ccheck_eb2.value = ccheck_eb.value;
         ccheck_it2.value = ccheck_it.value;
         ccheck_et2.value = ccheck_et.value;
         
         

    }

    function ckPoint(){
        var d1 = document.getElementById('pointck1');
        var d2 = document.getElementById('pointck2');
        var d3 = $.trim(d1.innerHTML);
        var d4 = $.trim(d2.value);
        var d5 = parseInt(d3);
        var d6 = parseInt(d4);
        if(d6 > d5 ){
            d2.value = d3;
        }
    }


		


    //포인트 사용시 결제요금 계산
    function subpoint(){
    	
    	var ccheck_bf1 =document.getElementById('breakfast');
        var ccheck_eb1 =document.getElementById('extrabed');
        var lastSCr = parseInt(rprice)+ccheck_bf1.value*35000+ccheck_eb1.value*30000;
    	
      var ccheck_pob =document.getElementById('potinckb');  
      var ccheck_rp =document.getElementById('rrprice1');
      var ccheck_rp2 =document.getElementById('rrprice2');
      var ccheck_po =document.getElementById('pointck2');
      var ccheck_pores =document.getElementById('sprice_point');
          if(ccheck_pob.checked ){
              
            if((parseInt(ccheck_rp2.innerHTML))<= (parseInt(ccheck_po.value))){
                    ccheck_po.value=ccheck_rp2.innerHTML;
                }
            if(ccheck_po.value=="" || ccheck_po.value==null){
                ccheck_po.value = "0";
            }
              ccheck_pores.innerHTML=parseInt(ccheck_rp2.innerHTML)-parseInt(ccheck_po.value);
          }else{
            document.getElementById('sprice_point').innerHTML =lastSCr;
            
          }
           document.getElementById('result_price').value= ccheck_pores.innerHTML;
           document.getElementById('rrprice1').innerHTML=ccheck_pores.innerHTML;
           document.getElementById('rrprice2').innerHTML=ccheck_pores.innerHTML;
        }

        var ccheck_rp3 =document.getElementById('rrprice1');
        var ccheck_rp4 =document.getElementById('rrprice2');
        var result_price1 = document.getElementById('result_price');
        var rprice;
        var primaryPrice;
        
        function tt(e){
            var roomgrade2 = document.getElementById('reservation_roomgrade');
            var roomtype2 = document.getElementById('reservation_roomtype');
            var arr = e.target['text'].split('/');
            roomgrade2.value = arr[0];
            roomtype2.value =  arr[1];
            if(arr[0]=="standard"){
                ccheck_rp3.innerHTML="200000";
                ccheck_rp4.innerHTML="200000";
               rprice = "200000";
               primaryPrice ="200000";
               result_price1.value="200000";
            }else if(arr[0]=="executive"){
                ccheck_rp3.innerHTML="300000";
                ccheck_rp4.innerHTML="300000";
                rprice = "300000";
                primaryPrice="300000";
                result_price1.value="300000";
            }else {
                ccheck_rp3.innerHTML="400000";
                ccheck_rp4.innerHTML="400000";
                rprice = "400000";
                primaryPrice="400000";
                result_price1.value="300000";
            }
            
        }
        
     function calprice(){
       
        var nselect =document.getElementById('nselect');
        var ccheck_bf =document.getElementById('breakfast');
        var nvalue = nselect.value;
        var bvalue = ccheck_bf.value;
        var pn = parseInt(nvalue);
        var pb = parseInt(bvalue);
       
        var rselect =document.getElementById('rselect');
        var ccheck_eb =document.getElementById('extrabed');
        var nvalue = rselect.value;
        var bvalue = ccheck_eb.value;
        var pn2 = parseInt(nvalue);
        var pb2 = parseInt(bvalue);
        if(pb>pn){
            ccheck_bf.value = nselect.value;
            ccheck_rp4.innerHTML =parseInt(rprice)+ccheck_bf.value*35000+ccheck_eb.value*30000;
           
        }else{
            ccheck_rp4.innerHTML =parseInt(rprice)+ccheck_bf.value*35000+ccheck_eb.value*30000;
           
        }

        if(pb2>pn2){
            ccheck_eb.value = rselect.value;
            ccheck_rp3.innerHTML =parseInt(rprice)+ccheck_bf.value*35000+ccheck_eb.value*30000;
            
        }else{
            ccheck_rp3.innerHTML =parseInt(rprice)+ccheck_bf.value*35000+ccheck_eb.value*30000;
            
        }
        document.getElementById('sprice_point').innerHTML =ccheck_rp4.innerHTML;
        document.getElementById('result_price').value=ccheck_rp4.innerHTML;
        

     }

     function breakfast(){
            var nselect =document.getElementById('nselect');
            var breakfast =document.getElementById('breakfast');
            var nvalue = nselect.value;
            var bvalue = breakfast.value;
            var pn = parseInt(nvalue);
            var pb = parseInt(bvalue);
            if(pb>pn){
                alert('인원수보다 많은 조식을 선택할수 없습니다.');
                breakfast.value = nselect.value;
            }
        }

        function extrabed(){
            var rselect =document.getElementById('rselect');
            var extrabed =document.getElementById('extrabed');
            var nvalue = rselect.value;
            var bvalue = extrabed.value;
            var pn = parseInt(nvalue);
            var pb = parseInt(bvalue);
            if(pb>pn){
                alert('객실당 1개의 extrabed를 추가 할 수 있습니다.');
                extrabed.value = rselect.value;
            }
        }

      