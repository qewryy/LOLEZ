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
					<div class="member-scroll-layout__inner" style="position: relative; margin: 0 80px; padding-bottom: 88px;">
						<div class="register-header">
								<h1 class="register-header__logo" style="color: f15f22;">
						LOL.EZ

						</h1>
						</div>
						<div class="sent-mail">
							<h2 class="sent-mail__title">이메일 인증 안내</h2>
						<div class="sent-mail__sub">	
							${memberEmail }(으)로<br> 인증 메일이 발송되었습니다.
						</div>
							<div class="sent-mail__sub sent-mail__sub--small">
								메일을 1시간 이내에 확인한 후 인증 링크를 클릭해야<br> LOL.EZ 회원가입을 완료하실 수 있습니다.
							</div>
							<div class="sent-mail__l-resend">
							<a href=""
								class="sent-mail__confirm-email" target="_blank" id="domainForID">메일 확인하러 가기</a>
								<div class="sent-mail__resend">
									메일을 받지 못하셨나요?
								<button type="button" class="member-button link-button"
									style="position: relative; color: #1ea1f7; text-decoration: underline; padding: 0; background-color: transparent; border: 0; margin-left: 12px;">다시
									보내기</button>
									<a href="${pageContext.request.contextPath }/done" class="member-button link-button"
									style="position: relative; color: #1ea1f7; text-decoration: underline; padding: 0; background-color: transparent; border: 0; margin-left: 12px;">테스트 done</a>
									<a href="${pageContext.request.contextPath }/JoinForm?email=${memberEmail}" class="member-button link-button"
									style="position: relative; color: #1ea1f7; text-decoration: underline; padding: 0; background-color: transparent; border: 0; margin-left: 12px;">test 회원가입 작성부분 이동</a>
								</div>
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
		function back() {
			history.back();
		}

		var domain = [ "@gmail.com", "@naver.com", "@kakao.com", "@nate.com",
				"@yahoo.com", "@daum.net" ];
		var mailPage = [ "https://mail.google.com/mail/",
				"https://mail.naver.com/", "https://mail.kakao.com/",
				"https://mail3.nate.com/", "https://kr.mail.yahoo.com/",
				"https://mail.daum.net/" ]

		var emailok = 0;
		var nameok = 0;
		var domainPageIdx = 0;

		emailDomain = "${memberEmail}";
		console.log(emailDomain);

		for (var i = 0; i < domain.length; i++) {
			if (emailDomain.indexOf(domain[i]) != -1) {
				emailok = 1;
				domainPageIdx = i;

			}
		}
		var testdomain = domain[domainPageIdx];
		console.log('도메인 배열 확인 ' + testdomain);

		switch (domainPageIdx) {
		case 0:
			document.querySelector("a[id='domainForID']").href = "https://mail.google.com/mail/";
			break;

		case 1:
			document.querySelector("a[id='domainForID']").href = "https://mail.naver.com/";
			break;

		case 2:
			document.querySelector("a[id='domainForID']").href = "https://mail.kakao.com/";
			break;

		case 3:
			document.querySelector("a[id='domainForID']").href = "https://mail3.nate.com/";
			break;

		case 4:
			document.querySelector("a[id='domainForID']").href = "https://kr.mail.yahoo.com/";
			break;
		case 5:
			document.querySelector("a[id='domainForID']").href = "https://mail.daum.net/";
			break;

		}

		console.log(domainPageIdx);
	</script>
</body>
</html>