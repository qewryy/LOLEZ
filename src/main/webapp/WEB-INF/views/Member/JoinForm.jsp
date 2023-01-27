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
	<!--? Preloader Start -->
	<div id="preloader-active">
		<div
			class="preloader d-flex align-items-center justify-content-center">
			<div class="preloader-inner position-relative">
				<div class="preloader-circle"></div>
				<div class="preloader-img pere-text">
					<%-- <img src="${pageContext.request.contextPath }/resources/assets/img/LOL/Loader.jpg" style="width: 100px;" alt="" > --%>
				</div>
			</div>
		</div>
	</div>


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
											<span>인증 상태</span>
											<input type="email" placeholder="이메일 주소" name="email">
										</div>
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