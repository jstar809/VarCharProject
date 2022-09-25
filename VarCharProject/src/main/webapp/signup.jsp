<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
   <%@ taglib tagdir="/WEB-INF/tags" prefix="koala" %>

<!DOCTYPE html>
<html>
<head>
<title>VARCHAR</title>
 <link rel="shortcut icon" href="./images/vc.ico" >
<meta charset="utf-8" />
<meta name="viewport"
   content="width=device-width, initial-scale=1, shrink-to-fit=no" />

<link
   href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800&display=swap"
   rel="stylesheet" />

<link rel="stylesheet" href="css/open-iconic-bootstrap.min.css" />
<link rel="stylesheet" href="css/animate.css" />

<link rel="stylesheet" href="css/owl.carousel.min.css" />
<link rel="stylesheet" href="css/owl.theme.default.min.css" />
<link rel="stylesheet" href="css/magnific-popup.css" />

<link rel="stylesheet" href="css/aos.css" />

<link rel="stylesheet" href="css/ionicons.min.css" />

<link rel="stylesheet" href="css/bootstrap-datepicker.css" />
<link rel="stylesheet" href="css/jquery.timepicker.css" />

<link rel="stylesheet" href="css/flaticon.css" />
<link rel="stylesheet" href="css/icomoon.css" />
<link rel="stylesheet" href="css/style.css" />
<link rel="stylesheet" href="./css/signup.css" />
<script src="https://code.jquery.com/jquery-3.6.1.min.js"
   integrity="sha256-o88AwQnZB+VDvE9tvIXrMQaPlFFSUTR+nldQm1LuPXQ="
   crossorigin="anonymous"></script>

</head>
<body>
   <koala:nav />
   <!-- END nav -->

   <section class="hero-wrap hero-wrap-2 js-fullheight"
      style="background-image: url('images/bg_3.jpg')"
      data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
         <div
            class="row no-gutters slider-text js-fullheight align-items-end justify-content-start">
            <div class="col-md-9 ftco-animate pb-5">
               <p class="breadcrumbs">
                  <span class="mr-2"><a href="index.html">Home <i
                        class="ion-ios-arrow-forward"></i>
                  </a></span>
               </p>
               <h1 class="mb-3 bread">SignUp</h1>
            </div>
         </div>
      </div>
   </section>
   <!----------------------회원가입 form------------------------->
   <div class="joinbox">
      <div id="signupContainer">
         <form action="insertM.do" class="contact-form" data-aos="fade-up"
            data-aos-delay="200">
            <div class="inputbox">
               <label class="text-black" for="id">ID</label>
               <div id="idboxtop">
                  <span id="idinput"> <input type="text" class="form-control"
                     id="id" name="mid" placeholder="아이디" autocomplete="off" />
                  </span>
                  <button type="button" id="idboxbottomright" disabled>중복확인</button>
               </div>
               <div id="checkidResultBox">
                  <span id="checkidResult"></span>
               </div>
               <div class="warnbox">
                  <span>- 영문, 숫자 조합 (특수문자 불가)</span>
               </div>
               <!-- <div id="idboxbottom">
                <span id="idboxbottomleft"
                  >본인 소유의 이메일 계정이 아닐 경우 임의로 삭제될 수
                  있습니다.</span
                >
                <button id="idboxbottomright">중복확인</button>
              </div> -->
            </div>

            <div class="inputbox">
               <label class="text-black" for="fname">Password</label>
               <div id="pwboxtop">
                  <input type="text" class="form-control"
                     placeholder="비밀번호(영문 숫자 조합, 8~12자리)" id="password" name="mpw"
                     autocomplete="off" />
               </div>
               <div class="warnbox">-영문,숫자 조합 8~12자리 (특수문자 포함가능)</div>
               <label class="text-black checkPwLabel" for="fname">Check
                  Password</label>
               <div id="pwboxbottom">
                  <input type="text" class="form-control" placeholder="비밀번호 확인"
                     id="passwordck" autocomplete="off" />
               </div>
               <div class="warnbox">
                  <span>비밀번호와 비밀번호 확인이 불일치합니다.</span>
               </div>
            </div>
            <div class="inputbox">
               <label class="text-black" for="fname">Name</label>
               <div id="namebox">
                  <input type="text" class="form-control" placeholder="이름(실명)"
                     id="nameinput" name="mname" autocomplete="off" />
               </div>
               <div class="warnbox">
                  <span>-한글(2 ~ 4개 문자) / 영어(성,이름 각각 2 ~ 10 문자)</span>
               </div>
            </div>

            <div class="inputbox">
               <label class="text-black" for="fname">Nickname</label>
               <div id="nicknamebox">
                  <input type="text" class="form-control" placeholder="닉네임"
                     id="nicknameinput" name="mnickname" autocomplete="off" />
               </div>
               <div class="warnbox">
                  <span>-영문, 숫자, 한글을 자유롭게 입력해주세요! (특수문자 불가)</span>
               </div>
            </div>


            <div class="inputbox">
               <label class="text-black" for="fname">Address</label>
               <div id="addressbox">
                  <input type="text" class="form-control" placeholder="주소"
                     id="addressinput" name ="madd" autocomplete="off"  />
                     <button id="searchAddressBtn" type="button"  onclick="kakaoaddress()" >주소찾기</button>
                  </div>
                     <div class="warnbox">
                  <span>주소를 입력해주세요!</span>
               </div>
            </div>
            
            
            
            <div class="inputbox">
               <label class="text-black" for="fname">Detailed Address</label>
               <div id="detailedAddressbox">
                  <input type="text" class="form-control" placeholder="상세 주소"
                     id="detailedAddressinput" name="maddDetail" autocomplete="off" />
               </div>
               <div class="warnbox">
                  <span>상세 주소를 입력해주세요!</span>
               </div>
            </div>


            <div class="inputbox">
               <label class="text-black" for="fname">Phone</label>
               <div id="phonebox">
                  <div id="phoneboxleft">
                     <input type="text" class="form-control"
                        placeholder="휴대폰번호(숫자만 입력)" id="phoneinput" name="mphone"
                        autocomplete="off" />
                  </div>
                  <button id="phoneboxright" type="button" disabled>인증번호 발송
                  </button>
               </div>
               <div class="warnbox">-전화 번호형식에 맞게 적어주세요</div>

               <!-- 인증번호 입력 -->
               <div id="phonebox" class="certificateBox">
                  <div id="phoneboxleft">
                     <input type="text" placeholder="인증번호" id="certificateInput"
                        autocomplete="off" />
                  </div>
                  <button id="certificateCheckBtn" type="button">
                     인증번호 확인<span id="timer"></span>
                  </button>
               </div>
               <div id="checkResultBox">
                  <span id="checkResult"></span>
               </div>
            </div>

            <div class="inputbox">
               <label class="text-black" for="fname">Email</label>
               <div id="emailboxtop">
                  <span id="emailinput"> <input type="email"
                     class="form-control" id="email" name="memail" placeholder="이메일"
                     autocomplete="off" />
                  </span>
               </div>
               <div class="warnbox">
                  <span>-이메일 형식이 잘못 되었습니다.</span>
               </div>
               <div id="emailboxbottom">
                  <span id="emailboxbottomleft">본인 소유의 이메일 계정이 아닐 경우 임의로 삭제될
                     수 있습니다.</span>
                  <!-- <button id="emailboxbottomright">중복확인</button> -->
               </div>
            </div>

<!--             <div class="inputbox">
               <label class="text-black" for="fname">Birth</label>
               <div id="birthbox">
                  <div id="birthboxleft">
                     <input type="text" class="form-control"
                        placeholder="생년월일(예 : 19900101)" id="birthinput"
                        autocomplete="off" />
                  </div> -->
                  
                  <!-- <div id="birthboxright">
                     <span><input type="radio" class="genderbox"
                        checked="checked" name="gender" id="male" />&nbsp;&nbsp;남</span> <span><input
                        type="radio" class="genderbox" name="gender" id="female" />&nbsp;&nbsp;여</span>
                  </div> -->
                  
<!--                </div>
               <div class="warnbox">-생년월일 8자리를 입력해주세요.</div>
            </div> -->
            
            <div class="inputbox" id="infoValidation">
               <div id="myinfock">
                  <strong>개인정보 유효기간&nbsp;</strong>
                  <button type="button" class="btn_infomore"></button>
               </div>
               <div class="hiddenbox">
                  <ul class="hiddenboxul">
                     <li>3년 이상으로 설정하시면 장기 미 이용 시에 휴면계정으로 전환되지 않고 노랑풍선 회원으로 유지되어
                        다양한 혜택을 이용하실 수 있습니다.</li>
                     <li>개인정보 파기 또는 분리 저장·관리하는 서비스 미이용 기간을 위의 선택 기간으로 요청합니다.</li>
                     <li>별도의 요청(선택)이 없으실 경우 서비스 미이용 기간은 1년(기본값)으로 설정됩니다.</li>
                  </ul>
               </div>
               <div>
                  <span class="yearbox"><input type="radio"
                     class="yearboxcheck" checked="checked" name="year" />&nbsp;&nbsp;회원
                     탈퇴 시 까지</span> <span class="yearbox"><input type="radio"
                     class="yearboxcheck" checked="checked" name="year" />&nbsp;&nbsp;5년</span>
                  <span class="yearbox"><input type="radio"
                     class="yearboxcheck" checked="checked" name="year" />&nbsp;&nbsp;3년</span>
                  <span class="yearbox"><input type="radio"
                     class="yearboxcheck" checked="checked" name="year" />&nbsp;&nbsp;1년</span>
               </div>
            </div>

            <div id="inputbox">
               <div id="agreeboxtop">
                  <span><input type="checkbox" id="agree1"
                     class="agreeck agreeEssentialAll" /><label for="agree1"
                     class="agreelabel">&nbsp;(필수) 약관 전체 동의</label></span>
                  <!-- <span
                ><input type="checkbox" id="agree2" class="agreeck" /><label
                  for="agree2"
                  class="agreelabel"
                  >&nbsp;(선택) 약관 전체 동의</label
                ></span
              > -->
               </div>
               <div id="agreeboxbottom">
                  <ul id="agreeul">
                     <li class="agreeli"><input type="checkbox" id="agree3"
                        class="agreeck agreeEssential" /><label for="agree3"
                        class="agreelabel">&nbsp;(필수) VARCHAR 이용약관 동의</label></li>
                     <li class="agreeli"><input type="checkbox" id="agree4"
                        class="agreeck agreeEssential" /><label for="agree4"
                        class="agreelabel">&nbsp;(필수) 만14세 이상 확인</label></li>
                     <li class="agreeli"><input type="checkbox" id="agree5"
                        class="agreeck agreeEssential" /> <label for="agree5"
                        class="agreelabel">&nbsp;(필수) 개인정보 수집 및 이용 동의</label></li>
                     <li class="agreeli"><input type="checkbox" id="agree6"
                        class="agreeck agreeOptional" /><label for="agree6"
                        class="agreelabel">&nbsp;(선택) 개인정보 수집 및 이용 동의</label></li>
                     <li class="agreeli"><span><input type="checkbox"
                           id="agree7" class="agreeck agreeOptional agreeMarketMsg" /><label
                           for="agree7" class="agreelabel">&nbsp;(선택) 마케팅 정보 수신 동의</label></span>
                        <div id="agreelibottom">
                           <span><input type="checkbox"
                              class="checkboxbottom agreeck marketMsg" id="agree8" /><label
                              for="agree8" class="agreelabel">&nbsp;이메일</label></span> <span><input
                              type="checkbox" class="checkboxbottom agreeck marketMsg"
                              id="agree9" /><label for="agree9" class="agreelabel">&nbsp;SMS</label></span>
                        </div></li>
                  </ul>
               </div>
            </div>
            <button type="submit" id="submitbox" disabled>가입완료</button>
         </form>
      </div>
   </div>

   <!------------------------------>

   <footer class="ftco-footer ftco-bg-dark ftco-section">
      <div class="container">
         <div class="row mb-5">
            <div class="col-md">
               <div class="ftco-footer-widget mb-4">
                  <h2 class="ftco-heading-2">
                     <a href="#" class="logo">Car<span>book</span></a>
                  </h2>
                  <p>Far far away, behind the word mountains, far from the
                     countries Vokalia and Consonantia, there live the blind texts.</p>
                  <ul
                     class="ftco-footer-social list-unstyled float-md-left float-lft mt-5">
                     <li class="ftco-animate"><a href="#"><span
                           class="icon-twitter"></span></a></li>
                     <li class="ftco-animate"><a href="#"><span
                           class="icon-facebook"></span></a></li>
                     <li class="ftco-animate"><a href="#"><span
                           class="icon-instagram"></span></a></li>
                  </ul>
               </div>
            </div>
            <div class="col-md">
               <div class="ftco-footer-widget mb-4 ml-md-5">
                  <h2 class="ftco-heading-2">Information</h2>
                  <ul class="list-unstyled">
                     <li><a href="#" class="py-2 d-block">About</a></li>
                     <li><a href="#" class="py-2 d-block">Services</a></li>
                     <li><a href="#" class="py-2 d-block">Term and Conditions</a>
                     </li>
                     <li><a href="#" class="py-2 d-block">Best Price
                           Guarantee</a></li>
                     <li><a href="#" class="py-2 d-block">Privacy &amp;
                           Cookies Policy</a></li>
                  </ul>
               </div>
            </div>
            <div class="col-md">
               <div class="ftco-footer-widget mb-4">
                  <h2 class="ftco-heading-2">Customer Support</h2>
                  <ul class="list-unstyled">
                     <li><a href="#" class="py-2 d-block">FAQ</a></li>
                     <li><a href="#" class="py-2 d-block">Payment Option</a></li>
                     <li><a href="#" class="py-2 d-block">Booking Tips</a></li>
                     <li><a href="#" class="py-2 d-block">How it works</a></li>
                     <li><a href="#" class="py-2 d-block">Contact Us</a></li>
                  </ul>
               </div>
            </div>
            <div class="col-md">
               <div class="ftco-footer-widget mb-4">
                  <h2 class="ftco-heading-2">Have a Questions?</h2>
                  <div class="block-23 mb-3">
                     <ul>
                        <li><span class="icon icon-map-marker"></span><span
                           class="text">203 Fake St. Mountain View, San Francisco,
                              California, USA</span></li>
                        <li><a href="#"><span class="icon icon-phone"></span><span
                              class="text">+2 392 3929 210</span></a></li>
                        <li><a href="#"><span class="icon icon-envelope"></span><span
                              class="text">info@yourdomain.com</span></a></li>
                     </ul>
                  </div>
               </div>
            </div>
         </div>
         <div class="row">
            <div class="col-md-12 text-center">
               <p>
                  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                  Copyright &copy;
                  <script>
                document.write(new Date().getFullYear());
              </script>
                  All rights reserved | This template is made with <i
                     class="icon-heart color-danger" aria-hidden="true"></i> by <a
                     href="https://colorlib.com" target="_blank">Colorlib</a>
                  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
               </p>
            </div>
         </div>
      </div>
   </footer>

   <!-- loader -->
   <div id="ftco-loader" class="show fullscreen">
      <svg class="circular" width="48px" height="48px">
        <circle class="path-bg" cx="24" cy="24" r="22" fill="none"
            stroke-width="4" stroke="#eeeeee" />
        <circle class="path" cx="24" cy="24" r="22" fill="none"
            stroke-width="4" stroke-miterlimit="10" stroke="#F96D00" />
      </svg>
   </div>

   <script src="js/jquery.min.js"></script>
   <script src="js/jquery-migrate-3.0.1.min.js"></script>
   <script src="js/popper.min.js"></script>
   <script src="js/bootstrap.min.js"></script>
   <script src="js/jquery.easing.1.3.js"></script>
   <script src="js/jquery.waypoints.min.js"></script>
   <script src="js/jquery.stellar.min.js"></script>
   <script src="js/owl.carousel.min.js"></script>
   <script src="js/jquery.magnific-popup.min.js"></script>
   <script src="js/aos.js"></script>
   <script src="js/jquery.animateNumber.min.js"></script>
   <script src="js/bootstrap-datepicker.js"></script>
   <script src="js/jquery.timepicker.min.js"></script>
   <script src="js/scrollax.min.js"></script>
   <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
   <script src="js/google-map.js"></script>
   <script src="js/main.js"></script>
   <script src="js/signup.js"></script>
   <!-- 카카오 주소 API -->
   <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
   

   <script type="text/javascript">
   let timer;
   let isRunning = false; // 타이머 작동 여부
   // 인증번호 발송 버튼
   const certificateCheckBtn = document.getElementById("certificateCheckBtn");
   // 아이디 중복검사 버튼
   const idDoubleCheckBtn = document.getElementById("idboxbottomright");

   let number = 0;//인증할 번호를 저장할 변수

   // 인증번호 발송하고 타이머 함수 실행
   function sendAuthNum() {
     // 남은 시간(초) 아래에서 setting(leftSec)
     const leftSec = 180;
     display = document.querySelector("#timer");
     // 이미 타이머가 작동중이면 중지
     certificateCheckBtn.disabled = false;
     certificateCheckBtn.style.backgroundColor = "#01d28e";
     certificateCheckBtn.style.cursor = "pointer";
     // console.log("로그 : 시작  " + isRunning);
     if (isRunning) {
       // console.log("로그 : 다시 누르기 " + isRunning);
       number = 0; // 인증번호 초기화
       clearInterval(timer);
     }
     startTimer(leftSec, display);
   }

   function startTimer(count, display) {
      console.log("로그 : startTimer 시작");
      //문자 API
       const phone = $("#phoneinput").val();
       console.log("로그 : phone " + phone );
          $.ajax({
             type:'POST',
             url: '${pageContext.request.contextPath}/sendMSG',
             data: {phone:phone},
             
             success: function(randomNumber){
                console.log("로그: ["+randomNumber+"]")
                if(randomNumber != null){
                   $('#checkResult').text("인증번호 전송 완료");
                   $('#checkResult').css("color", "blue");
                
                   number = randomNumber;
                   
                }else{
                   console.log("로그: ["+randomNumber+"]")
                   $('#checkResult').text("인증번호 전송 불가");
                   $('#checkResult').css("color", "red");
                }
             }, 
            error: function(request, status, error){ // 서블릿에서 에러 발생 시 
               console.log("code: "+request.status);
               console.log("message: "+request.responseText);
               console.log("error: "+error);
            }
    
          });
       // 타이머 시작
         console.log("로그 : 타이머 시작");
           isRunning = true;
           let minutes, seconds;
           timer = setInterval(function () {
          minutes = parseInt(count / 60, 10);
          seconds = parseInt(count % 60, 10);
          minutes = minutes < 10 ? "0" + minutes : minutes;
          seconds = seconds < 10 ? "0" + seconds : seconds;
          display.textContent = " (" + minutes + ":" + seconds + ")";
          
          // 타이머 끝
          if (--count < 0) {
            clearInterval(timer);
            display.textContent = "";
            isRunning = false;
            number = 0; // 인증번호 초기화
            certificateCheckBtn.disabled = true;
            certificateCheckBtn.style.backgroundColor = "rgb(222, 229, 236)";
            certificateCheckBtn.style.cursor = "no-drop";
            // console.log("로그 : 종료  " + isRunning);
          }
     }, 1000);
   }

   // 인증번호 발송 버튼 (signup.js 에 선언)
   // const certificateBtn = document.getElementById("phoneboxright");
   
   certificateBtn.onclick = sendAuthNum;
   
   certificateCheckBtn.onclick = function sendCheck(){
         const checkNum = $("#certificateInput").val();
         
         $.ajax({
            type:'POST',
            url: '${pageContext.request.contextPath}/sendCheck',
            data : {randomNumber:number, checkNum:checkNum},
            success: function(result){
               console.log("로그: ["+result+"]");
               if(result ==1){
                  $('#checkResult').text("본인 인증 성공!");
                  $('#checkResult').css("color", "#01d28e");   
                
                  $('#timer').remove();//타이머 제거 
            // 성공하면 인증번호 발송 / 확인 버튼 비활성화           
                  certificateCheckBtn.disabled = true; 
                  document.getElementById("phoneboxright").style.backgroundColor = "rgb(222, 229, 236)";
                  document.getElementById("phoneboxright").disabled = true;
                  document.getElementById("phoneboxright").style.cursor = "no-drop";
               }
               else{
                  $('#checkResult').text("인증번호 불일치!");
                  $('#checkResult').css("color", "#eb5a46");   
                  certificateCheckBtn.disabled = false;
               }
             }
          });
      }
   
   //아이디 중복검사
   idDoubleCheckBtn.onclick = function IDcheck() {
      const mid = $("#id").val();
      $.ajax({
         type : 'GET',
         url : '${pageContext.request.contextPath}/IDCheck?mid='+mid, 
         success : function(result) {
            console.log("로그 : [" + result + "]");
            if(result == 1) {
               $('#checkidResult').text("사용가능한 아이디");
               $('#checkidResult').css("color", "blue");
            } else {
               $('#checkidResult').text("이미 사용중인 아이디");
               $('#checkidResult').css("color", "red");
            }
         },
         error : function(request, status, error) {
            console.log("code : " + request.status);
            console.log("message : " + request.responseText);
            console.log("error : " + error);
         }
      });
   }
    
   // 카카오 주소 API 
   function kakaoaddress() {
       new daum.Postcode({
           oncomplete: function(data) {
              document.querySelector("#addressinput").value =  data.address
           }
       }).open();
   }
   
    </script>
</html>