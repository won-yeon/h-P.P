// 약관 보기 레이어
        $(document).ready(function(){
        $(".layer1").click(function(e){
            e.preventDefault();
            $("#layer_1").css("display","block");
        });
        $("#layer_1 .close").click(function(e){
            e.preventDefault();
            $("#layer_1").css("display","none");
        });

        $(".layer2").click(function(e){
            e.preventDefault();
            $("#layer_2").css("display","block");
        });
        $("#layer_2 .close").click(function(e){
            e.preventDefault();
            $("#layer_2").css("display","none");
        });

        $(".layer3").click(function(e){
            e.preventDefault();
            $("#layer_3").css("display","block");
        });
        $("#layer_3 .close").click(function(e){
            e.preventDefault();
            $("#layer_3").css("display","none");
        });
        // 이용약관 개별 동의 확인
        $("#joinnext1").click(function(e){
            var radioval1 = $('input[name="chk1"]:checked').val();
            var radioval2 = $('input[name="chk2"]:checked').val();
            var radioval3 = $('input[name="chk3"]:checked').val();
            if(radioval1 == 'none'){
                e.preventDefault();
                alert('이용약관에 대한 동의하셔야 합니다.');
            }
            else if(radioval2 == 'none'){
                e.preventDefault();
                alert('개인정보 수집,이용에 대한 동의하셔야 합니다.')
            }
            else if(radioval3 == 'none'){
                e.preventDefault();
                alert('개인정보 제3자 제공에 대한 동의하셔야 합니다.')
            }
        });
        // 이용 약관 전체동의
        $("#join1_checkb").click(function(e){
                if($("#join1_checkb").prop("checked")){
                    $("input:radio[name='chk1']:radio[value='agree']").prop('checked', true);
                    $("input:radio[name='chk2']:radio[value='agree']").prop('checked', true);
                    $("input:radio[name='chk3']:radio[value='agree']").prop('checked', true);
                }
        })

    });