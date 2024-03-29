<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html class="no-js" lang="zxx">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Transportation HTML-5 Template </title>
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
    <div class="header-area">
        <div class="main-header ">
            <div class="header-top d-none d-lg-block">
                <div class="container">
                    <div class="col-xl-12">
                        <div class="row d-flex justify-content-between align-items-center">
                        
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
                                <a href="${pageContext.request.contextPath }/"><img src="${pageContext.request.contextPath }/resources/assets/img/LOL/LOGO.jpg" style="width: 200px;" alt=""></a>
                            </div>
                        </div>
                        <div class="col-xl-10 col-lg-10">
                            <div class="menu-wrapper  d-flex align-items-center justify-content-end">
                                <!-- Main-menu -->
                                <div class="main-menu d-none d-lg-block">
                                    <nav> 
                                        <ul id="navigation">                                                                                          
                                            <li><a href="${pageContext.request.contextPath }/">홈</a></li>
                                           <!-- <li><a href="about.html">챔피언 분석</a></li>
                                            <li><a href="services.html">통계</a></li>
                                            <li><a href="blog.html">랭킹</a>
                                            <li><a href="${pageContext.request.contextPath }/testPage_OF_record">전적페이지 테스트 창</a>
<!--                                                 <ul class="submenu">
                                                    <li><a href="blog.html">Blog</a></li>
                                                    <li><a href="blog_details.html">Blog Details</a></li>
                                                    <li><a href="elements.html">Element</a></li>
                                                </ul> 
                                            </li> -->
                                            <li><a href="${pageContext.request.contextPath }/boardList">커뮤니티</a></li> 
                                        </ul>
                                    </nav>
                                </div>
                                <!-- Header-btn -->
                                <div class="header-right-btn d-none d-lg-block ml-20">
                                <c:choose>
										<c:when test="${sessionScope.loginNickname == null}">
                                  			  <a href="${pageContext.request.contextPath }/LoginForm" class="btn header-btn">로그인</a>
										</c:when>
										<c:otherwise>
                                  			  <a href="${pageContext.request.contextPath }/Logout" class="btn header-btn">로그아웃</a>
										</c:otherwise>
									</c:choose>
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
    <!--? slider Area Start-->
    <div class="slider-area ">
        <div class="slider-active">
            <!-- Single Slider -->
            <div class="single-slider slider-height d-flex align-items-center">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-9 col-lg-9">
                            <div class="hero__caption">
                                <h1 > <span>LOL.EZ</span> </h1>
                            </div>
                            <!--Hero form -->
                            <form action="${pageContext.request.contextPath }/SummoneSerch" class="search-box"
                           		  method="get">
                                <div class="input-form">
                                    <input name="summoneName" type="text" placeholder="소환사명..">
                                </div>
<%--                                  <div class="search-form">
                                    <a href="${pageContext.request.contextPath }/emailprove?email=qewryy4@gmail.com">검색</a>
                                </div> --%>
	                              <div class="search-form">
                                    <button class="search-form-button btn" type="submit">검색</button>
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
    
</body>
</html>