<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html class="no-js" lang="zxx">
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Transportation HTML-5 Template</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="manifest" href="site.webmanifest">
<link rel="shortcut icon" type="image/x-icon"
	href="${pageContext.request.contextPath }/resources/assets/img/LOL/LOGO.jpg">

<!-- CSS here -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/assets/css/bootstrap.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/assets/css/owl.carousel.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/assets/css/slicknav.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/assets/css/flaticon.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/assets/css/animate.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/assets/css/magnific-popup.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/assets/css/fontawesome-all.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/assets/css/themify-icons.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/assets/css/slick.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/assets/css/nice-select.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/assets/css/style.css">
</head>
<body>

	<main>
		<section class="contact-form-area section-bg  pt-115 pb-120 fix">
			<div class="container">
				<div class="row justify-content-end">
					<!-- Contact wrapper -->
					<div class="col-xl-8 col-lg-9">
						<div class="contact-form-wrapper">
							<!-- From tittle -->
							<div class="row">
								<div class="col-lg-12">
									<!-- Section Tittle -->
									<div class="section-tittle mb-50 ">
										<h2 style="color: #f15f22">LOL.EZ</h2>
									</div>
								</div>
							</div>
							<!-- form -->
							<form action="${pageContext.request.contextPath }/memberJoin"
								class="contact-form" method="post"
								onsubmit="return joinFormCheck(this)">
								<div class="row ">
									<div class="col-lg-12 col-md-6">
										<div class="input-form">
											<input type="email" placeholder="이메일 주소" name="email"
												id="inputEmail" onkeyup="checkEmail(this.value)"> <span
												class="small" id="emailMsg"></span>

										</div>
									</div>
									<div class="col-lg-12 col-md-6">
										<div class="input-form">
											<input type="text" placeholder="닉네임" name="name" id="inputname" onkeyup="checkName(this.value)"> 
											<span class="small"	id=nameMsg></span>
										</div>
									</div>
									<div class="col-lg-12 col-md-6">
										<div class="input-form">
											<input type="date" placeholder="생년월일" name="date">
										</div>
									</div>

									<div class="col-lg-12 col-md-6">
										<div class="input-form">
											<input type="password" placeholder="비밀번호" name="pw"
												id="inputPW" onkeyup="pwcheck(this.value)">
											<div>
												<h3 id="PWrule"></h3>
												<ul>
													<li id="pwcheckMsg1"></li>
													<li id="pwcheckMsg2"></li>
													<li id="pwcheckMsg3"></li>
												</ul>
											</div>
										</div>

									</div>
									<!-- Radio Button -->

									<!-- Button -->
									<div class="col-lg-6">
										<button name="button" class="submit-btn" onclick="back()">취소</button>
									</div>
									<div class="col-lg-6">
										<button name="submit" class="submit-btn">가입하기</button>
									</div>
									<span">이미 회원이신가요? </span> <a
										href="${pageContext.request.contextPath }/LoginForm"
										style="color: #f15f22; text-align: left;">로그인 하기</a>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</section>
	</main>



	<!-- Scroll Up -->
	<div id="back-top">
		<a title="Go to Top" href="#"> <i class="fas fa-level-up-alt"></i></a>
	</div>

	<!-- JS here -->

	<script
		src="${pageContext.request.contextPath }/resources//assets/js/vendor/modernizr-3.5.0.min.js"></script>
	<!-- Jquery, Popper, Bootstrap -->
	<script
		src="${pageContext.request.contextPath }/resources//assets/js/vendor/jquery-1.12.4.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources//assets/js/popper.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources//assets/js/bootstrap.min.js"></script>
	<!-- Jquery Mobile Menu -->
	<script
		src="${pageContext.request.contextPath }/resources//assets/js/jquery.slicknav.min.js"></script>

	<!-- Jquery Slick , Owl-Carousel Plugins -->
	<script
		src="${pageContext.request.contextPath }/resources//assets/js/owl.carousel.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources//assets/js/slick.min.js"></script>
	<!-- One Page, Animated-HeadLin -->
	<script
		src="${pageContext.request.contextPath }/resources//assets/js/wow.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources//assets/js/animated.headline.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources//assets/js/jquery.magnific-popup.js"></script>

	<!-- Nice-select, sticky -->
	<script
		src="${pageContext.request.contextPath }/resources//assets/js/jquery.nice-select.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources//assets/js/jquery.sticky.js"></script>

	<!-- contact js -->
	<script
		src="${pageContext.request.contextPath }/resources//assets/js/contact.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources//assets/js/jquery.form.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources//assets/js/jquery.validate.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources//assets/js/mail-script.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources//assets/js/jquery.ajaxchimp.min.js"></script>

	<!-- Jquery Plugins, main Jquery -->
	<script
		src="${pageContext.request.contextPath }/resources//assets/js/plugins.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources//assets/js/main.js"></script>

	<script type="text/javascript">
		function back() {
			history.back();
		}
		
		var emailok = 0;
		var nameok = 0;
		
 		function checkName(namevar) {
			var SC = ["`", "!", "@","#", "$", "%", "^", "&", "*", "(", ")", "-", "_", "=", "+", "<", ">", "/", "?", "[", "]", "{", "}", "," , "."," "];
			checkSC=0;
			var name  = document.getElementById('inputname').value;
			console.log(name);
			
			/* 사용자가 지정된 특수기호 사용하는지 확인하는 용도 */
			for(var i=0; i<SC.length; i++ )	{
				if(namevar.indexOf(SC[i])!= -1 ){
					checkSC=1;
				}
			}
			var nameOK = 0;
			
			
            // 아이디 입력칸 초기상태가 0 일 경우 출력문은 표시하지 않는다.
            if(name.length == 0){
                document.getElementById('nameMsg').innerText = '';
                document.getElementById('nameMsg').style.color = '';
                // 아이디 입력칸이 3자 미만 8자 이상일 경우 제한 메세지를 출력한다.
            }else if(name.length < 3 || name.length > 8){
                document.getElementById('nameMsg').innerText = '닉네임은 3자 이상 8자 이하로 작성해주세요!';
                document.getElementById('nameMsg').style.color = 'red';
                
                //공백 또는 특수기호가 있으면 제한 메세지를 출력한다.
                if(checkSC == 1){
                    document.getElementById('nameMsg').innerText = '닉네임에는 띄어쓰기 혹은 특수문자는 사용이 불가능합니다!';
                    document.getElementById('nameMsg').style.color = 'red';
                }
                
            }else{
                document.getElementById('nameMsg').innerText = '';
                document.getElementById('nameMsg').style.color = '';
                nameOK = 1;
            }
            
            if(nameOK == 1 ){
				$.ajax({
					type : "get",
					url : "${pageContext.request.contextPath }/MemberNicknameCheck",
					data : {"inputNickname" : namevar},
					success : function (checkResult) {
						console.log(checkResult);
						if(checkResult == 'OK'){
							document.getElementById('nameMsg').innerText = '';
							document.getElementById('nameMsg').style.color = '';
							emailok = 0;
						}else{
							document.getElementById('nameMsg').innerText = '이미 사용중인 이름입니다!';
							document.getElementById('nameMsg').style.color = 'red';
						}
					}
					
					
				});
            }
	
			
		} 
		
		
		
		
		function checkEmail(emailvar) {
			
			console.log('접속');
			var domain = ["@gmail.com","@naver.com","@kakao.com","@nate.com","@yahoo.com","@daum.net","@gmail.co","@naver.co","@kakao.co","@nate.co","@yahoo.co"]; 
			var checkEmail = 0;
			
			for(var i=0; i<domain.length; i++){
				if(emailvar.indexOf(domain[i]) != -1){
					checkEmail=1;
				}
			}

			console.log(checkEmail);
			
			
			if(emailvar.length == 0){
				document.getElementById('emailMsg').innerText = '';
				document.getElementById('emailMsg').style.color = '';
			}else if(checkEmail == 0){
				document.getElementById('emailMsg').innerText = '사용 가능한 이메일을 사용해주세요';
				document.getElementById('emailMsg').style.color = 'red';
			}
			else{
				document.getElementById('emailMsg').innerText = '';
				document.getElementById('emailMsg').style.color = '';
				emailok = 1;
				
			}
			
			if(emailok == 1){
				$.ajax({
					type : "get",
					url : "${pageContext.request.contextPath }/MemberEmailCheck",
					data : {"inputEmail" : emailvar},
					success : function (checkResult) {
						console.log(checkResult);
						if(checkResult == 'OK'){
							document.getElementById('emailMsg').innerText = '';
							document.getElementById('emailMsg').style.color = '';
							emailok = 0;
						}else{
							document.getElementById('emailMsg').innerText = '이미 사용중인 이메일 이거나 탈퇴한 이메일입니다!';
							document.getElementById('emailMsg').style.color = 'red';
						}
					}
					
					
				});
				
			}
			
			
		}
		
		
		function pwcheck(pwval) {
			var pw = document.getElementById('inputPW').value;
			var EN = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"];
			var SC = ["`","~","!","@","#","$","%","^","&","*","(",")","-","_","=","/"];
			
			var email = document.getElementById('inputEmail').value;
			var name  = document.getElementById('inputname').value;
			
			var checkEN=0;
			var checkSC=0;
			
			document.getElementById('PWrule').innerText = '비밀번호 규칙사항';
			document.getElementById('PWrule').style.color = '#c5bebe';
			
			document.getElementById('pwcheckMsg1').innerText = '비밀번호는 닉네임 또는 이메일과 같지 않게 해주세요';
			document.getElementById('pwcheckMsg1').style.color = 'red';
			
			document.getElementById('pwcheckMsg2').innerText = '영문 숫자 기호 중 최소 2개 이상 같이 사용해주세요';
			document.getElementById('pwcheckMsg2').style.color = 'red';
			
			document.getElementById('pwcheckMsg3').innerText = '비밀번호는 기본 6자 이상 16자 이하로 사용해주세요';
			document.getElementById('pwcheckMsg3').style.color = 'red';
			
			
			/* 사용자가 지정된 특수기호 사용하는지 확인하는 용도 */
			for(var i=0; i<SC.length; i++ ){
				if(pw.indexOf(SC[i])!= -1 ){
					checkSC=1;
				}
			}
			
			/* 사용자가 지정된 영문을 사용하는지 확인하는 용도 */
			for(var i=0; i<EN.length; i++ ){
				if(pw.indexOf(EN[i])!= -1 ){
					checkEN=1;
				}
			}

			
			/* 사용자가 이메일 또는 닉네임을 비밀번호랑 동일하게  사용하는지 확인후 처리하는 용도 */
			if(pw!=email || pw!=name){
				document.getElementById('pwcheckMsg1').style.color = '#c5bebe';
				
				if(checkSC != 0 || checkEN != 0){
					document.getElementById('pwcheckMsg2').style.color = '#c5bebe';
				}else{
					document.getElementById('pwcheckMsg2').style.color = 'red';
				}	
				
			}
			else{
				document.getElementById('pwcheckMsg1').style.color = 'red';
			} 
			
 			/* 사용자가 지정된 규칙에 부합하게  사용하는지 확인후 처리하는 용도 */
			if(checkSC != 0 || checkEN != 0){
				document.getElementById('pwcheckMsg2').style.color = '#c5bebe';
			}else{
				document.getElementById('pwcheckMsg2').style.color = 'red';
			}
			
			
			
		var checkLength = 0;
			/* 비밀번호 길이 확인 else면(비밀번호 길이가 옳바름을 의미) 지정된 색으로 변경 그렇지 않을 경우 지정된 색깔로 초기화   */
			if(pw.length < 6 || pw.length > 16){
			document.getElementById('pwcheckMsg3').style.color = 'red';
			checkLength = 1;
			}else{
				document.getElementById('pwcheckMsg3').style.color = '#c5bebe';
			}
			
			
			
		}
		
		
		
		function joinFormCheck(joinForm) {

			
			var formMemail = joinForm.email;
			if (formMemail.value == 0) {
				alert('이메일을 입력 해주세요!');
				formMemail.focus();
				 return false; 
			}
			var formMname = joinForm.name;
			if (formMname.value == 0) {
				alert('닉네임을 입력 해주세요!');
				formMname.focus();
				 return false; 
			}
			var formMdate = joinForm.date;
			if (formMdate.value == 0) {
				alert('생일을 입력 해주세요!');
				formMdate.focus();
				 return false; 
			}

			var formMpw = joinForm.mpw;

			var formMpw = joinForm.pw;

			if (formMpw.value == 0) {
				alert('비밀번호를 입력 해주세요!');
				formMpw.focus();
				 return false; 
			} 
		}
		
		/* 
		<form action="${pageContext.request.contextPath }/memberJoin"
								class="contact-form" method="post"
								onsubmit="return joinFormCheck(this)">
								<div class="row ">
									<div class="col-lg-8 col-md-6">
										<div class="input-form">
											<input type="email" placeholder="이메일 주소" name="email">
										<span>인증 상태</span>
										</div>
									</div>
									<div class="col-lg-4">
										<button name="button" class="submit-btn" onclick="">인증하기</button>
									</div>
									<div class="col-lg-12 col-md-6">
										<div class="input-form">
											<input type="text" placeholder="닉네임" name="name">
										</div>
									</div>
									<div class="col-lg-12 col-md-6">
										<div class="input-form">
											<input type="date" placeholder="생년월일" name="date">
										</div>
									</div>
									<div class="col-lg-12 col-md-6">
										<div class="input-form">
											<input type="password" placeholder="비밀번호" name="pw">
										</div>
									</div>
									<!-- Radio Button -->

									<!-- Button -->
									<div class="col-lg-6">
										<button name="button" class="submit-btn" onclick="back()">취소</button>
									</div>
									<div class="col-lg-6">
										<button name="submit" class="submit-btn">가입하기</button>
									</div>
									<span">이미 회원이신가요? </span> <a
										href="${pageContext.request.contextPath }/LoginForm"
										style="color: #f15f22; text-align: left;">로그인 하기</a>
								</div>
							</form>
		*/

	</script>
</body>
</html>