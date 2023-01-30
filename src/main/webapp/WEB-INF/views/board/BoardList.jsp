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

<!-- Custom styles for this page -->
<link
	href="${pageContext.request.contextPath }/resources/assets/datatables/dataTables.bootstrap4.min.css"
	rel="stylesheet">

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
	<!-- Preloader Start -->
	<header>
		<!-- Header Start -->
		<div class="header-area">
			<div class="main-header ">
				<div class="header-top d-none d-lg-block">
					<div class="container">
						<div class="col-xl-12">
							<div
								class="row d-flex justify-content-between align-items-center">

								<!--                             <div class="header-info-left">
                                <ul>     
                                    <li>Phone: +99 (0) 101 0000 888</li>
                                    <li>Email: noreply@yourdomain.com</li>
                                </ul>
                            </div> -->

								<!--                           <div class="header-info-right">
                                <ul class="header-social"> 
                                    <li><a href="#"><i class="fab fa-twitter"></i></a></li>
                                    <li><a href="#"><i class="fab fa-facebook-f"></i></a></li>
                                    <li><a href="#"><i class="fab fa-linkedin-in"></i></a></li>
                                    <li> <a href="#"><i class="fab fa-google-plus-g"></i></a></li>
                                </ul>
                            </div> -->
							</div>
						</div>
					</div>
				</div>
				<div class="header-bottom  header-sticky";">
					<div class="container">
						<div class="row align-items-center">
							<!-- Logo -->
							<div class="col-xl-2 col-lg-2">
								<div class="logo">
									<a href="${pageContext.request.contextPath }/"><img
										src="${pageContext.request.contextPath }/resources/assets/img/LOL/LOGO.jpg"
										style="width: 200px;" alt=""></a>
								</div>
							</div>
							<div class="col-xl-10 col-lg-10">
								<div
									class="menu-wrapper  d-flex align-items-center justify-content-end">
									<!-- Main-menu -->
									<div class="main-menu d-none d-lg-block">
										<nav>
											<ul id="navigation">
												<li><a href="${pageContext.request.contextPath }/">홈</a></li>
												<li><a href="about.html">챔피언 분석</a></li>
												<li><a href="services.html">통계</a></li>
												<li><a href="blog.html">랭킹</a> <!--                                                 <ul class="submenu">
                                                    <li><a href="blog.html">Blog</a></li>
                                                    <li><a href="blog_details.html">Blog Details</a></li>
                                                    <li><a href="elements.html">Element</a></li>
                                                </ul> --></li>
												<li><a
													href="${pageContext.request.contextPath }/boardList">커뮤니티</a></li>
											</ul>
										</nav>
									</div>
									<!-- Header-btn -->
									<div class="header-right-btn d-none d-lg-block ml-20">
										<a href="${pageContext.request.contextPath }/LoginForm"
											class="btn header-btn">로그인</a>
									</div>
								</div>
							</div>
							<!-- Mobile Menu -->
							<div class="col-12">
								<div class="mobile_menu d-block d-lg-none"></div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Header End -->
	</header>
	<main>
		<div id="wrapper">

			<!-- Content Wrapper -->
			<div id="content-wrapper" class="d-flex flex-column">

				<!-- Main Content -->
				<div id="content">

					<!-- Begin Page Content -->
					<div class="container-fluid">

						<!-- Page Heading -->
						<h1 class="h3 mb-2 text-gray-800">커뮤니티</h1>
						<!-- DataTales Example -->

						<form class="card shadow mb-4"
							action="${pageContext.request.contextPath }/boardWrite"
							enctype="multipart/form-data" method="post" class="user">
							<!-- <div class="card shadow mb-4">  -->
							<div class="card-body">
								<div class="table-responsive">
									<table class="table table-bordered" id="dataTable" width="100%"
										cellspacing="0">
										<thead>
											<tr>
												<th>번호</th>
												<th>제목</th>
												<th>작성자</th>
												<th>날짜</th>
												<th>조회수</th>
												<th>추천수</th>
											</tr>
										</thead>
										<tfoot>
											<tr>
											</tr>
										</tfoot>

										<tbody>
											<c:forEach items="${boardList }" var="board">
												<tr>
													<td>${board.bno }</td>
													<td><a
														href="${pageContext.request.contextPath }/BoardView?viewBno=${board.bno }">
															${board.btitle } </a></td>
													<td>${board.bwriter }</td>
													<td>${board.bdate }</td>
													<td>${board.bhits }</td>
													<td>${board.brec }</td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
								</div>
							</div>
							<!-- </div> -->
							<div class="row">

								<!-- btn-lolezColor -> resources/assets/css/bootstarp.min.css line:2309 -->

							</div>
					</div>
					<!-- /.container-fluid -->

				</div>
				<div class="col-sm-6 col-md-5">
					<button type="submit" class="btn btn-lolezColor btn-icon-split">글
						작성하기</button>

				</div>
				</form>
				<!-- End of Main Content -->

				<!-- Footer -->
				<!-- 			<footer class="sticky-footer bg-white">
				<div class="container my-auto">
					<div class="copyright text-center my-auto">
						<span>Copyright &copy; Your Website 2020</span>
					</div>
				</div>
			</footer> -->
				<!-- End of Footer -->

			</div>
			<!-- End of Content Wrapper -->

		</div>
		<!-- End of Page Wrapper -->


	</main>


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


	<!-- Page level plugins -->
	<script
		src="${pageContext.request.contextPath }/resources/assets/datatables/jquery.dataTables.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources/assets/datatables/dataTables.bootstrap4.min.js"></script>

	<!-- Page level custom scripts -->
	<script
		src="${pageContext.request.contextPath }/resources/assets/js/demo/datatables-demo.js"></script>

</body>
</html>