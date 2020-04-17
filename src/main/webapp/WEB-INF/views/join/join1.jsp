<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>join</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/css/reset.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/css/Pstyle.css">
    
    <link href="https://fonts.googleapis.com/css?family=Nanum+Gothic" rel="stylesheet">
    
</head>
<body>
   
    <div class="wrap">
     <jsp:include page="/WEB-INF/views/layout/header.jsp"/>   
        <!-- 회원가입 1 -->
        <div class="container">
            <div class="join_container">
                <div class="join_top_text"><span class="span1">THE HOTEL   </span> <span class="span2">SEOUL     </span><span class="span3">가입</span></div>
                <div class="join_top">
                    <div class="join_top1" style="border-bottom: 4px solid rgb(134, 108, 82);"><span class="join_top_sapn">약관동의</span></div>
                    <div class="join_top2"><span class="join_top_sapn">회원정보 입력</span></div>
                    <div class="join_top3"><span class="join_top_sapn">가입완료</span></div>
                </div>
                <div class="login_text">
                    <div><span class="span1">THE HOTEL   </span> <span class="span2">SEOUL   </span><span class="span3">에 오신것을 환영합니다.</span></div>
                    <div class="login_text_s"><span class="join_text_span4">※ 약관 및 개인정보 수집 ,이용 사항을 확인하시고 동의여부에 체크해주시기 바랍니다.</span></div>
                </div>
                <div class="login_text1"><h1>약관동의</h1></div>
                <hr  style="height: 2px; background-color: rgb(88, 75, 62);">
                <div class="posi">
                    <div class="loing_text12"><h4>THE HOTEL SEOUL 이용약관에 대한 동의 필수</h4></div>
                    <div class="loing_text13 layer1"><a  >전체보기</a></div>
                </div>
                <div class="policyBox">
                    <div class="policyBox-box">
                        <p><Strong>제1조~~~~~~~~~~~~~~~~~~~</Strong></p>
                        <br>
                        1. Consectetur est nisi anim cillum exercitation mollit culpa cillum laboris mollit. Adipisicing nostrud in duis eiusmod aliquip esse fugiat. Ipsum id occaecat anim id enim consectetur dolore cupidatat do aliqua. Dolor incididunt quis quis ad est aliqua eiusmod deserunt deserunt dolore labore. Laborum ad labore commodo adipisicing fugiat commodo consequat dolore.
                        Consectetur minim adipisicing esse Lorem enim. Nulla excepteur esse in dolore enim qui laboris. Ullamco dolor aliqua consectetur labore. Id occaecat ipsum labore nostrud minim id eu quis veniam dolor cillum. Sint ex aute ut velit consequat id ex quis incididunt consequat proident tempor. Laborum laboris irure nulla eiusmod officia proident commodo velit reprehenderit consequat consequat.
                        <br>
                        2. Consectetur est nisi anim cillum exercitation mollit culpa cillum laboris mollit. Adipisicing nostrud in duis eiusmod aliquip esse fugiat. Ipsum id occaecat anim id enim consectetur dolore cupidatat do aliqua. Dolor incididunt quis quis ad est aliqua eiusmod deserunt deserunt dolore labore. Laborum ad labore commodo adipisicing fugiat commodo consequat dolore.
                        Consectetur minim adipisicing esse Lorem enim. Nulla excepteur esse in dolore enim qui laboris. Ullamco dolor aliqua consectetur labore. Id occaecat ipsum labore nostrud minim id eu quis veniam dolor cillum. Sint ex aute ut velit consequat id ex quis incididunt consequat proident tempor. Laborum laboris irure nulla eiusmod officia proident commodo velit reprehenderit consequat consequat.
                        <br>
                        3. Consectetur est nisi anim cillum exercitation mollit culpa cillum laboris mollit. Adipisicing nostrud in duis eiusmod aliquip esse fugiat. Ipsum id occaecat anim id enim consectetur dolore cupidatat do aliqua. Dolor incididunt quis quis ad est aliqua eiusmod deserunt deserunt dolore labore. Laborum ad labore commodo adipisicing fugiat commodo consequat dolore.
                        Consectetur minim adipisicing esse Lorem enim. Nulla excepteur esse in dolore enim qui laboris. Ullamco dolor aliqua consectetur labore. Id occaecat ipsum labore nostrud minim id eu quis veniam dolor cillum. Sint ex aute ut velit consequat id ex quis incididunt consequat proident tempor. Laborum laboris irure nulla eiusmod officia proident commodo velit reprehenderit consequat consequat.
                        <br>
                        4. Consectetur est nisi anim cillum exercitation mollit culpa cillum laboris mollit. Adipisicing nostrud in duis eiusmod aliquip esse fugiat. Ipsum id occaecat anim id enim consectetur dolore cupidatat do aliqua. Dolor incididunt quis quis ad est aliqua eiusmod deserunt deserunt dolore labore. Laborum ad labore commodo adipisicing fugiat commodo consequat dolore.
                        Consectetur minim adipisicing esse Lorem enim. Nulla excepteur esse in dolore enim qui laboris. Ullamco dolor aliqua consectetur labore. Id occaecat ipsum labore nostrud minim id eu quis veniam dolor cillum. Sint ex aute ut velit consequat id ex quis incididunt consequat proident tempor. Laborum laboris irure nulla eiusmod officia proident commodo velit reprehenderit consequat consequat.
                    </div>
                </div>
                <div class="checkboxC">
                    <input class="checkAgree1" type="radio" name="chk1" id="" value="agree" >
                    <label for="checkAgree1">동의함</label>
                    <input class="checkdisAgree1" type="radio" name="chk1" value="none" checked>
                    <label for="checkdisAgree1">동의하지않음</label>
                </div>
                <hr style="border: 1px dashed rgba(182, 182, 182,0.8)" >
                
                <div class="posi">
                    <div class="loing_text12"><h4>개인정보 수집, 이용에 대한 동의</h4></div>
                    <div class="loing_text13 layer2"><a href="#">전체보기</a></div>
                </div>
                <div class="policyBox">
                    <div class="policyBox-box">
                        <p><Strong>제1조~~~~~~~~~~~~~~~~~~~</Strong></p>
                        <br>
                        1. Consectetur est nisi anim cillum exercitation mollit culpa cillum laboris mollit. Adipisicing nostrud in duis eiusmod aliquip esse fugiat. Ipsum id occaecat anim id enim consectetur dolore cupidatat do aliqua. Dolor incididunt quis quis ad est aliqua eiusmod deserunt deserunt dolore labore. Laborum ad labore commodo adipisicing fugiat commodo consequat dolore.
                        Consectetur minim adipisicing esse Lorem enim. Nulla excepteur esse in dolore enim qui laboris. Ullamco dolor aliqua consectetur labore. Id occaecat ipsum labore nostrud minim id eu quis veniam dolor cillum. Sint ex aute ut velit consequat id ex quis incididunt consequat proident tempor. Laborum laboris irure nulla eiusmod officia proident commodo velit reprehenderit consequat consequat.
                        <br>
                        2. Consectetur est nisi anim cillum exercitation mollit culpa cillum laboris mollit. Adipisicing nostrud in duis eiusmod aliquip esse fugiat. Ipsum id occaecat anim id enim consectetur dolore cupidatat do aliqua. Dolor incididunt quis quis ad est aliqua eiusmod deserunt deserunt dolore labore. Laborum ad labore commodo adipisicing fugiat commodo consequat dolore.
                        Consectetur minim adipisicing esse Lorem enim. Nulla excepteur esse in dolore enim qui laboris. Ullamco dolor aliqua consectetur labore. Id occaecat ipsum labore nostrud minim id eu quis veniam dolor cillum. Sint ex aute ut velit consequat id ex quis incididunt consequat proident tempor. Laborum laboris irure nulla eiusmod officia proident commodo velit reprehenderit consequat consequat.
                        <br>
                        3. Consectetur est nisi anim cillum exercitation mollit culpa cillum laboris mollit. Adipisicing nostrud in duis eiusmod aliquip esse fugiat. Ipsum id occaecat anim id enim consectetur dolore cupidatat do aliqua. Dolor incididunt quis quis ad est aliqua eiusmod deserunt deserunt dolore labore. Laborum ad labore commodo adipisicing fugiat commodo consequat dolore.
                        Consectetur minim adipisicing esse Lorem enim. Nulla excepteur esse in dolore enim qui laboris. Ullamco dolor aliqua consectetur labore. Id occaecat ipsum labore nostrud minim id eu quis veniam dolor cillum. Sint ex aute ut velit consequat id ex quis incididunt consequat proident tempor. Laborum laboris irure nulla eiusmod officia proident commodo velit reprehenderit consequat consequat.
                        <br>
                        4. Consectetur est nisi anim cillum exercitation mollit culpa cillum laboris mollit. Adipisicing nostrud in duis eiusmod aliquip esse fugiat. Ipsum id occaecat anim id enim consectetur dolore cupidatat do aliqua. Dolor incididunt quis quis ad est aliqua eiusmod deserunt deserunt dolore labore. Laborum ad labore commodo adipisicing fugiat commodo consequat dolore.
                        Consectetur minim adipisicing esse Lorem enim. Nulla excepteur esse in dolore enim qui laboris. Ullamco dolor aliqua consectetur labore. Id occaecat ipsum labore nostrud minim id eu quis veniam dolor cillum. Sint ex aute ut velit consequat id ex quis incididunt consequat proident tempor. Laborum laboris irure nulla eiusmod officia proident commodo velit reprehenderit consequat consequat.
                    </div>
                </div>
                <div class="checkboxC">
                    <input class="checkAgree1" type="radio" name="chk2" value="agree">
                    <label for="checkAgree1">동의함</label>
                    <input class="checkdisAgree1" type="radio" name="chk2" value="none" checked>
                    <label for="checkdisAgree1">동의하지않음</label>
                </div>
                <hr style="border: 1px dashed rgba(182, 182, 182,0.8)" >

                
                <div class="posi">
                    <div class="loing_text12"><h4>개인정보 제3자 제공에 대한 동의</h4></div>
                    <div class="loing_text13 layer3"><a href="#">전체보기</a></div>
                </div>
                <div class="policyBox">
                    <div class="policyBox-box">
                        <p><Strong>제1조~~~~~~~~~~~~~~~~~~~</Strong></p>
                        <br>
                        1. Consectetur est nisi anim cillum exercitation mollit culpa cillum laboris mollit. Adipisicing nostrud in duis eiusmod aliquip esse fugiat. Ipsum id occaecat anim id enim consectetur dolore cupidatat do aliqua. Dolor incididunt quis quis ad est aliqua eiusmod deserunt deserunt dolore labore. Laborum ad labore commodo adipisicing fugiat commodo consequat dolore.
                        Consectetur minim adipisicing esse Lorem enim. Nulla excepteur esse in dolore enim qui laboris. Ullamco dolor aliqua consectetur labore. Id occaecat ipsum labore nostrud minim id eu quis veniam dolor cillum. Sint ex aute ut velit consequat id ex quis incididunt consequat proident tempor. Laborum laboris irure nulla eiusmod officia proident commodo velit reprehenderit consequat consequat.
                        <br>
                        2. Consectetur est nisi anim cillum exercitation mollit culpa cillum laboris mollit. Adipisicing nostrud in duis eiusmod aliquip esse fugiat. Ipsum id occaecat anim id enim consectetur dolore cupidatat do aliqua. Dolor incididunt quis quis ad est aliqua eiusmod deserunt deserunt dolore labore. Laborum ad labore commodo adipisicing fugiat commodo consequat dolore.
                        Consectetur minim adipisicing esse Lorem enim. Nulla excepteur esse in dolore enim qui laboris. Ullamco dolor aliqua consectetur labore. Id occaecat ipsum labore nostrud minim id eu quis veniam dolor cillum. Sint ex aute ut velit consequat id ex quis incididunt consequat proident tempor. Laborum laboris irure nulla eiusmod officia proident commodo velit reprehenderit consequat consequat.
                        <br>
                        3. Consectetur est nisi anim cillum exercitation mollit culpa cillum laboris mollit. Adipisicing nostrud in duis eiusmod aliquip esse fugiat. Ipsum id occaecat anim id enim consectetur dolore cupidatat do aliqua. Dolor incididunt quis quis ad est aliqua eiusmod deserunt deserunt dolore labore. Laborum ad labore commodo adipisicing fugiat commodo consequat dolore.
                        Consectetur minim adipisicing esse Lorem enim. Nulla excepteur esse in dolore enim qui laboris. Ullamco dolor aliqua consectetur labore. Id occaecat ipsum labore nostrud minim id eu quis veniam dolor cillum. Sint ex aute ut velit consequat id ex quis incididunt consequat proident tempor. Laborum laboris irure nulla eiusmod officia proident commodo velit reprehenderit consequat consequat.
                        <br>
                        4. Consectetur est nisi anim cillum exercitation mollit culpa cillum laboris mollit. Adipisicing nostrud in duis eiusmod aliquip esse fugiat. Ipsum id occaecat anim id enim consectetur dolore cupidatat do aliqua. Dolor incididunt quis quis ad est aliqua eiusmod deserunt deserunt dolore labore. Laborum ad labore commodo adipisicing fugiat commodo consequat dolore.
                        Consectetur minim adipisicing esse Lorem enim. Nulla excepteur esse in dolore enim qui laboris. Ullamco dolor aliqua consectetur labore. Id occaecat ipsum labore nostrud minim id eu quis veniam dolor cillum. Sint ex aute ut velit consequat id ex quis incididunt consequat proident tempor. Laborum laboris irure nulla eiusmod officia proident commodo velit reprehenderit consequat consequat.
                    </div>
                </div>
                <div class="checkboxC">
                    <input class="checkAgree1" type="radio" name="chk3" value="agree">
                    <label for="checkAgree1">동의함</label>
                    <input class="checkdisAgree1" type="radio" name="chk3" value="none" checked>
                    <label for="checkdisAgree1">동의하지않음</label>
                </div>
                <hr style="border: 1px dashed rgba(182, 182, 182,0.8)" >

                <div class="join_last">
                    <input class="join_last_chk" type="checkbox" id="join1_checkb" value="checked">
                    <label for="join_last_chk">전체동의</label>
                </div>

                <div class="join_next1">
                    <div class="join_next11">
                        <a id="joinnext1" href="join/join2">다음</a>
                    </div>
                    <div class="join_next12">
                        <a href="index">취소</a>
                    </div>
                </div>
            </div> 
        </div>  
        <!-- 회원가입 1 -->

        <!-- 레이어팝업 -->
        
            <div class="pop_container" id="layer_1">
                <div class="pop_head">
                    <span>THE HOTEL seoul 이용약관에 대한 동의</span>
                    <div class="close_box">
                        <a href="#" class="close">CLOSE</a>
                    </div>
                    
                </div>
                <div class="pop_body">
                    <p><strong>제1조~~~~~~~~~~~~~~~~~~~</strong> </p>
                    1. Consectetur est nisi anim cillum exercitation mollit culpa cillum laboris mollit. Adipisicing nostrud in duis eiusmod aliquip esse fugiat. Ipsum id occaecat anim id enim consectetur dolore cupidatat do aliqua. Dolor incididunt quis quis ad est aliqua eiusmod deserunt deserunt dolore labore. Laborum ad labore commodo adipisicing fugiat commodo consequat dolore. Consectetur minim adipisicing esse Lorem enim. Nulla excepteur esse in dolore enim qui laboris. Ullamco dolor aliqua consectetur labore. Id occaecat ipsum labore nostrud minim id eu quis veniam dolor cillum. Sint ex aute ut velit consequat id ex quis incididunt consequat proident tempor. Laborum laboris irure nulla eiusmod officia proident commodo velit reprehenderit consequat consequat.
                    2. Consectetur est nisi anim cillum exercitation mollit culpa cillum laboris mollit. Adipisicing nostrud in duis eiusmod aliquip esse fugiat. Ipsum id occaecat anim id enim consectetur dolore cupidatat do aliqua. Dolor incididunt quis quis ad est aliqua eiusmod deserunt deserunt dolore labore. Laborum ad labore commodo adipisicing fugiat commodo consequat dolore. Consectetur minim adipisicing esse Lorem enim. Nulla excepteur esse in dolore enim qui laboris. Ullamco dolor aliqua consectetur labore. Id occaecat ipsum labore nostrud minim id eu quis veniam dolor cillum. Sint ex aute ut velit consequat id ex quis incididunt consequat proident tempor. Laborum laboris irure nulla eiusmod officia proident commodo velit reprehenderit consequat consequat.
                    3. Consectetur est nisi anim cillum exercitation mollit culpa cillum laboris mollit. Adipisicing nostrud in duis eiusmod aliquip esse fugiat. Ipsum id occaecat anim id enim consectetur dolore cupidatat do aliqua. Dolor incididunt quis quis ad est aliqua eiusmod deserunt deserunt dolore labore. Laborum ad labore commodo adipisicing fugiat commodo consequat dolore. Consectetur minim adipisicing esse Lorem enim. Nulla excepteur esse in dolore enim qui laboris. Ullamco dolor aliqua consectetur labore. Id occaecat ipsum labore nostrud minim id eu quis veniam dolor cillum. Sint ex aute ut velit consequat id ex quis incididunt consequat proident tempor. Laborum laboris irure nulla eiusmod officia proident commodo velit reprehenderit consequat consequat.
                    4. Consectetur est nisi anim cillum exercitation mollit culpa cillum laboris mollit. Adipisicing nostrud in duis eiusmod aliquip esse fugiat. Ipsum id occaecat anim id enim consectetur dolore cupidatat do aliqua. Dolor incididunt quis quis ad est aliqua eiusmod deserunt deserunt dolore labore. Laborum ad labore commodo adipisicing fugiat commodo consequat dolore. Consectetur minim adipisicing esse Lorem enim. Nulla excepteur esse in dolore enim qui laboris. Ullamco dolor aliqua consectetur labore. Id occaecat ipsum labore nostrud minim id eu quis veniam dolor cillum. Sint ex aute ut velit consequat id ex quis incididunt consequat proident tempor. Laborum laboris irure nulla eiusmod officia proident commodo velit reprehenderit consequat consequat.
                    <br>
                    <p><strong>제2조~~~~~~~~~~~~~~~~~</strong></p>
                    1. Consectetur est nisi anim cillum exercitation mollit culpa cillum laboris mollit. Adipisicing nostrud in duis eiusmod aliquip esse fugiat. Ipsum id occaecat anim id enim consectetur dolore cupidatat do aliqua. Dolor incididunt quis quis ad est aliqua eiusmod deserunt deserunt dolore labore. Laborum ad labore commodo adipisicing fugiat commodo consequat dolore. Consectetur minim adipisicing esse Lorem enim. Nulla excepteur esse in dolore enim qui laboris. Ullamco dolor aliqua consectetur labore. Id occaecat ipsum labore nostrud minim id eu quis veniam dolor cillum. Sint ex aute ut velit consequat id ex quis incididunt consequat proident tempor. Laborum laboris irure nulla eiusmod officia proident commodo velit reprehenderit consequat consequat.
                    2. Consectetur est nisi anim cillum exercitation mollit culpa cillum laboris mollit. Adipisicing nostrud in duis eiusmod aliquip esse fugiat. Ipsum id occaecat anim id enim consectetur dolore cupidatat do aliqua. Dolor incididunt quis quis ad est aliqua eiusmod deserunt deserunt dolore labore. Laborum ad labore commodo adipisicing fugiat commodo consequat dolore. Consectetur minim adipisicing esse Lorem enim. Nulla excepteur esse in dolore enim qui laboris. Ullamco dolor aliqua consectetur labore. Id occaecat ipsum labore nostrud minim id eu quis veniam dolor cillum. Sint ex aute ut velit consequat id ex quis incididunt consequat proident tempor. Laborum laboris irure nulla eiusmod officia proident commodo velit reprehenderit consequat consequat.
                    3. Consectetur est nisi anim cillum exercitation mollit culpa cillum laboris mollit. Adipisicing nostrud in duis eiusmod aliquip esse fugiat. Ipsum id occaecat anim id enim consectetur dolore cupidatat do aliqua. Dolor incididunt quis quis ad est aliqua eiusmod deserunt deserunt dolore labore. Laborum ad labore commodo adipisicing fugiat commodo consequat dolore. Consectetur minim adipisicing esse Lorem enim. Nulla excepteur esse in dolore enim qui laboris. Ullamco dolor aliqua consectetur labore. Id occaecat ipsum labore nostrud minim id eu quis veniam dolor cillum. Sint ex aute ut velit consequat id ex quis incididunt consequat proident tempor. Laborum laboris irure nulla eiusmod officia proident commodo velit reprehenderit consequat consequat.
                    4. Consectetur est nisi anim cillum exercitation mollit culpa cillum laboris mollit. Adipisicing nostrud in duis eiusmod aliquip esse fugiat. Ipsum id occaecat anim id enim consectetur dolore cupidatat do aliqua. Dolor incididunt quis quis ad est aliqua eiusmod deserunt deserunt dolore labore. Laborum ad labore commodo adipisicing fugiat commodo consequat dolore. Consectetur minim adipisicing esse Lorem enim. Nulla excepteur esse in dolore enim qui laboris. Ullamco dolor aliqua consectetur labore. Id occaecat ipsum labore nostrud minim id eu quis veniam dolor cillum. Sint ex aute ut velit consequat id ex quis incididunt consequat proident tempor. Laborum laboris irure nulla eiusmod officia proident commodo velit reprehenderit consequat consequat.
                    <br>
                    <p><strong>제3조~~~~~~~~~~~~~~~~~</strong></p>
                    1. Consectetur est nisi anim cillum exercitation mollit culpa cillum laboris mollit. Adipisicing nostrud in duis eiusmod aliquip esse fugiat. Ipsum id occaecat anim id enim consectetur dolore cupidatat do aliqua. Dolor incididunt quis quis ad est aliqua eiusmod deserunt deserunt dolore labore. Laborum ad labore commodo adipisicing fugiat commodo consequat dolore. Consectetur minim adipisicing esse Lorem enim. Nulla excepteur esse in dolore enim qui laboris. Ullamco dolor aliqua consectetur labore. Id occaecat ipsum labore nostrud minim id eu quis veniam dolor cillum. Sint ex aute ut velit consequat id ex quis incididunt consequat proident tempor. Laborum laboris irure nulla eiusmod officia proident commodo velit reprehenderit consequat consequat.
                    2. Consectetur est nisi anim cillum exercitation mollit culpa cillum laboris mollit. Adipisicing nostrud in duis eiusmod aliquip esse fugiat. Ipsum id occaecat anim id enim consectetur dolore cupidatat do aliqua. Dolor incididunt quis quis ad est aliqua eiusmod deserunt deserunt dolore labore. Laborum ad labore commodo adipisicing fugiat commodo consequat dolore. Consectetur minim adipisicing esse Lorem enim. Nulla excepteur esse in dolore enim qui laboris. Ullamco dolor aliqua consectetur labore. Id occaecat ipsum labore nostrud minim id eu quis veniam dolor cillum. Sint ex aute ut velit consequat id ex quis incididunt consequat proident tempor. Laborum laboris irure nulla eiusmod officia proident commodo velit reprehenderit consequat consequat.
                    3. Consectetur est nisi anim cillum exercitation mollit culpa cillum laboris mollit. Adipisicing nostrud in duis eiusmod aliquip esse fugiat. Ipsum id occaecat anim id enim consectetur dolore cupidatat do aliqua. Dolor incididunt quis quis ad est aliqua eiusmod deserunt deserunt dolore labore. Laborum ad labore commodo adipisicing fugiat commodo consequat dolore. Consectetur minim adipisicing esse Lorem enim. Nulla excepteur esse in dolore enim qui laboris. Ullamco dolor aliqua consectetur labore. Id occaecat ipsum labore nostrud minim id eu quis veniam dolor cillum. Sint ex aute ut velit consequat id ex quis incididunt consequat proident tempor. Laborum laboris irure nulla eiusmod officia proident commodo velit reprehenderit consequat consequat.
                    4. Consectetur est nisi anim cillum exercitation mollit culpa cillum laboris mollit. Adipisicing nostrud in duis eiusmod aliquip esse fugiat. Ipsum id occaecat anim id enim consectetur dolore cupidatat do aliqua. Dolor incididunt quis quis ad est aliqua eiusmod deserunt deserunt dolore labore. Laborum ad labore commodo adipisicing fugiat commodo consequat dolore. Consectetur minim adipisicing esse Lorem enim. Nulla excepteur esse in dolore enim qui laboris. Ullamco dolor aliqua consectetur labore. Id occaecat ipsum labore nostrud minim id eu quis veniam dolor cillum. Sint ex aute ut velit consequat id ex quis incididunt consequat proident tempor. Laborum laboris irure nulla eiusmod officia proident commodo velit reprehenderit consequat consequat.
                    <br>
                </div>
            </div>

            <div class="pop_container" id="layer_2">
                <div class="pop_head">
                    <span>개인정보 수집, 이용에 대한 동의</span>
                        <div class="close_box">
                            <a href="#" class="close">CLOSE</a>
                        </div>
                        
                </div>
                <div class="pop_body">
                    <p><strong>제1조~~~~~~~~~~~~~~~~~~~</strong> </p>
                    1. Consectetur est nisi anim cillum exercitation mollit culpa cillum laboris mollit. Adipisicing nostrud in duis eiusmod aliquip esse fugiat. Ipsum id occaecat anim id enim consectetur dolore cupidatat do aliqua. Dolor incididunt quis quis ad est aliqua eiusmod deserunt deserunt dolore labore. Laborum ad labore commodo adipisicing fugiat commodo consequat dolore. Consectetur minim adipisicing esse Lorem enim. Nulla excepteur esse in dolore enim qui laboris. Ullamco dolor aliqua consectetur labore. Id occaecat ipsum labore nostrud minim id eu quis veniam dolor cillum. Sint ex aute ut velit consequat id ex quis incididunt consequat proident tempor. Laborum laboris irure nulla eiusmod officia proident commodo velit reprehenderit consequat consequat.
                    2. Consectetur est nisi anim cillum exercitation mollit culpa cillum laboris mollit. Adipisicing nostrud in duis eiusmod aliquip esse fugiat. Ipsum id occaecat anim id enim consectetur dolore cupidatat do aliqua. Dolor incididunt quis quis ad est aliqua eiusmod deserunt deserunt dolore labore. Laborum ad labore commodo adipisicing fugiat commodo consequat dolore. Consectetur minim adipisicing esse Lorem enim. Nulla excepteur esse in dolore enim qui laboris. Ullamco dolor aliqua consectetur labore. Id occaecat ipsum labore nostrud minim id eu quis veniam dolor cillum. Sint ex aute ut velit consequat id ex quis incididunt consequat proident tempor. Laborum laboris irure nulla eiusmod officia proident commodo velit reprehenderit consequat consequat.
                    3. Consectetur est nisi anim cillum exercitation mollit culpa cillum laboris mollit. Adipisicing nostrud in duis eiusmod aliquip esse fugiat. Ipsum id occaecat anim id enim consectetur dolore cupidatat do aliqua. Dolor incididunt quis quis ad est aliqua eiusmod deserunt deserunt dolore labore. Laborum ad labore commodo adipisicing fugiat commodo consequat dolore. Consectetur minim adipisicing esse Lorem enim. Nulla excepteur esse in dolore enim qui laboris. Ullamco dolor aliqua consectetur labore. Id occaecat ipsum labore nostrud minim id eu quis veniam dolor cillum. Sint ex aute ut velit consequat id ex quis incididunt consequat proident tempor. Laborum laboris irure nulla eiusmod officia proident commodo velit reprehenderit consequat consequat.
                    4. Consectetur est nisi anim cillum exercitation mollit culpa cillum laboris mollit. Adipisicing nostrud in duis eiusmod aliquip esse fugiat. Ipsum id occaecat anim id enim consectetur dolore cupidatat do aliqua. Dolor incididunt quis quis ad est aliqua eiusmod deserunt deserunt dolore labore. Laborum ad labore commodo adipisicing fugiat commodo consequat dolore. Consectetur minim adipisicing esse Lorem enim. Nulla excepteur esse in dolore enim qui laboris. Ullamco dolor aliqua consectetur labore. Id occaecat ipsum labore nostrud minim id eu quis veniam dolor cillum. Sint ex aute ut velit consequat id ex quis incididunt consequat proident tempor. Laborum laboris irure nulla eiusmod officia proident commodo velit reprehenderit consequat consequat.
                    <br>
                    <p><strong>제2조~~~~~~~~~~~~~~~~~</strong></p>
                    1. Consectetur est nisi anim cillum exercitation mollit culpa cillum laboris mollit. Adipisicing nostrud in duis eiusmod aliquip esse fugiat. Ipsum id occaecat anim id enim consectetur dolore cupidatat do aliqua. Dolor incididunt quis quis ad est aliqua eiusmod deserunt deserunt dolore labore. Laborum ad labore commodo adipisicing fugiat commodo consequat dolore. Consectetur minim adipisicing esse Lorem enim. Nulla excepteur esse in dolore enim qui laboris. Ullamco dolor aliqua consectetur labore. Id occaecat ipsum labore nostrud minim id eu quis veniam dolor cillum. Sint ex aute ut velit consequat id ex quis incididunt consequat proident tempor. Laborum laboris irure nulla eiusmod officia proident commodo velit reprehenderit consequat consequat.
                    2. Consectetur est nisi anim cillum exercitation mollit culpa cillum laboris mollit. Adipisicing nostrud in duis eiusmod aliquip esse fugiat. Ipsum id occaecat anim id enim consectetur dolore cupidatat do aliqua. Dolor incididunt quis quis ad est aliqua eiusmod deserunt deserunt dolore labore. Laborum ad labore commodo adipisicing fugiat commodo consequat dolore. Consectetur minim adipisicing esse Lorem enim. Nulla excepteur esse in dolore enim qui laboris. Ullamco dolor aliqua consectetur labore. Id occaecat ipsum labore nostrud minim id eu quis veniam dolor cillum. Sint ex aute ut velit consequat id ex quis incididunt consequat proident tempor. Laborum laboris irure nulla eiusmod officia proident commodo velit reprehenderit consequat consequat.
                    3. Consectetur est nisi anim cillum exercitation mollit culpa cillum laboris mollit. Adipisicing nostrud in duis eiusmod aliquip esse fugiat. Ipsum id occaecat anim id enim consectetur dolore cupidatat do aliqua. Dolor incididunt quis quis ad est aliqua eiusmod deserunt deserunt dolore labore. Laborum ad labore commodo adipisicing fugiat commodo consequat dolore. Consectetur minim adipisicing esse Lorem enim. Nulla excepteur esse in dolore enim qui laboris. Ullamco dolor aliqua consectetur labore. Id occaecat ipsum labore nostrud minim id eu quis veniam dolor cillum. Sint ex aute ut velit consequat id ex quis incididunt consequat proident tempor. Laborum laboris irure nulla eiusmod officia proident commodo velit reprehenderit consequat consequat.
                    4. Consectetur est nisi anim cillum exercitation mollit culpa cillum laboris mollit. Adipisicing nostrud in duis eiusmod aliquip esse fugiat. Ipsum id occaecat anim id enim consectetur dolore cupidatat do aliqua. Dolor incididunt quis quis ad est aliqua eiusmod deserunt deserunt dolore labore. Laborum ad labore commodo adipisicing fugiat commodo consequat dolore. Consectetur minim adipisicing esse Lorem enim. Nulla excepteur esse in dolore enim qui laboris. Ullamco dolor aliqua consectetur labore. Id occaecat ipsum labore nostrud minim id eu quis veniam dolor cillum. Sint ex aute ut velit consequat id ex quis incididunt consequat proident tempor. Laborum laboris irure nulla eiusmod officia proident commodo velit reprehenderit consequat consequat.
                    <br>
                    <p><strong>제3조~~~~~~~~~~~~~~~~~</strong></p>
                    1. Consectetur est nisi anim cillum exercitation mollit culpa cillum laboris mollit. Adipisicing nostrud in duis eiusmod aliquip esse fugiat. Ipsum id occaecat anim id enim consectetur dolore cupidatat do aliqua. Dolor incididunt quis quis ad est aliqua eiusmod deserunt deserunt dolore labore. Laborum ad labore commodo adipisicing fugiat commodo consequat dolore. Consectetur minim adipisicing esse Lorem enim. Nulla excepteur esse in dolore enim qui laboris. Ullamco dolor aliqua consectetur labore. Id occaecat ipsum labore nostrud minim id eu quis veniam dolor cillum. Sint ex aute ut velit consequat id ex quis incididunt consequat proident tempor. Laborum laboris irure nulla eiusmod officia proident commodo velit reprehenderit consequat consequat.
                    2. Consectetur est nisi anim cillum exercitation mollit culpa cillum laboris mollit. Adipisicing nostrud in duis eiusmod aliquip esse fugiat. Ipsum id occaecat anim id enim consectetur dolore cupidatat do aliqua. Dolor incididunt quis quis ad est aliqua eiusmod deserunt deserunt dolore labore. Laborum ad labore commodo adipisicing fugiat commodo consequat dolore. Consectetur minim adipisicing esse Lorem enim. Nulla excepteur esse in dolore enim qui laboris. Ullamco dolor aliqua consectetur labore. Id occaecat ipsum labore nostrud minim id eu quis veniam dolor cillum. Sint ex aute ut velit consequat id ex quis incididunt consequat proident tempor. Laborum laboris irure nulla eiusmod officia proident commodo velit reprehenderit consequat consequat.
                    3. Consectetur est nisi anim cillum exercitation mollit culpa cillum laboris mollit. Adipisicing nostrud in duis eiusmod aliquip esse fugiat. Ipsum id occaecat anim id enim consectetur dolore cupidatat do aliqua. Dolor incididunt quis quis ad est aliqua eiusmod deserunt deserunt dolore labore. Laborum ad labore commodo adipisicing fugiat commodo consequat dolore. Consectetur minim adipisicing esse Lorem enim. Nulla excepteur esse in dolore enim qui laboris. Ullamco dolor aliqua consectetur labore. Id occaecat ipsum labore nostrud minim id eu quis veniam dolor cillum. Sint ex aute ut velit consequat id ex quis incididunt consequat proident tempor. Laborum laboris irure nulla eiusmod officia proident commodo velit reprehenderit consequat consequat.
                    4. Consectetur est nisi anim cillum exercitation mollit culpa cillum laboris mollit. Adipisicing nostrud in duis eiusmod aliquip esse fugiat. Ipsum id occaecat anim id enim consectetur dolore cupidatat do aliqua. Dolor incididunt quis quis ad est aliqua eiusmod deserunt deserunt dolore labore. Laborum ad labore commodo adipisicing fugiat commodo consequat dolore. Consectetur minim adipisicing esse Lorem enim. Nulla excepteur esse in dolore enim qui laboris. Ullamco dolor aliqua consectetur labore. Id occaecat ipsum labore nostrud minim id eu quis veniam dolor cillum. Sint ex aute ut velit consequat id ex quis incididunt consequat proident tempor. Laborum laboris irure nulla eiusmod officia proident commodo velit reprehenderit consequat consequat.
                    <br>
                </div>
            </div>
           
            <div class="pop_container" id="layer_3">
                <div class="pop_head">
                    <span>개인정보 제3자 제공에 대한 동의</span>
                    <div class="close_box">
                        <a href="#" class="close">CLOSE</a>
                    </div>
                    
                </div>
                <div class="pop_body">
                    <p><strong>제1조~~~~~~~~~~~~~~~~~~~</strong> </p>
                    1. Consectetur est nisi anim cillum exercitation mollit culpa cillum laboris mollit. Adipisicing nostrud in duis eiusmod aliquip esse fugiat. Ipsum id occaecat anim id enim consectetur dolore cupidatat do aliqua. Dolor incididunt quis quis ad est aliqua eiusmod deserunt deserunt dolore labore. Laborum ad labore commodo adipisicing fugiat commodo consequat dolore. Consectetur minim adipisicing esse Lorem enim. Nulla excepteur esse in dolore enim qui laboris. Ullamco dolor aliqua consectetur labore. Id occaecat ipsum labore nostrud minim id eu quis veniam dolor cillum. Sint ex aute ut velit consequat id ex quis incididunt consequat proident tempor. Laborum laboris irure nulla eiusmod officia proident commodo velit reprehenderit consequat consequat.
                    2. Consectetur est nisi anim cillum exercitation mollit culpa cillum laboris mollit. Adipisicing nostrud in duis eiusmod aliquip esse fugiat. Ipsum id occaecat anim id enim consectetur dolore cupidatat do aliqua. Dolor incididunt quis quis ad est aliqua eiusmod deserunt deserunt dolore labore. Laborum ad labore commodo adipisicing fugiat commodo consequat dolore. Consectetur minim adipisicing esse Lorem enim. Nulla excepteur esse in dolore enim qui laboris. Ullamco dolor aliqua consectetur labore. Id occaecat ipsum labore nostrud minim id eu quis veniam dolor cillum. Sint ex aute ut velit consequat id ex quis incididunt consequat proident tempor. Laborum laboris irure nulla eiusmod officia proident commodo velit reprehenderit consequat consequat.
                    3. Consectetur est nisi anim cillum exercitation mollit culpa cillum laboris mollit. Adipisicing nostrud in duis eiusmod aliquip esse fugiat. Ipsum id occaecat anim id enim consectetur dolore cupidatat do aliqua. Dolor incididunt quis quis ad est aliqua eiusmod deserunt deserunt dolore labore. Laborum ad labore commodo adipisicing fugiat commodo consequat dolore. Consectetur minim adipisicing esse Lorem enim. Nulla excepteur esse in dolore enim qui laboris. Ullamco dolor aliqua consectetur labore. Id occaecat ipsum labore nostrud minim id eu quis veniam dolor cillum. Sint ex aute ut velit consequat id ex quis incididunt consequat proident tempor. Laborum laboris irure nulla eiusmod officia proident commodo velit reprehenderit consequat consequat.
                    4. Consectetur est nisi anim cillum exercitation mollit culpa cillum laboris mollit. Adipisicing nostrud in duis eiusmod aliquip esse fugiat. Ipsum id occaecat anim id enim consectetur dolore cupidatat do aliqua. Dolor incididunt quis quis ad est aliqua eiusmod deserunt deserunt dolore labore. Laborum ad labore commodo adipisicing fugiat commodo consequat dolore. Consectetur minim adipisicing esse Lorem enim. Nulla excepteur esse in dolore enim qui laboris. Ullamco dolor aliqua consectetur labore. Id occaecat ipsum labore nostrud minim id eu quis veniam dolor cillum. Sint ex aute ut velit consequat id ex quis incididunt consequat proident tempor. Laborum laboris irure nulla eiusmod officia proident commodo velit reprehenderit consequat consequat.
                    <br>
                    <p><strong>제2조~~~~~~~~~~~~~~~~~</strong></p>
                    1. Consectetur est nisi anim cillum exercitation mollit culpa cillum laboris mollit. Adipisicing nostrud in duis eiusmod aliquip esse fugiat. Ipsum id occaecat anim id enim consectetur dolore cupidatat do aliqua. Dolor incididunt quis quis ad est aliqua eiusmod deserunt deserunt dolore labore. Laborum ad labore commodo adipisicing fugiat commodo consequat dolore. Consectetur minim adipisicing esse Lorem enim. Nulla excepteur esse in dolore enim qui laboris. Ullamco dolor aliqua consectetur labore. Id occaecat ipsum labore nostrud minim id eu quis veniam dolor cillum. Sint ex aute ut velit consequat id ex quis incididunt consequat proident tempor. Laborum laboris irure nulla eiusmod officia proident commodo velit reprehenderit consequat consequat.
                    2. Consectetur est nisi anim cillum exercitation mollit culpa cillum laboris mollit. Adipisicing nostrud in duis eiusmod aliquip esse fugiat. Ipsum id occaecat anim id enim consectetur dolore cupidatat do aliqua. Dolor incididunt quis quis ad est aliqua eiusmod deserunt deserunt dolore labore. Laborum ad labore commodo adipisicing fugiat commodo consequat dolore. Consectetur minim adipisicing esse Lorem enim. Nulla excepteur esse in dolore enim qui laboris. Ullamco dolor aliqua consectetur labore. Id occaecat ipsum labore nostrud minim id eu quis veniam dolor cillum. Sint ex aute ut velit consequat id ex quis incididunt consequat proident tempor. Laborum laboris irure nulla eiusmod officia proident commodo velit reprehenderit consequat consequat.
                    3. Consectetur est nisi anim cillum exercitation mollit culpa cillum laboris mollit. Adipisicing nostrud in duis eiusmod aliquip esse fugiat. Ipsum id occaecat anim id enim consectetur dolore cupidatat do aliqua. Dolor incididunt quis quis ad est aliqua eiusmod deserunt deserunt dolore labore. Laborum ad labore commodo adipisicing fugiat commodo consequat dolore. Consectetur minim adipisicing esse Lorem enim. Nulla excepteur esse in dolore enim qui laboris. Ullamco dolor aliqua consectetur labore. Id occaecat ipsum labore nostrud minim id eu quis veniam dolor cillum. Sint ex aute ut velit consequat id ex quis incididunt consequat proident tempor. Laborum laboris irure nulla eiusmod officia proident commodo velit reprehenderit consequat consequat.
                    4. Consectetur est nisi anim cillum exercitation mollit culpa cillum laboris mollit. Adipisicing nostrud in duis eiusmod aliquip esse fugiat. Ipsum id occaecat anim id enim consectetur dolore cupidatat do aliqua. Dolor incididunt quis quis ad est aliqua eiusmod deserunt deserunt dolore labore. Laborum ad labore commodo adipisicing fugiat commodo consequat dolore. Consectetur minim adipisicing esse Lorem enim. Nulla excepteur esse in dolore enim qui laboris. Ullamco dolor aliqua consectetur labore. Id occaecat ipsum labore nostrud minim id eu quis veniam dolor cillum. Sint ex aute ut velit consequat id ex quis incididunt consequat proident tempor. Laborum laboris irure nulla eiusmod officia proident commodo velit reprehenderit consequat consequat.
                    <br>
                    <p><strong>제3조~~~~~~~~~~~~~~~~~</strong></p>
                    1. Consectetur est nisi anim cillum exercitation mollit culpa cillum laboris mollit. Adipisicing nostrud in duis eiusmod aliquip esse fugiat. Ipsum id occaecat anim id enim consectetur dolore cupidatat do aliqua. Dolor incididunt quis quis ad est aliqua eiusmod deserunt deserunt dolore labore. Laborum ad labore commodo adipisicing fugiat commodo consequat dolore. Consectetur minim adipisicing esse Lorem enim. Nulla excepteur esse in dolore enim qui laboris. Ullamco dolor aliqua consectetur labore. Id occaecat ipsum labore nostrud minim id eu quis veniam dolor cillum. Sint ex aute ut velit consequat id ex quis incididunt consequat proident tempor. Laborum laboris irure nulla eiusmod officia proident commodo velit reprehenderit consequat consequat.
                    2. Consectetur est nisi anim cillum exercitation mollit culpa cillum laboris mollit. Adipisicing nostrud in duis eiusmod aliquip esse fugiat. Ipsum id occaecat anim id enim consectetur dolore cupidatat do aliqua. Dolor incididunt quis quis ad est aliqua eiusmod deserunt deserunt dolore labore. Laborum ad labore commodo adipisicing fugiat commodo consequat dolore. Consectetur minim adipisicing esse Lorem enim. Nulla excepteur esse in dolore enim qui laboris. Ullamco dolor aliqua consectetur labore. Id occaecat ipsum labore nostrud minim id eu quis veniam dolor cillum. Sint ex aute ut velit consequat id ex quis incididunt consequat proident tempor. Laborum laboris irure nulla eiusmod officia proident commodo velit reprehenderit consequat consequat.
                    3. Consectetur est nisi anim cillum exercitation mollit culpa cillum laboris mollit. Adipisicing nostrud in duis eiusmod aliquip esse fugiat. Ipsum id occaecat anim id enim consectetur dolore cupidatat do aliqua. Dolor incididunt quis quis ad est aliqua eiusmod deserunt deserunt dolore labore. Laborum ad labore commodo adipisicing fugiat commodo consequat dolore. Consectetur minim adipisicing esse Lorem enim. Nulla excepteur esse in dolore enim qui laboris. Ullamco dolor aliqua consectetur labore. Id occaecat ipsum labore nostrud minim id eu quis veniam dolor cillum. Sint ex aute ut velit consequat id ex quis incididunt consequat proident tempor. Laborum laboris irure nulla eiusmod officia proident commodo velit reprehenderit consequat consequat.
                    4. Consectetur est nisi anim cillum exercitation mollit culpa cillum laboris mollit. Adipisicing nostrud in duis eiusmod aliquip esse fugiat. Ipsum id occaecat anim id enim consectetur dolore cupidatat do aliqua. Dolor incididunt quis quis ad est aliqua eiusmod deserunt deserunt dolore labore. Laborum ad labore commodo adipisicing fugiat commodo consequat dolore. Consectetur minim adipisicing esse Lorem enim. Nulla excepteur esse in dolore enim qui laboris. Ullamco dolor aliqua consectetur labore. Id occaecat ipsum labore nostrud minim id eu quis veniam dolor cillum. Sint ex aute ut velit consequat id ex quis incididunt consequat proident tempor. Laborum laboris irure nulla eiusmod officia proident commodo velit reprehenderit consequat consequat.
                    <br>
                </div>
            </div>
        <!-- 레이어 팝업 -->
        <div class="container"><hr></div>
       
    </div>
    <jsp:include page="/WEB-INF/views/layout/footer.jsp"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath }/resources/js/join1.js"></script>
    
</body>
</html>
