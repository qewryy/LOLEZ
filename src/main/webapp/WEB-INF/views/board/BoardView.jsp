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
	<header>
		<!-- Header Start -->
		<%@ include file="/WEB-INF/views/includes/header.jsp"%>
		<!-- Header End -->
	</header>
	<main>

		<div class="card o-hidden border-0 shadow-lg my-5">
			<div class="card-body p-0 ">
				<!-- Nested Row within Card Body -->
				<div class="row">
					<div class="col-lg-12 ">
						<div class="p-5">
							<form class="user" action="" method="post">
								<div class="form-group row">
									<div class="col-sm-4">
										<label for="inputTitle" class="font-weight-bold">글제목</label> <input
											name="btitle" type="text" id="inputTitle"
											class="form-control form-control-user" readonly="readonly"
											value="${board.btitle }">
									</div>

									<div class="col-md-4">
										<label for="inputbwriter" class="form-label">작성자</label> <input
											type="text" name="bwriter" class="form-control"
											id="inputbwriter" value="${board.bwriter}"
											readonly="readonly">
									</div>

									<div class="col-md-4">
										<label for="inputbdate" class="form-label">작성일</label> <input
											type="text" name="bdate" class="form-control" id="inputbdate"
											value="${board.bdate}" readonly="readonly">
									</div>
								</div>
								<div class="form-group">
									<label for="inputContent" class="font-weight-bold">글내용</label>
									<textarea name="bcontent" id="inputContent"
										class="form-control" rows="20" cols="5" readonly="readonly">${board.bcontent }</textarea>
								</div>

								<div class="form-group row" style=text-align: center;"">
										<button class="btn btn-primary btn-user btn-block"
											type="button">수정하기</button>


								</div>


							</form>

						</div>
					</div>
				</div>
			</div>
		</div>

		</div>

	</main>
	<footer>
		<!--? Footer Start-->
		<%@ include file="/WEB-INF/views/includes/footer.jsp"%>
		<!-- Footer End-->
	</footer>
	<!-- Scroll Up -->


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

</body>
</html>