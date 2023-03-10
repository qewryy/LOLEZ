<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html class="no-js" lang="zxx">
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Transportation HTML-5 Template</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="manifest" href="site.webmanifest">
<link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath }/resources/assets/img/LOL/LOGO.jpg">

<!-- CSS here -->
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/owl.carousel.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/slicknav.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/flaticon.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/animate.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/magnific-popup.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/fontawesome-all.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/themify-icons.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/slick.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/nice-select.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/style.css">
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
							<form class="user" action="${pageContext.request.contextPath }/boardModify" method="post" accept-charset="UTF-8">
								<div class="form-group row">
									<div class="col-sm-4">
										<input name="bno" type="hidden" value="${board.bno}"> <label for="inputTitle" class="font-weight-bold">글제목</label> <input name="btitle" type="text" id="inputTitle" class="form-control form-control-user" readonly="readonly" value="${board.btitle }">
									</div>

									<div class="col-md-4">
										<label for="inputbwriter" class="form-label">작성자</label> <input type="text" name="bwriter" class="form-control" id="inputbwriter" value="${board.bwriter}" readonly="readonly">
									</div>

									<div class="col-md-4">
										<label for="inputbdate" class="form-label">작성일</label> <input type="text" name="bdate" class="form-control" id="inputbdate" value="${board.bdate}" readonly="readonly">
									</div>
								</div>
								<div class="form-group">
									<label for="inputContent" class="font-weight-bold">글내용</label>
									<textarea name="bcontent" id="inputContent" class="form-control" rows="20" cols="5" readonly="readonly">${board.bcontent }</textarea>
								</div>

								<!-- <div class="form-group row" style="text-align: center;">
										<button class="btn btn-primary btn-user btn-block"
											type="button">수정하기</button>


								</div> -->
								<div class="form-group row">
									<c:choose>
										<c:when test="${board.bwriter == sessionScope.loginNickname }">
											<div class="col-sm-6 mb-3 mb-sm-0 modifyCol">
												<button type="button" onclick="toggleModForm('open')" class="btn btn-primary btn-user btn-block ">글수정</button>
										</c:when>
										<c:otherwise>
											<div class="col-sm-12 mb-3 mb-sm-0 modifyCol">
												<div class="col-sm-12">
													<a href="${pageContext.request.contextPath }/boardList" class="btn btn-primary btn-user btn-block">글목록 </a>
												</div>
										</c:otherwise>
									</c:choose>
								</div>
								<c:choose>
									<c:when test="${board.bwriter == sessionScope.loginNickname }">
										<div class="col-sm-3 mb-3 mb-sm-0 modifyCol d-none">
											<button type="submit" class="btn btn-success btn-user btn-block ">수정</button>
										</div>
										<div class="col-sm-3 modifyCol d-none">
											<button type="button" onclick="toggleModForm('close')" class="btn btn-danger btn-user btn-block ">취소</button>
										</div>
										<div class="col-sm-6">
											<a href="${pageContext.request.contextPath }/boardList" class="btn btn-primary btn-user btn-block"> 글목록 </a>
										</div>
									</c:when>
								</c:choose>
							</form>
						</div>
					</div>
				</div>
			</div>
			<!-- 게시글 추천 버튼 -->
			<div class="row">
				<div class="col-lg-7 ml-auto mr-auto align-items-center text-center pb-3" style="background-color: white;">
					<button id="likeBtn" class="btn border-primary btn-user text-primary" onclick="boardLike('${board.bno }')">
						<i class="p-0 far fa-thumbs-up ">추천</i> <span id="like_count">${blikeCount}</span>
					</button>
				</div>
			</div>

			<hr>

			<!-- 댓글 출력 -->
			<div class="row">
				<div class="col-lg-7 ml-auto mr-auto" style="background-color: white;">
					<div class="pt-1 px-5 pb-1 ">
						<div class="text-center">
							<h1 class="h4 text-gray-900 mb-1">댓글 목록</h1>
						</div>

						<div id="replyListArea">
							<c:forEach items="${replyList }" var="reply">
								<div class="card shadow">
									<div class="card-body p-3">
										<div class="row no-gutters align-items-center text-xs font-weight-bold">
											<div class="col">
												<span class="text-primary">${reply.rname}</span> <span class="text-uppercase pl-2">${reply.rdate }</span>
											</div>
											<div class="col-auto">
												<c:choose>
													<c:when test="${reply.rlikeCheck == null }">
														<button class=" text-xs btn btn-sm border-primary btn-user text-primary" onclick="replyLike('${reply.rno}','${reply.rbno}',this)">
															추천 <span> ${reply.rlikecount } </span>
														</button>
													</c:when>
													<c:otherwise>
														<button class=" text-xs btn btn-sm border-primary btn-user text-white bg-primary" onclick="replyLike('${reply.rno}','${reply.rbno}',this)">
															추천 <span> ${reply.rlikecount } </span>
														</button>
													</c:otherwise>
												</c:choose>

											</div>
										</div>
										<hr class="my-1">
										<div class="row no-gutters align-items-center">
											<div class="col">
												<textarea readonly="readonly" class="retext mb-2 border-0 font-weight-bold text-gray-800 w-100">${reply.rcontent }</textarea>
											</div>
											<div class="col-auto">
												<c:if test="${reply.rname == sessionScope.loginNickname}">
													<button class="btn btn-sm btn-danger btn-user" onclick="replyDelete_ajax('${reply.rno}','${reply.rbno}')">삭제</button>
												</c:if>
											</div>
										</div>
									</div>
								</div>
							</c:forEach>
						</div>

					</div>
				</div>
			</div>

			<hr>

			<!-- 댓글 작성 폼 -->
			<c:if test="${sessionScope.loginNickname != null }">
				<div class="row">
					<div class="col-lg-7 ml-auto mr-auto" style="background-color: white;">
						<div class="pt-1 px-5 pb-1">
							<form class="user" onsubmit="return replyWrite(this)">
								<input type="hidden" name="rbno" value="${board.bno }"> <input type="hidden" name="rname" value="${sessionScope.loginNickname}">
								<div class="form-group">
									<label for="inputrcontent" class="font-weight-bold">댓글작성</label>
									<textarea name="rcontent" id="inputrcontent" class="form-control" rows="3"></textarea>
								</div>
								<button type="submit" class="btn btn-primary btn-user btn-block">댓글작성</button>
								<hr>
							</form>
						</div>
					</div>
				</div>
			</c:if>
		</div>

	</main>
	<footer>
		<!--? Footer Start-->
		<%@ include file="/WEB-INF/views/includes/footer.jsp"%>
		<!-- Footer End-->
	</footer>
	<!-- Scroll Up -->


	<!-- JS here -->

	<script src="${pageContext.request.contextPath }/resources//assets/js/vendor/modernizr-3.5.0.min.js"></script>
	<!-- Jquery, Popper, Bootstrap -->
	<script src="${pageContext.request.contextPath }/resources//assets/js/vendor/jquery-1.12.4.min.js"></script>
	<script src="${pageContext.request.contextPath }/resources//assets/js/popper.min.js"></script>
	<script src="${pageContext.request.contextPath }/resources//assets/js/bootstrap.min.js"></script>
	<!-- Jquery Mobile Menu -->
	<script src="${pageContext.request.contextPath }/resources//assets/js/jquery.slicknav.min.js"></script>

	<!-- Jquery Slick , Owl-Carousel Plugins -->
	<script src="${pageContext.request.contextPath }/resources//assets/js/owl.carousel.min.js"></script>
	<script src="${pageContext.request.contextPath }/resources//assets/js/slick.min.js"></script>
	<!-- One Page, Animated-HeadLin -->
	<script src="${pageContext.request.contextPath }/resources//assets/js/wow.min.js"></script>
	<script src="${pageContext.request.contextPath }/resources//assets/js/animated.headline.js"></script>
	<script src="${pageContext.request.contextPath }/resources//assets/js/jquery.magnific-popup.js"></script>

	<!-- Nice-select, sticky -->
	<script src="${pageContext.request.contextPath }/resources//assets/js/jquery.nice-select.min.js"></script>
	<script src="${pageContext.request.contextPath }/resources//assets/js/jquery.sticky.js"></script>

	<!-- contact js -->
	<script src="${pageContext.request.contextPath }/resources//assets/js/contact.js"></script>
	<script src="${pageContext.request.contextPath }/resources//assets/js/jquery.form.js"></script>
	<script src="${pageContext.request.contextPath }/resources//assets/js/jquery.validate.min.js"></script>
	<script src="${pageContext.request.contextPath }/resources//assets/js/mail-script.js"></script>
	<script src="${pageContext.request.contextPath }/resources//assets/js/jquery.ajaxchimp.min.js"></script>

	<!-- Jquery Plugins, main Jquery -->
	<script src="${pageContext.request.contextPath }/resources//assets/js/plugins.js"></script>
	<script src="${pageContext.request.contextPath }/resources//assets/js/main.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			//replyList(viewBno);
			boardLikeCount_ajax(viewBno);
			console.log(viewBno);
		});

		var viewBno = '${board.bno }';
		var loginId = '${sessionScope.loginNickname}';
		var contextPath = '${pageContext.request.contextPath }';

		function boardLike(bno) {
			if (loginId.length > 0) {
				$.ajax({
					type : "get",
					url : "${pageContext.request.contextPath }/boardLike",
					data : {
						"lbno" : bno,
						"lname" : loginId
					},
					async : false,
					dataType : "json",
					success : function(result) {
						console.log(result.likeResult);
						if (result.likeResult == '1') {
							alert("추천 되었습니다.");
							$("#likeBtn").removeClass("text-primary");
							$("#likeBtn").addClass("text-white");
							$("#likeBtn").addClass("bg-primary");
						} else {
							alert("추천이 취소되었습니다.");
							$("#likeBtn").addClass("text-primary");
							$("#likeBtn").removeClass("text-white");
							$("#likeBtn").removeClass("bg-primary");
						}

						$("#like_count").text(result.likeCount);
					}
				});
			} else {
				alert('로그인 후 추천 가능합니다.');
			}
		}

		function boardLikeCount_ajax(bno) {
			$
					.ajax({
						type : "get",
						url : "${pageContext.request.contextPath }/boardLikeCount_ajax",
						data : {
							"lbno" : bno,
							"lmid" : loginId
						},
						async : false,
						dataType : "json",
						success : function(result) {
							console.log(result);
							if (result.likeCheck != null) {
								$("#likeBtn").removeClass("text-primary");
								$("#likeBtn").addClass("text-white");
								$("#likeBtn").addClass("bg-primary");
							}

							$("#like_count").text(result.likeCount);
						}
					});
		}

		function replyList(rbno) {
			console.log('댓글 목록 조회 replyList(rbno) 호출')
			$
					.ajax({
						type : "get",
						url : "${pageContext.request.contextPath }/replyList",
						data : {
							"rbno" : rbno
						},
						dataType : "json",
						async : false,
						success : function(reList) {
							var output = "";
							for (var i = 0; i < reList.length; i++) {
								console.log(reList[i].rname + " : "
										+ reList[i].rcontent);
								output += '<div class="card shadow">';
								output += '<div class="card-body p-3">';
								output += '<div class="row no-gutters align-items-center text-xs font-weight-bold">';
								output += '<div class="col">';

								output += '<span class="text-primary">';
								output += reList[i].rname + '</span>';

								output += '<span class="text-uppercase pl-2 text-xs ">'
										+ reList[i].rdate + '</span>';
								output += '</div>';
								output += '<div class="col-auto align-items-center">';

								if (reList[i].rlikeCheck == null) {
									output += '<button class=" text-xs btn btn-sm border-primary btn-user text-primary" onclick="replyLike('
											+ "'"
											+ reList[i].rno
											+ "'"
											+ ",'"
											+ reList[i].rbno + "'" + ',this)">';
								} else {
									output += '<button class=" text-xs btn btn-sm border-primary btn-user text-white bg-primary" onclick="replyLike('
											+ "'"
											+ reList[i].rno
											+ "'"
											+ ",'"
											+ reList[i].rbno + "'" + ',this)">';
								}

								output += '추천 ' + reList[i].rlikecount;
								output += '</button>';
								output += '</div>';
								output += '</div>';
								output += '<hr class="my-1">';
								output += '<div class="row no-gutters align-items-center">';
								output += '<div class="col">';
								output += '<textarea readonly="readonly"class="retext mb-2 border-0 font-weight-bold text-gray-800 w-100">'
										+ reList[i].rcontent + '</textarea>';
								output += '</div>';
								output += '<div class="col-auto">';
								if (reList[i].rname == loginId) {
									output += '<button class="btn btn-sm btn-danger btn-user" onclick="replyDelete_ajax('
											+ reList[i].rno
											+ ','
											+ reList[i].rbno
											+ ')" >삭제</button>';

								}
								output += '</div>';
								output += '</div>';
								output += '</div>';
								output += '</div>';
								//
							}
							$("#replyListArea").html(output);
						}
					});
		}

		function replyLike(rno, rbno, likeBtn) {
			if (loginId.length > 0) {
				$.ajax({
					type : "get",
					url : "${pageContext.request.contextPath }/replyLike",
					data : {
						"rlno" : rno,
						"rlname" : loginId,
						"rlbno" : rbno
					},
					dataType : "json",
					async : false,
					success : function(result) {
						if (result.likeResult == '1') {
							alert("댓글이 추천 되었습니다.");
							$(likeBtn).removeClass("text-primary");
							$(likeBtn).addClass("text-white");
							$(likeBtn).addClass("bg-primary");
						} else {
							alert("댓글 추천이 취소되었습니다.");
							$(likeBtn).addClass("text-primary");
							$(likeBtn).removeClass("text-white");
							$(likeBtn).removeClass("bg-primary");
						}
						$(likeBtn).html('추천 ' + result.likeCount);
					}
				});
			} else {
				alert('로그인 후 추천 가능합니다.');
			}
		}

		function replyDelete_ajax(rno, rbno) {
			console.log("삭제할 댓글 번호 : " + rno);
			$.ajax({
				type : "get",
				url : "${pageContext.request.contextPath }/replyDelete_ajax",
				data : {
					"rno" : rno,
					"rbno" : rbno
				},
				async : false,
				success : function(checkResult) {
					console.log(checkResult);
					if (checkResult == '1') {
						alert("댓글 삭제 성공");
						replyList(viewBno);
					} else {
						alert("댓글 삭제 실패");
					}
				}
			});
		}

		function replyWrite(formObj) {
			console.log("replyWrite(formObj) 호출")
			var rbno = formObj.rbno;
			console.log("댓글작성 글번호 : " + rbno.value);
			var rname = formObj.rname;
			console.log("댓글작성자 : " + rname.value);
			var rcontent = formObj.rcontent;
			console.log("댓글내용 : " + rcontent.value);

			$.ajax({
				type : "get",
				url : "${pageContext.request.contextPath }/replyWrite",
				data : {
					"rbno" : rbno.value,
					"rname" : rname.value,
					"rcontent" : rcontent.value
				},
				async : false,
				success : function(checkResult) {
					console.log(checkResult);
					if (checkResult == '1') {
						alert("댓글 등록 성공");
						replyList(rbno.value);
					} else {
						alert("댓글 등록 실패");
					}
				}
			});

			rcontent.value = "";

			return false;
		}

		var titleVal = "";
		var contentVal = "";

		function toggleModForm(btnType) {

			$(".modifyCol").toggleClass("d-none");

			if (btnType == 'open') {
				titleVal = $("#inputBtitle").val();
				contentVal = $("#inputContent").val();
				$("#inputBtitle").removeAttr("readonly");
				$("#inputContent").removeAttr("readonly");
			} else {
				$("#inputBtitle").val(titleVal);
				$("#inputContent").val(contentVal);
				$("#inputBtitle").attr("readonly", "readonly");
				$("#inputContent").attr("readonly", "readonly");
			}

		}
	</script>
</body>
</html>