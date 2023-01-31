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

	<div id="root" style="background-color: #e4e3e752;">
		<div class="app">
			<div class="member-scroll-layout">
				<div class="member-scroll-layout__bg"></div>
				<div
					style="position: relative; margin: 0 80px; padding-bottom: 88px;">
					<div class="register-header">
						<h1 class="register-header__logo" style="color: f15f22;">
							LOL.EZ</h1>

					</div>
					<h2 style="font-weight: 400; font-size: 24px; line-height: 32px;">이메일
						입력</h2>
					<form
						action="${pageContext.request.contextPath }/EmailAuthentication"
						method="post" onsubmit="return joinFormCheck(this)">
						<div class="email">
							<div class="member-numberformat-input">
								<div class="member-numberformat-input__state">
									<input id="inputEmail" class="member-numberformat-input__box"
										type="email" autocomplete="off" name="email"
										onkeyup="checkEmail(this.value)" placeholder="이메일 주소">
									<span id="emailMsg"></span>
								</div>
							</div>
							<div class="email__1-btn">
								<button type="submit" class="member-button email__btn">인증하기</button>
							</div>
							<div class="login__l-sign-up">
								이미 회원이신가요?
								<a href="${pageContext.request.contextPath }/LoginForm"
									class="member-button link-button age__link-btn" style="position: relative; color: #1ea1f7; text-decoration: underline; padding: 0; background-color: transparent; border: 0; margin-left: 12px;">로그인으로
									돌아가기</a>
							</div>
						</div>

					</form>
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
		function back() {
			history.back();
		}

		var emailok = 0;
		var nameok = 0;

		function checkEmail(emailvar) {

			console.log('접속');
			var domain = [ "@gmail.com", "@naver.com", "@kakao.com",
					"@nate.com", "@yahoo.com", "@daum.net", "@gmail.co",
					"@naver.co", "@kakao.co", "@nate.co", "@yahoo.co" ];
			var checkEmail = 0;

			for (var i = 0; i < domain.length; i++) {
				if (emailvar.indexOf(domain[i]) != -1) {
					checkEmail = 1;
				}
			}

			console.log(checkEmail);

			if (emailvar.length == 0) {
				document.getElementById('emailMsg').innerText = '';
				document.getElementById('emailMsg').style.color = '';
			} else if (checkEmail == 0) {
				document.getElementById('emailMsg').innerText = '사용 가능한 이메일을 사용해주세요';
				document.getElementById('emailMsg').style.color = 'red';
			} else {
				document.getElementById('emailMsg').innerText = '';
				document.getElementById('emailMsg').style.color = '';
				emailok = 1;

			}

			if (emailok == 1) {
				$
						.ajax({
							type : "get",
							url : "${pageContext.request.contextPath }/MemberEmailCheck",
							data : {
								"inputEmail" : emailvar
							},
							success : function(checkResult) {
								console.log(checkResult);
								if (checkResult == 'OK') {
									document.getElementById('emailMsg').innerText = '';
									document.getElementById('emailMsg').style.color = '';
									emailok = 0;
								} else {
									document.getElementById('emailMsg').innerText = '이미 사용중인 이메일 이거나 탈퇴한 이메일입니다!';
									document.getElementById('emailMsg').style.color = 'red';
								}
							}

						});

			}

		}

		function joinFormCheck(joinForm) {

			var formMemail = joinForm.email;
			if (formMemail.value == 0) {
				alert('이메일을 입력 해주세요!');
				formMemail.focus();
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