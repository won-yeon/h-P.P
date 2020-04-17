
    //달력


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
      

        //이미지 슬라이드

        $(".gallery_img").slick({
            slidesToShow: 1,
            slidesToScroll: 1,
            autoplay: true,
            autoplaySpeed: 3000,
            arrows:false
        });
   

        //숙박 날짜 계산

        document.getElementById('check_in').value = new Date().toISOString().substring(0, 10);
        document.getElementById('check_out').value =addDays().toISOString().substring(0, 10);
        
        function changeCki(){
            var c1 = document.getElementById('check_in').value;
            var arr = c1.split('-'); 
            var result = new Date(arr[0],(arr[1]-1),(parseInt(arr[2])+1));
            result.setDate(result.getDate()+1);
            document.getElementById('check_out').value=result.toISOString().substring(0, 10);
        
        }
        
        function addDays(){
            var result = new Date();
            result.setDate(result.getDate()+1);
            return result;
        }
        //체크인 체크아웃 날짜 제한

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
        // 체크인 날짜 제한
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
        calculDay();
        
        //방선택 제한
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

  
        
   

        
   
        
        
       