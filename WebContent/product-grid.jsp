<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html class="no-js" lang="zxx">
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Product Grid</title>
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
									<li><a href="product-details.jsp">详细信息</a></li>
								</ul>
							</nav>

							<div class="mobile-menu clearfix visible-xs visible-sm">
								<nav id="mobile_dropdown">
									<ul>
										<li><a href="movie?oper=index">Home</a>
										<li><a href="movie?oper=all">List</a></li>
										<li><a href="product-details.jsp">Details</a></li>
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
									<a href="#"><i class="icon-user icons"></i></a>
								</div>
								<div class="htc__shopping__cart">
									<a class="cart__menu" href="#"><i class="icon-handbag icons"></i></a>
									<a href="#"><span class="htc__qua">2</span></a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="mobile-menu-area"></div>
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
		<!-- Start Cart Panel -->
		<div class="shopping__cart">
			<div class="shopping__cart__inner">
				<div class="offsetmenu__close__btn">
					<a href="#"><i class="zmdi zmdi-close"></i></a>
				</div>
				<div class="shp__cart__wrap">
					<div class="shp__single__product">
						<div class="shp__pro__thumb">
							<a href="#">
								<img src="images/product-2/sm-smg/1.jpg" alt="product images">
							</a>
						</div>
						<div class="shp__pro__details">
							<h2><a href="product-details.jsp">BO&Play Wireless Speaker</a></h2>
							<span class="quantity">QTY: 1</span>
							<span class="shp__price">$105.00</span>
						</div>
						<div class="remove__btn">
							<a href="#" title="Remove this item"><i class="zmdi zmdi-close"></i></a>
						</div>
					</div>
					<div class="shp__single__product">
						<div class="shp__pro__thumb">
							<a href="#">
								<img src="images/product-2/sm-smg/2.jpg" alt="product images">
							</a>
						</div>
						<div class="shp__pro__details">
							<h2><a href="product-details.jsp">Brone Candle</a></h2>
							<span class="quantity">QTY: 1</span>
							<span class="shp__price">$25.00</span>
						</div>
						<div class="remove__btn">
							<a href="#" title="Remove this item"><i class="zmdi zmdi-close"></i></a>
						</div>
					</div>
				</div>
				<ul class="shoping__total">
					<li class="subtotal">Subtotal:</li>
					<li class="total__price">$130.00</li>
				</ul>
				<ul class="shopping__btn">
					<li><a href="#">View Cart</a></li>
					<li class="shp__checkout"><a href="#">Checkout</a></li>
				</ul>
			</div>
		</div>
		<!-- End Cart Panel -->
	</div>
	<!-- End Offset Wrapper -->
	<!-- Start Bradcaump area -->
	<div class="ht__bradcaump__area" style="background: rgba(0, 0, 0, 0) url(images/bg/4.jpg) no-repeat scroll center center / cover ;">
		<div class="ht__bradcaump__wrap">
			<div class="container">
				<div class="row">
					<div class="col-xs-12">
						<div class="bradcaump__inner">
							<nav class="bradcaump-inner">
							  <a class="breadcrumb-item" href="movie?oper=index">首页</a>
							  <span class="brd-separetor"><i class="zmdi zmdi-chevron-right"></i></span>
							  <span class="breadcrumb-item active">所有电影</span>
							</nav>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End Bradcaump area -->
	
	
	<!-- Start Product Grid -->
	<section class="htc__product__grid bg__white ptb--100">
		<div class="container">
			<div class="row">
				<div class="col-lg-9 col-lg-push-3 col-md-9 col-md-push-3 col-sm-12 col-xs-12">
				
					<div class="htc__product__rightidebar">
						<div class="htc__grid__top">
							<div class="htc__select__option">
							</div>	
							<!-- Start List And Grid View -->
							<ul class="view__mode" role="tablist">
								<li role="presentation" class="grid-view active"><a href="#grid-view" role="tab" data-toggle="tab"><i class="zmdi zmdi-grid"></i></a></li>
								<li role="presentation" class="list-view"><a href="#list-view" role="tab" data-toggle="tab"><i class="zmdi zmdi-view-list"></i></a></li>
							</ul>
							<!-- End List And Grid View -->
						</div>
						
						
					<!-- Start Product View 简单展示电影 -->
						<div class="row">
							<div class="shop__grid__view__wrap">
								<div role="tabpanel" id="grid-view" class="single-grid-view tab-pane fade in active clearfix">
										
									<!-- 展示所有电影 -->
									
									
	<c:forEach items="${allmovie }" var="movie">
			<div class="col-md-4 col-lg-4 col-sm-6 col-xs-12">
				<div class="category">
					<div class="ht__cat__thumb">
						<a href="movie?oper=movieinfo&mid=${movie.mid}">
							<img src="${movie.mimage}" alt="product images">
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
						<h4><a href="movie?oper=movieinfo&mid=${movie.mid}">${movie.mname }</a></h4>
						<ul class="fr__pro__prize">
							<li>$${movie.price }</li>
						</ul>
					</div>
				</div>
			</div>
	
	</c:forEach>
	
									
									
									
								</div>
								
								<!-- Start List Product 竖直展示电影-->
								<div role="tabpanel" id="list-view" class="single-grid-view tab-pane fade clearfix">
									<div class="col-xs-12">
										<div class="ht__list__wrap">
										<c:forEach items="${allmovie}" var="movie">
												<div class="ht__list__product">
													<div class="ht__list__thumb">
														<a href="product-details.jsp"> <img src="${movie.mimage}" alt="product images"></a>
													</div>
													<div class="htc__list__details">
														<h2><a href="movie?oper=movieinfo&mid=${movie.mid}">${movie.mname }</a></h2>
														<ul  class="pro__prize">
															<li>$${movie.price}</li>
														</ul>
														<ul class="rating">
															<li><i class="icon-star icons"></i></li>
															<li><i class="icon-star icons"></i></li>
															<li><i class="icon-star icons"></i></li>
															<li class="old"><i class="icon-star icons"></i></li>
															<li class="old"><i class="icon-star icons"></i></li>
														</ul>
														<p>${movie.introduction}</p>
														<div class="fr__list__btn">
															<a class="fr__btn" href="#">购票</a>
														</div>
													</div>
												</div>
										</c:forEach>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- End List Product -->
						
						<!-- End Product View -->
					</div>
					
					
					<!-- Start Pagenation 分页 -->
					<div class="row">
						<div class="col-xs-12">
							<ul class="htc__pagenation">
							   <li><a href="#"><i class="zmdi zmdi-chevron-left"></i></a></li> 
							   <li><a href="#">1</a></li> 
							   <li class="active"><a href="#">2</a></li>   
							   <li><a href="#">3</a></li> 
							   <li><a href="#"><i class="zmdi zmdi-chevron-right"></i></a></li> 
							</ul>
						</div>
					</div>
					<!-- End Pagenation -->
					
					
					
				</div>
				<div class="col-lg-3 col-lg-pull-9 col-md-3 col-md-pull-9 col-sm-12 col-xs-12 smt-40 xmt-40">
					<div class="htc__product__leftsidebar">
						<!-- Start Prize Range -->
						<div class="htc-grid-range">
							<h4 class="title__line--4">电影价格</h4>
							<div class="content-shopby">
								<div class="price_filter s-filter clear"> 
								
									<form action="movie?oper=movieamount" method="POST">
										<div id="slider-range"></div>
										<div class="slider__range--output">
											<div class="price__output--wrap">
												<div class="price--output">
													<span>价格 :</span>	<input type="text" id="amount" name="amount" readonly>
												</div>
												 <div class="price--filter">
													<p onclick="search()" >Search</p>
												</div>
												
											</div>
										</div>
									</form>
									
								</div>
							</div>
						</div>
						<!-- End Prize Range -->
						<!-- Start Category Area -->
						<div class="htc__category">
							<h4 class="title__line--4">电影类型</h4>
							<ul class="ht__cat__list">
								<li><a href="movie?oper=movietype&type=爱情">爱情</a></li>
								<li><a href="movie?oper=movietype&type=喜剧">喜剧</a></li>
								<li><a href="movie?oper=movietype&type=动作">动作</a></li>
								<li><a href="movie?oper=movietype&type=剧情">剧情</a></li>
								<li><a href="movie?oper=movietype&type=科幻">科幻</a></li>
								<li><a href="movie?oper=movietype&type=恐怖">恐怖</a></li>
								<li><a href="movie?oper=movietype&type=动画">动画</a></li>
								<li><a href="movie?oper=movietype&type=惊悚">惊悚</a></li>
								<li><a href="movie?oper=movietype&type=犯罪">犯罪</a></li>
							</ul>
						</div>
						<!-- End Category Area -->
						
						<!-- Start Pro Color  
						<div class="ht__pro__color">
							<h4 class="title__line--4">color</h4>
							<ul class="ht__color__list">
								<li class="grey"><a href="#">grey</a></li>
								<li class="lamon"><a href="#">lamon</a></li>
								<li class="white"><a href="#">white</a></li>
								<li class="red"><a href="#">red</a></li>
								<li class="black"><a href="#">black</a></li>
								<li class="pink"><a href="#">pink</a></li>
							</ul>
						</div>
						 -->
						<!-- End Pro Color -->
						
						
						<!-- Start Pro Size 
						<div class="ht__pro__size">
							<h4 class="title__line--4">Size</h4>
							<ul class="ht__size__list">
								<li><a href="#">xs</a></li>
								<li><a href="#">s</a></li>
								<li><a href="#">m</a></li>
								<li><a href="#">reld</a></li>
								<li><a href="#">xl</a></li>
							</ul>
						</div>-->
						<!-- End Pro Size    -->
						<!-- Start Tag Area   <div class="htc__tag">
							<h4 class="title__line--4">tags</h4>
							<ul class="ht__tag__list">
								<li><a href="#">Clothing</a></li>
								<li><a href="#">bag</a></li>
								<li><a href="#">Shoes</a></li>
								<li><a href="#">Jewelry</a></li>
								<li><a href="#">Food</a></li>
								<li><a href="#">Aceessories</a></li>
								<li><a href="#">Store</a></li>
								<li><a href="#">Watch</a></li>
								<li><a href="#">Other</a></li>
							</ul>
						</div>-->
						
						<!-- End Tag Area -->
						
						
						<!-- Start Compare Area 
    						<div class="htc__compare__area">
							<h4 class="title__line--4">compare</h4>
							<ul class="htc__compare__list">
								<li><a href="#">White men’s polo<i class="icon-trash icons"></i></a></li>
								<li><a href="#">T-shirt for style girl...<i class="icon-trash icons"></i></a></li>
								<li><a href="#">Basic dress for women...<i class="icon-trash icons"></i></a></li>
							</ul>
							<ul class="ht__com__btn">
								<li><a href="#">clear all</a></li>
								<li class="compare"><a href="#">Compare</a></li>
							</ul>
						</div>
						-->
						<!-- End Compare Area -->
						
						
						<!-- 显示畅销的电影    占时写死-->
						<!-- Start Best Sell Area  -->
						<div class="htc__recent__product">
							<h2 class="title__line--4">最近畅销热门电影</h2>
							<div class="htc__recent__product__inner">
								<!-- Start Single Product -->
								<div class="htc__best__product">
									<div class="htc__best__pro__thumb">
										<a href="movie?oper=movieinfo&mid=3">
											<img src="images/product-2/sm-smg/t1.jpg" alt="small product">
										</a>
									</div>
									<div class="htc__best__product__details">
										<h2><a href="movie?oper=movieinfo&mid=3">海王</a></h2>
										<ul class="rating">
											<li><i class="icon-star icons"></i></li>
											<li><i class="icon-star icons"></i></li>
											<li><i class="icon-star icons"></i></li>
											<li class="old"><i class="icon-star icons"></i></li>
											<li class="old"><i class="icon-star icons"></i></li>
										</ul>
										<ul  class="pro__prize">
											<li>$43</li>
										</ul>
									</div>
								</div>
								<!-- End Single Product -->
								<!-- Start Single Product -->
								<div class="htc__best__product">
									<div class="htc__best__pro__thumb">
										<a href="movie?oper=movieinfo&mid=1">
											<img src="images/product-2/sm-smg/t2.jpg" alt="small product">
										</a>
									</div>
									<div class="htc__best__product__details">
										<h2><a href="movie?oper=movieinfo&mid=1">毒液：致命守护者</a></h2>
										<ul class="rating">
											<li><i class="icon-star icons"></i></li>
											<li><i class="icon-star icons"></i></li>
											<li><i class="icon-star icons"></i></li>
											<li class="old"><i class="icon-star icons"></i></li>
											<li class="old"><i class="icon-star icons"></i></li>
										</ul>
										<ul  class="pro__prize">
											<li>$43</li>
										</ul>
									</div>
								</div>
								<!-- End Single Product -->
								<!-- Start Single Product -->
								<div class="htc__best__product">
									<div class="htc__best__pro__thumb">
										<a href="movie?oper=movieinfo&mid=2">
											<img src="images/product-2/sm-smg/t3.jpg" alt="small product">
										</a>
									</div>
									<div class="htc__best__product__details">
										<h2><a href="movie?oper=movieinfo&mid=2">狗十三</a></h2>
										<ul class="rating">
											<li><i class="icon-star icons"></i></li>
											<li><i class="icon-star icons"></i></li>
											<li><i class="icon-star icons"></i></li>
											<li class="old"><i class="icon-star icons"></i></li>
											<li class="old"><i class="icon-star icons"></i></li>
										</ul>
										<ul  class="pro__prize">
											<li>$25</li>
										</ul>
									</div>
								</div>
								<!-- End Single Product -->
							</div>
						</div>
						<!-- End Best Sell Area -->
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- End Product Grid -->
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
	<!-- Start Banner Area -->
	<div class="htc__banner__area">
		<ul class="banner__list owl-carousel owl-theme clearfix">
			<li><a href="product-details.jsp"><img src="images/banner/bn-3/1.jpg" alt="banner images"></a></li>
			<li><a href="product-details.jsp"><img src="images/banner/bn-3/2.jpg" alt="banner images"></a></li>
			<li><a href="product-details.jsp"><img src="images/banner/bn-3/3.jpg" alt="banner images"></a></li>
			<li><a href="product-details.jsp"><img src="images/banner/bn-3/4.jpg" alt="banner images"></a></li>
			<li><a href="product-details.jsp"><img src="images/banner/bn-3/5.jpg" alt="banner images"></a></li>
			<li><a href="product-details.jsp"><img src="images/banner/bn-3/6.jpg" alt="banner images"></a></li>
			<li><a href="product-details.jsp"><img src="images/banner/bn-3/1.jpg" alt="banner images"></a></li>
			<li><a href="product-details.jsp"><img src="images/banner/bn-3/2.jpg" alt="banner images"></a></li>
		</ul>
	</div>
	<!-- End Banner Area -->
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

<script type="text/javascript">

  function search() {

	  var amount=$("#amount").val();
	  
	  
	  //window.location.href="movie?oper=movieamount&amount="+amount;
	  
	  
	  $.ajax({
          type: "POST",
          url: "movie?oper=movieamount",
          data:"amount="+amount,
          cache: false, //不缓存此页面
          success: function (data) {
              	 
          }
      });
}

</script>

</body>
</html>