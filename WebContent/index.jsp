<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html class="no-js" lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>电影购票商城</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- All css files are included here. -->
<!-- Bootstrap fremwork main css -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<!-- Owl Carousel min css -->
<link rel="stylesheet" href="css/owl.carousel.min.css">
<link rel="stylesheet" href="css/owl.theme.default.min.css">
<!-- This core.css file contents all plugings css file. -->
<link rel="stylesheet" href="css/core.css">
<!-- Theme shortcodes/elements style -->
<link rel="stylesheet" href="css/shortcode/shortcodes.css">
<!-- Theme main style -->
<link rel="stylesheet" href="style.css">
<!-- Responsive css -->
<link rel="stylesheet" href="css/responsive.css">
<!-- User style -->
<link rel="stylesheet" href="css/custom.css">


<!-- Modernizr JS -->
<script src="js/vendor/modernizr-3.5.0.min.js"></script>
</head>

<body>
<!-- Body main wrapper start -->
<div class="wrapper">
	<!-- Start Header Style -->
	<header id="htc__header" class="htc__header__area header--one">
		<!-- Start Mainmenu Area -->
		
		<!-- session 里面得到的  用户信息  -->
		<%-- <input type="hidden" id="uid" value="${sessionScope.user.uid }">
		<input type="hidden" id="uname" value="${sessionScope.user.uname }">
		<input type="hidden" id="uimage" value="${sessionScope.user.uimage }"> --%>
		
		
		<div id="sticky-header-with-topbar" class="mainmenu__wrap sticky__header">
			<div class="container">
				<div class="row">
					<div class="menumenu__container clearfix">
						<div class="col-lg-2 col-md-2 col-sm-3 col-xs-5"> 
							<div class="logo">
								 <a href="movie?oper=index"><img src="images/logo/logo.png" alt="logo images"></a>
							</div>
						</div>
						<div class="col-md-7 col-lg-8 col-sm-5 col-xs-3">
							<nav class="main__menu__nav hidden-xs hidden-sm">
								<ul class="main__menu">
									<li><a href="movie?oper=index">首页</a>
									<li><a href="movie?oper=all">所有电影</a></li>
									<li><a href="about.html">关于我们</a></li>
								</ul>
							</nav>

							<div class="mobile-menu clearfix visible-xs visible-sm">
								<nav id="mobile_dropdown">
									<ul>
									
										<li><a href="movie?oper=index">Home</a>
										<li><a href="movie?oper=all">List</a></li>
										<li><a href="movie?oper=movieinfo&mid=${movie.mid}">Details</a></li>
									</ul>
								</nav>
							</div>  
						</div>
						<div class="col-md-3 col-lg-2 col-sm-4 col-xs-4">
							<div class="header__right">
								<div class="header__search search search__open">
									<a href="#"><i class="icon-magnifier icons"></i></a>
								</div>
								<div class="header__account">
									<a href="user?oper=editInfo"><i class="icon-user icons"></i></a>
								</div>
								<div class="htc__shopping__cart">
									<a class="cart__menu" href="#"><i class="icon-handbag icons"></i></a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- End Mainmenu Area -->
	</header>
	<!-- End Header Area -->

	<div class="body__overlay"></div>
	
	
	<!-- Start Offset Wrapper -->
	<div class="offset__wrapper">
		<!-- Start Search Popap -->
		<div class="search__area">
			<div class="container" >
				<div class="row" >
					<div class="col-md-12" >
						<div class="search__inner">
							<form action="movie?oper=findmovie" method="post">
								<input placeholder="Search here... " name="mname" type="text">
								<button type="submit"></button>
							</form>
							<div class="search__close__btn">
								<span class="search__close__btn_icon"><i class="zmdi zmdi-close"></i></span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- End Search Popap -->
		
		
		
		
		<!-- Start Cart Panel 购物车面板-->
		<div class="shopping__cart">
			<div class="shopping__cart__inner">
				<div class="offsetmenu__close__btn">
					<a href="#"><i class="zmdi zmdi-close"></i></a>
				</div>
				<div class="shp__cart__wrap">
				    <!-- 购物车物品显示 -->
				    <c:forEach items="${orderList}" var="order">
						<div class="shp__single__product">
							<div class="shp__pro__thumb">
								<a href="movie?oper=movieinfo&mid=${order.mid}">
									<img src="${order.mimage}" alt="product images">
								</a>
							</div>
							<div class="shp__pro__details">
								<h2><a href="movie?oper=movieinfo&mid=${order.mid}">${order.mname }</a></h2>
								<span class="quantity">购买时间:${order.odate}</span>
								<span class="shp__price">$${order.price }</span>
							</div>
							<div class="remove__btn">
								<a href="#" title="Remove this item"><i class="zmdi zmdi-close"></i></a>
							</div>
						</div>
				    </c:forEach>
				</div>
				<ul class="shopping__btn">
					<li class="shp__checkout"><a href="index.jsp">清空全部订单</a></li>
				</ul>
			</div>
		</div>
		<!-- End Cart Panel -->
	</div>
	<!-- End Offset Wrapper -->
	
	
	
	<!-- Start Slider Area -->
	<div class="slider__container slider--one bg__cat--3">
		<div class="slide__container slider__activation__wrap owl-carousel">
			<!-- Start Single Slide -->
			<div class="single__slide animation__style01 slider__fixed--height">
				<div class="container">
					<div class="row align-items__center">
						<div class="col-md-7 col-sm-7 col-xs-12 col-lg-6">
							<div class="slide">
								<div class="slider__inner">
									<h2>iron Man</h2>
									<h1>NICE MOVIE</h1>
									<div class="cr__btn">
										<a href="movie?oper=movieinfo&mid=16">Buy Now</a>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-6 col-sm-5 col-xs-12 col-md-5">
							<div class="slide__thumb">
								<img src="images/slider/fornt-img/timg1.jpg" alt="slider images">
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- End Single Slide -->
			<!-- Start Single Slide -->
			<div class="single__slide animation__style01 slider__fixed--height">
				<div class="container">
					<div class="row align-items__center">
						<div class="col-md-7 col-sm-7 col-xs-12 col-lg-6">
							<div class="slide">
								<div class="slider__inner">
									<h2>Extinguish</h2>
									<h1>NICE Movie</h1>
									<div class="cr__btn">
										<a href="movie?oper=movieinfo&mid=16">Buy Now</a>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-6 col-sm-5 col-xs-12 col-md-5">
							<div class="slide__thumb">
								<img src="images/slider/fornt-img/timg.jpg" alt="slider images">
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- End Single Slide -->
		</div>
	</div>
	<!-- Start Slider Area -->
	<!-- Start Category Area -->
	<section class="htc__category__area ptb--100">
		<div class="container">
			<div class="row">
				<div class="col-xs-12">
					<div class="section__title--2 text-center">
						<h2 class="title__line">最新热门电影</h2>
						<p> TOP 8 movies </p>
					</div>
				</div>
			</div>
			<div class="htc__product__container">
				<div class="row">
					<div class="product__list clearfix mt--30">
					
					
					
						<!-- 展示TOP8的电影信息 -->
						<c:forEach items="${movieList}" var="movie">
							<div class="col-md-4 col-lg-3 col-sm-4 col-xs-12">
								<div class="category">
									<div class="ht__cat__thumb">
										<a href="movie?oper=movieinfo&mid=${movie.mid}">
											<img src="${movie.mimage }" alt="product images">
										</a>
									</div>
									<div class="fr__hover__info">
										<ul class="product__action">
											<li><a href="#"><i class="icon-heart icons"></i></a></li><!-- 收藏按钮-->
											
											<li><a href="#"><i class="icon-handbag icons"></i></a></li><!-- 添加购物车 -->
	
											<li><a href="#"><i class="icon-shuffle icons"></i></a></li>
										</ul>
									</div>
									<div class="fr__product__inner">
										<h4><a href="movie?oper=movieinfo&mid=${movie.mid}">${movie.mname}</a></h4>
										<ul class="fr__pro__prize">
											<li>$${movie.price }</li>
										</ul>
									</div>
								</div>
							</div>
						</c:forEach>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- End Category Area -->
	<!-- Start Prize Good Area -->
	<section class="htc__good__sale bg__cat--3">
		<div class="container">
			<div class="row">
				<div class="col-md-6 col-lg-6 col-sm-6 col-xs-12">
					<div class="fr__prize__inner">
						<h2>请珍惜你现在身边所爱你之人.</h2>
						<h3>Please cherish the person you love with you now.</h3>
						<a class="fr__btn" href="movie?oper=movieinfo&mid=17">Read More</a>
					</div>
				</div>
				<div class="col-md-6 col-lg-6 col-sm-6 col-xs-12">
					<div class="prize__inner">
						<div class="prize__thumb">
							<img src="images/banner/big-img/3.jpg" alt="banner images">
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- End Prize Good Area -->
	
	
	
	<!-- Start Product Area  更多电影展示 -->
	<section class="ftr__product__area ptb--100">
		<div class="container">
			<div class="row">
				<div class="col-xs-12">
					<div class="section__title--2 text-center">
						<h2 class="title__line">更多电影</h2>
						<p>Every movie is a wonderful story</p>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="product__wrap clearfix">
					<!-- Start Single Category -->
					<div class="col-md-4 col-lg-3 col-sm-4 col-xs-12">
						<div class="category">
							<div class="ht__cat__thumb">
								<a href="movie?oper=movieinfo&mid=10">
									<img src="images/product/m10.jpg" alt="product images">
								</a>
							</div>
							<div class="fr__hover__info">
								<ul class="product__action">
									<li><a href="#"><i class="icon-heart icons"></i></a></li>

									<li><a href="#"><i class="icon-handbag icons"></i></a></li>

									<li><a href="#"><i class="icon-shuffle icons"></i></a></li>
								</ul>
							</div>
							<div class="fr__product__inner">
								<h4><a href="movie?oper=movieinfo&mid=10">无敌破坏王2：大闹互联网</a></h4>
								<ul class="fr__pro__prize">
									<li>$25.9</li>
								</ul>
							</div>
						</div>
					</div>
					<!-- End Single Category -->
					<!-- Start Single Category -->
					<div class="col-md-4 col-lg-3 col-sm-4 col-xs-12">
						<div class="category">
							<div class="ht__cat__thumb">
								<a href="movie?oper=movieinfo&mid=11">
									<img src="images/product/m11.jpg" alt="product images">
								</a>
							</div>
							<div class="fr__hover__info">
								<ul class="product__action">
									<li><a href="#"><i class="icon-heart icons"></i></a></li>

									<li><a href="#"><i class="icon-handbag icons"></i></a></li>

									<li><a href="#"><i class="icon-shuffle icons"></i></a></li>
								</ul>
							</div>
							<div class="fr__product__inner">
								<h4><a href="movie?oper=movieinfo&mid=11">绿毛怪格林奇</a></h4>
								<ul class="fr__pro__prize">
									<li>$25.9</li>
								</ul>
							</div>
						</div>
					</div>
					<!-- End Single Category -->
					<!-- Start Single Category -->
					<div class="col-md-4 col-lg-3 col-sm-4 col-xs-12">
						<div class="category">
							<div class="ht__cat__thumb">
								<a href="movie?oper=movieinfo&mid=12">
									<img src="images/product/m12.jpg" alt="product images">
								</a>
							</div>
							<div class="fr__hover__info">
								<ul class="product__action">
									<li><a href="#"><i class="icon-heart icons"></i></a></li>

									<li><a href="#"><i class="icon-handbag icons"></i></a></li>

									<li><a href="#"><i class="icon-shuffle icons"></i></a></li>
								</ul>
							</div>
							<div class="fr__product__inner">
								<h4><a href="movie?oper=movieinfo&mid=12">天气预爆</a></h4>
								<ul class="fr__pro__prize">
									<li>$25.9</li>
								</ul>
							</div>
						</div>
					</div>
					<!-- End Single Category -->
					<!-- Start Single Category -->
					<div class="col-md-4 col-lg-3 col-sm-4 col-xs-12">
						<div class="category">
							<div class="ht__cat__thumb">
								<a href="movie?oper=movieinfo&mid=13">
									<img src="images/product/m13.jpg" alt="product images">
								</a>
							</div>
							<div class="fr__hover__info">
								<ul class="product__action">
									<li><a href="#"><i class="icon-heart icons"></i></a></li>

									<li><a href="#"><i class="icon-handbag icons"></i></a></li>

									<li><a href="#"><i class="icon-shuffle icons"></i></a></li>
								</ul>
							</div>
							<div class="fr__product__inner">
								<h4><a href="movie?oper=movieinfo&mid=13">蜘蛛侠：平行宇宙 </a></h4>
								<ul class="fr__pro__prize">
									<li>$25.9</li>
								</ul>
							</div>
						</div>
					</div>
					<!-- End Single Category -->
				</div>
			</div>
		</div>
	</section>
	<!-- End Product Area -->
	
	
	
	<!-- Start Testimonial Area -->
	<section class="htc__testimonial__area bg__cat--4">
		<div class="container">
			<div class="row">
				<div class="ht__testimonial__activation clearfix">
					<!-- Start Single Testimonial -->
					<div class="col-lg-6 col-md-6 single__tes">
						<div class="testimonial">
							<div class="testimonial__thumb">
								<img src="images/test/client/1.png" alt="testimonial images">
							</div>
							<div class="testimonial__details">
								<h4><a href="#">Mr.Mike Band</a></h4>
								<p>I’m up to something. Stay focused. The weather is amazing, walk with me through the pathway of more success. </p>
							</div>
						</div>
					</div>
					<!-- End Single Testimonial -->
					<!-- Start Single Testimonial -->
					<div class="col-lg-6 col-md-6 single__tes">
						<div class="testimonial">
							<div class="testimonial__thumb">
								<img src="images/test/client/2.png" alt="testimonial images">
							</div>
							<div class="testimonial__details">
								<h4><a href="#">Ms.Lucy Barton</a></h4>
								<p>I’m up to something. Stay focused. The weather is amazing, walk with me through the pathway of more success. </p>
							</div>
						</div>
					</div>
					<!-- End Single Testimonial -->
					<!-- Start Single Testimonial -->
					<div class="col-lg-6 col-md-6 single__tes">
						<div class="testimonial">
							<div class="testimonial__thumb">
								<img src="images/test/client/1.png" alt="testimonial images">
							</div>
							<div class="testimonial__details">
								<h4><a href="#">Ms.Lucy Barton</a></h4>
								<p>I’m up to something. Stay focused. The weather is amazing, walk with me through the pathway of more success. </p>
							</div>
						</div>
					</div>
					<!-- End Single Testimonial -->
					<!-- Start Single Testimonial -->
					<div class="col-lg-6 col-md-6 single__tes">
						<div class="testimonial">
							<div class="testimonial__thumb">
								<img src="images/test/client/2.png" alt="testimonial images">
							</div>
							<div class="testimonial__details">
								<h4><a href="#">Ms.Lucy Barton</a></h4>
								<p>I’m up to something. Stay focused. The weather is amazing, walk with me through the pathway of more success. </p>
							</div>
						</div>
					</div>
					<!-- End Single Testimonial -->
				</div>
			</div>
		</div>
	</section>
	<!-- End Testimonial Area -->
	
	<!-- Start Brand Area -->
	<div class="htc__brand__area bg__cat--4">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="ht__brand__inner">
						<ul class="brand__list owl-carousel clearfix">
							<li><a href="#"><img src="images/brand/1.png" alt="brand images"></a></li>
							<li><a href="#"><img src="images/brand/2.png" alt="brand images"></a></li>
							<li><a href="#"><img src="images/brand/3.png" alt="brand images"></a></li>
							<li><a href="#"><img src="images/brand/4.png" alt="brand images"></a></li>
							<li><a href="#"><img src="images/brand/5.png" alt="brand images"></a></li>
							<li><a href="#"><img src="images/brand/5.png" alt="brand images"></a></li>
							<li><a href="#"><img src="images/brand/1.png" alt="brand images"></a></li>
							<li><a href="#"><img src="images/brand/2.png" alt="brand images"></a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End Brand Area -->
	<!-- Start Blog Area -->
	<section class="htc__blog__area bg__white ptb--100">
		<div class="container">
			<div class="row">
				<div class="col-xs-12">
					<div class="section__title--2 text-center">
						<h2 class="title__line">Our Blog</h2>
						<p>We believe that our cinema mall will do better for you</p>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="ht__blog__wrap clearfix">
					<!-- Start Single Blog -->
					<div class="col-md-6 col-lg-4 col-sm-6 col-xs-12">
						<div class="blog">
							<div class="blog__thumb">
								<a href="#">
									<img src="images/blog/blog-img/a1.png" alt="blog images">
								</a>
							</div>
							<div class="blog__details">
								<div class="bl__date">
									<span>March 22, 2016</span>
								</div>
								<h2><a href="#">Lorem ipsum dolor sit amet, consec tetur adipisicing elit</a></h2>
								<p>Lorem ipsum dolor sit amet, consectetur adipisici elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
								<div class="blog__btn">
									<a href="#">Read More</a>
								</div>
							</div>
						</div>
					</div>
					<!-- End Single Blog -->
					<!-- Start Single Blog -->
					<div class="col-md-6 col-lg-4 col-sm-6 col-xs-12">
						<div class="blog">
							<div class="blog__thumb">
								<a href="#">
									<img src="images/blog/blog-img/a2.png" alt="blog images">
								</a>
							</div>
							<div class="blog__details">
								<div class="bl__date">
									<span>May 22, 2017</span>
								</div>
								<h2><a href="#">Lorem ipsum dolor sit amet, consec tetur adipisicing elit</a></h2>
								<p>Lorem ipsum dolor sit amet, consectetur adipisici elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
								<div class="blog__btn">
									<a href="#">Read More</a>
								</div>
							</div>
						</div>
					</div>
					<!-- End Single Blog -->
					<!-- Start Single Blog -->
					<div class="col-md-6 col-lg-4 col-sm-6 col-xs-12">
						<div class="blog">
							<div class="blog__thumb">
								<a href="#">
									<img src="images/blog/blog-img/a3.png" alt="blog images">
								</a>
							</div>
							<div class="blog__details">
								<div class="bl__date">
									<span>March 22, 2018</span>
								</div>
								<h2><a href="#">Lorem ipsum dolor sit amet, consec tetur adipisicing elit</a></h2>
								<p>Lorem ipsum dolor sit amet, consectetur adipisici elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
								<div class="blog__btn">
									<a href="#">Read More</a>
								</div>
							</div>
						</div>
					</div>
					<!-- End Single Blog -->
				</div>
			</div>
		</div>
	</section>
	<!-- End Blog Area -->
	<!-- End Banner Area -->
	<!-- Start Footer Area -->
	<footer id="htc__footer">
		<!-- Start Footer Widget -->
		<div class="footer__container bg__cat--1">
			<div class="container">
				<div class="row">
					<!-- Start Single Footer Widget -->
					<div class="col-md-3 col-sm-6 col-xs-12">
						<div class="footer">
							<h2 class="title__line--2">ABOUT US</h2>
							<div class="ft__details">
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim</p>
								<div class="ft__social__link">
									<ul class="social__link">
										<li><a href="#"><i class="icon-social-twitter icons"></i></a></li>

										<li><a href="#"><i class="icon-social-instagram icons"></i></a></li>

										<li><a href="#"><i class="icon-social-facebook icons"></i></a></li>

										<li><a href="#"><i class="icon-social-google icons"></i></a></li>

										<li><a href="#"><i class="icon-social-linkedin icons"></i></a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<!-- End Single Footer Widget -->
					<!-- Start Single Footer Widget -->
					<div class="col-md-2 col-sm-6 col-xs-12 xmt-40">
						<div class="footer">
							<h2 class="title__line--2">information</h2>
							<div class="ft__inner">
								<ul class="ft__list">
									<li><a href="#">About us</a></li>
									<li><a href="#">Delivery Information</a></li>
									<li><a href="#">Privacy & Policy</a></li>
									<li><a href="#">Terms  & Condition</a></li>
									<li><a href="#">Manufactures</a></li>
								</ul>
							</div>
						</div>
					</div>
					<!-- End Single Footer Widget -->
					<!-- Start Single Footer Widget -->
					<div class="col-md-2 col-sm-6 col-xs-12 xmt-40 smt-40">
						<div class="footer">
							<h2 class="title__line--2">my account</h2>
							<div class="ft__inner">
								<ul class="ft__list">
									<li><a href="#">My Account</a></li>
									<li><a href="#">My Cart</a></li>
									<li><a href="#">Login</a></li>
									<li><a href="#">Wishlist</a></li>
									<li><a href="#">Checkout</a></li>
								</ul>
							</div>
						</div>
					</div>
					<!-- End Single Footer Widget -->
					<!-- Start Single Footer Widget -->
					<div class="col-md-2 col-sm-6 col-xs-12 xmt-40 smt-40">
						<div class="footer">
							<h2 class="title__line--2">Our service</h2>
							<div class="ft__inner">
								<ul class="ft__list">
									<li><a href="#">My Account</a></li>
									<li><a href="#">My Cart</a></li>
									<li><a href="#">Login</a></li>
									<li><a href="#">Wishlist</a></li>
									<li><a href="#">Checkout</a></li>
								</ul>
							</div>
						</div>
					</div>
					<!-- End Single Footer Widget -->
					<!-- Start Single Footer Widget -->
					<div class="col-md-3 col-sm-6 col-xs-12 xmt-40 smt-40">
						<div class="footer">
							<h2 class="title__line--2">NEWSLETTER </h2>
							<div class="ft__inner">
								<div class="news__input">
									<input type="text" placeholder="Your Mail*">
									<div class="send__btn">
										<a class="fr__btn" href="#">Send Mail</a>
									</div>
								</div>
								
							</div>
						</div>
					</div>
					<!-- End Single Footer Widget -->
				</div>
			</div>
		</div>
		<!-- End Footer Widget -->
		<!-- Start Copyright Area -->
		<div class="htc__copyright bg__cat--5">
			<div class="container">
				<div class="row">
					<div class="col-xs-12">
						<div class="copyright__inner">
							<p>Copyright &copy; 2018.Company name All rights reserved.</p>
							<a href="#"><img src="images/others/shape/paypol.png" alt="payment images"></a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- End Copyright Area -->
	</footer>
	<!-- End Footer Style -->
</div>
<!-- Body main wrapper end -->

<!-- Placed js at the end of the document so the pages load faster -->

<!-- jquery latest version -->
<script src="js/vendor/jquery-3.2.1.min.js"></script>
<!-- Bootstrap framework js -->
<script src="js/bootstrap.min.js"></script>
<!-- All js plugins included in this file. -->
<script src="js/plugins.js"></script>
<script src="js/slick.min.js"></script>
<script src="js/owl.carousel.min.js"></script>
<!-- Waypoints.min.js. -->
<script src="js/waypoints.min.js"></script>
<!-- Main js file that contents all jQuery plugins activation. -->
<script src="js/main.js"></script>

</body>
</html>
