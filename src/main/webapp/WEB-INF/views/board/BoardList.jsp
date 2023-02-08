<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
	<header>
		<!-- Header Start -->
		<%@ include file="/WEB-INF/views/includes/header.jsp"%>
		<!-- Header End -->
	</header>


	<div id=root>
		<div class="Community_card_layout">
			<div class="Community_card_layout_container">
				<div class="Community_card_layout_inner">
					<h1 class="logo1"></h1>
					<div class="Community_content">
						<form action="${pageContext.request.contextPath }/boardWriteForm"
						enctype="multipart/form-data" method="post" class="user">
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
									<tr>
										<td>1512</td>
										<td>테스트 글</td>
										<td>테스터</td>
										<td>2023-02-08</td>
										<td>55</td>
										<td>12</td>
									</tr>
									<tr>
										<td>1512</td>
										<td>테스트 글</td>
										<td>테스터</td>
										<td>2023-02-08</td>
										<td>55</td>
										<td>12</td>
									</tr>

								</tbody>

								<%-- 							<tbody>
								<c:forEach items="${boardList}" var="board">
									<tr>
										<td>${board.bno }</td>
										<td><a style="color: black;"
											href="${pageContext.request.contextPath }/boardView?viewBno=${board.bno }">
												${board.btitle } </a></td>
										<td>${board.bwriter }</td>
										<td>${board.bdate }</td>
										<td>${board.bhits }</td>
										<td>${board.brec }</td>
									</tr>
								</c:forEach>
							</tbody> --%>
							</table>
							<div class="col-sm-6 col-md-5">
								<button type="submit" class="btn btn-lolezColor btn-icon-split">글
									작성하기</button>

							</div>
						</form>

					</div>

				</div>


			</div>


		</div>

	</div>




	<%-- <main>
		<div id="wrapper">
			<!-- Content Wrapper -->
			<div id="content-wrapper" class="d-flex flex-column">
				<!-- Main Content -->
				<div id="content">
					<!-- Begin Page Content -->
					<!-- Page Heading -->
					<h1 class="h3 mb-2 text-gray-800" style="font-size: xxx-large;">커뮤니티</h1>
					<!-- DataTales Example -->

					<form class="card shadow mb-4"
						action="${pageContext.request.contextPath }/boardWriteForm"
						enctype="multipart/form-data" method="post" class="user">
						<div class="container-fluid">
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
											<c:forEach items="${boardList}" var="board">
												<tr>
													<td>${board.bno }</td>
													<td><a style="color: black;"
														href="${pageContext.request.contextPath }/boardView?viewBno=${board.bno }">
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
						</div>
					</form>
				</div>
				<div class="col-sm-6 col-md-5">
					<button type="submit" class="btn btn-lolezColor btn-icon-split">글
						작성하기</button>

				</div>
				<!-- End of Main Content -->


			</div>


		</div>

	</main> --%>


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