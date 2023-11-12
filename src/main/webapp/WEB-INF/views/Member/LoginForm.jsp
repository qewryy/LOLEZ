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
	<div id="root">
		<div class="app">
			<div class="member-card-layout">
				<div class="member-card-layout__container">
					<div class="member-card-layout__inner">
						<a href="${pageContext.request.contextPath }/"><h1 class="member-card-layout__logo" style="font-size: xxx-large;">
							LOL.EZ</h1></a>
						<div class="login">

								<h2 class="login__fb-title h2_mg0" style="text-align:center; font-size:2em;">이메일 로그인</h2>
								<!-- 간편로그인 표시부  -->
<!-- 
								페이스북 버튼 시작
								<button type="button" style="background-color: #3c5a99;"
									class="member-button facebook-button login__fb-btn">
									<span class="facebook-button__inner"><img
										src="https://member.op.gg/icon_facebook_wh.6ab689d7.svg"
										class="facebook-button__img" width="24" height="24"
										alt="facebook"><span class="facebook-button__txt">페이스북으로
											로그인</span></span>
								</button>
								페이스북 버튼 종료

								애플 버튼 시작
								<button type="button" style="background-color: #212529;"
									class="member-button apple-button login__apple-btn">
									<span class="apple-button__inner"><img
										src="https://member.op.gg/logo_apple.dca28233.svg"
										class="apple-button__img" width="24" height="24" alt="apple"><span
										class="apple-button__txt">Apple로 로그인</span></span>
								</button>
								애플 버튼 종료
 -->
							<form  action="${pageContext.request.contextPath }/memberLogin" 
							onsubmit="return LoginFormCheck(this)" method="post">

								<div class="login__l-or" style="">E-MAIL</div>
								<!--로그인 경계부   -->


								<!--로그인 (이메일 시작부분)   -->
								<div class="member-input">
									<div class="member-input__state">
										<input id="inputEmail" class="member-input__box" type="text"
											autocomplete="off" name="inputMemail" placeholder="이메일 주소"
											style="border: 0; padding: 0"> <span id="emailMsg"></span>
									</div>
								</div>
								<div class="member-input">
									<div class="member-input__state">
										<input id="inputPw" class="member-input__box" type="password"
											autocomplete="off" name="inputMpw" placeholder="비밀번호"
											style="border: 0; padding: 0"> <span id="PwMsg"></span>
									</div>
								</div>
							<!-- 	<div class="login__l">
									<div class="login__checkbox">
										<div class="member-checkbox">
											<span class="member-checkbox__state"><input
												id="memberCheckbox5944" type="checkbox"
												class="member-checkbox__input"></span><label
												for="memberCheckbox5944" class="member-checkbox__label">로그인
												상태 유지하기</label>
								<span class="login__find-password-btn"><a
									class="member-link" href="/find/reset-password/send-email"
									style="position: relative; color: #1ea1f7; text-decoration: underline; padding: 0; background-color: transparent; border: 0;">비밀번호를
										잊으셨나요?</a></span>
										</div>
									</div>
								</div> -->
								<button type="submit" class="member-button login__btn"
									style="margin-top: 40px; width: 100%;">로그인</button>

								<!--로그인 (이메일 종료부분)   -->

								<!-- 회원가입 버튼 부분 -->
								<div class="login__l-sign-up">
									LOL.EZ가 처음이신가요? <span class="login__sign-up-link"><a style="position: relative; color: #1ea1f7; text-decoration: underline; padding: 0; background-color: transparent; border: 0;"
										class="member-link" href="${pageContext.request.contextPath }/JoinFormEmail">회원가입하기</a></span>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	

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
		function LonginFormCheck(LoginForm) {
			var memail = LoginForm.inputEmail;
			var mpw = LoginForm.inputMpw;
			
			console.log(memail);
			console.log(mpw);
			
			if (memail.length == 0) {
				// 아이디 입력이 없는 상태 의미
				memail.focus();
				alert('아이디를 입력해주세요!');
				return false;
			}

			if (mpw.length == 0) {
				// 비밀번호 입력이 없는 상태를 의미
				mpw.focus();
				alert('비밀번호를 입력해주세요!');
				return false;
			}

		}
</script>	