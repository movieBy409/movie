<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html class="no-js" lang="zxx">
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Product Details</title>
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
	
		<!-- 电影名字搜索 -->
		<div class="search__area">
			<div class="container" >
				<div class="row" >
					<div class="col-md-12" >
						<div class="search__inner">
							<form action="movie?oper=findmovie" method="post">
								<input placeholder="Search here... " name="mname"  type="text">
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
							<h2><a href="movie?oper=all">BO&Play Wireless Speaker</a></h2>
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
							<h2><a href="movie?oper=all">Brone Candle</a></h2>
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
							  <a class="breadcrumb-item" href="movie?oper=all">所有电影</a>
							  <span class="brd-separetor"><i class="zmdi zmdi-chevron-right"></i></span>
							  <span class="breadcrumb-item active">结束</span>
							</nav>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End Bradcaump area -->
	
	
	<!-- Start Product Details Area -->
	<section class="htc__product__details bg__white ptb--100">
	
	
		<!-- Start Product Details Top -->
		<div class="htc__product__details__top">
			<div class="container">
				<div class="row">
					<div class="col-md-5 col-lg-5 col-sm-12 col-xs-12">
						<div class="htc__product__details__tab__content">
							<!-- Start Product Big Images -->
							<div class="product__big__images">
								<div class="portfolio-full-image tab-content">
									<div role="tabpanel" class="tab-pane fade in active" id="img-tab-1">
										<img src="${movie.mimage}" alt="full-image">
									</div>

								</div>
							</div>
							<!-- End Product Big Images -->
						</div>
					</div>
					<div class="col-md-7 col-lg-7 col-sm-12 col-xs-12 smt-40 xmt-40">
						<div class="ht__product__dtl">
							<h2>${movie.mname }</h2>
							<ul class="rating">
								<li><i class="icon-star icons"></i></li>
								<li><i class="icon-star icons"></i></li>
								<li><i class="icon-star icons"></i></li>
								<li class="old"><i class="icon-star icons"></i></li>
								<li class="old"><i class="icon-star icons"></i></li>
							</ul>
							
							<div class="ht__pro__desc">
								<div class="sin__desc">
									<p><span>导演:</span> &nbsp;&nbsp;${movie.director }</p>
								</div>
								<div class="sin__desc">
									<p><span>主演:</span>&nbsp;&nbsp; ${movie.starring}</p>
								</div>
								<div class="sin__desc">
									<p><span>制片国家/地区:</span> &nbsp;&nbsp;${movie.area }</p>
								</div>
								<div class="sin__desc">
									<p><span>片长:</span> &nbsp;&nbsp;${movie.mtime }</p>
								</div>
								<div class="sin__desc">
									<p><span>语言:</span>&nbsp;&nbsp; ${movie.language }</p>
								</div>
								<div class="sin__desc">
									<p><span>类型:</span>&nbsp;&nbsp; ${movie.type }</p>
								</div>
								<div class="sin__desc">
									<p><span>现价/影院价:</span>&nbsp;&nbsp; ${movie.price }</p>
								</div>
							   <p class="pro__info"><span>剧情介绍:</span>&nbsp;&nbsp;${movie.introduction }</p>
							   
							   <div class="cr__btn">
										<a href="movie?oper=movieinfo&mid=16">购票</a>
									</div>

								<div class="sin__desc product__share__link">
									<p><span>分享:</span></p>
									<ul class="pro__share">
										<li><a href="#" target="_blank"><i class="icon-social-twitter icons"></i></a></li>

										<li><a href="#" target="_blank"><i class="icon-social-instagram icons"></i></a></li>

										<li><a href="https://www.facebook.com/Furny/?ref=bookmarks" target="_blank"><i class="icon-social-facebook icons"></i></a></li>

										<li><a href="#" target="_blank"><i class="icon-social-google icons"></i></a></li>

										<li><a href="#" target="_blank"><i class="icon-social-linkedin icons"></i></a></li>

										<li><a href="#" target="_blank"><i class="icon-social-pinterest icons"></i></a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- End Product Details Top -->
	</section>
	<!-- End Product Details Area -->
	
	
	
	<!-- Start Product Description   影片详细信息下的介绍-->
	<section class="htc__produc__decription bg__white">
		<div class="container">
			<div class="row">
				<div class="col-xs-12">
					<!-- Start List And Grid View -->
					<ul class="pro__details__tab" role="tablist">
						<li role="presentation" class="description active"><a href="#description" role="tab" data-toggle="tab">详细描述</a></li>
						<li role="presentation" class="review"><a href="#review" role="tab" data-toggle="tab">评论</a></li>
						<li role="presentation" class="shipping"><a href="#shipping" role="tab" data-toggle="tab">shipping</a></li>
					</ul>
					<!-- End List And Grid View -->
				</div>
			</div>
			<div class="row">
				<div class="col-xs-12">
					<div class="ht__pro__details__content">
						<!-- Start Single Content -->
						<div role="tabpanel" id="description" class="pro__single__content tab-pane fade in active">
							<div class="pro__tab__content__inner">
								<p>Formfitting clothing is all about a sweet spot. That elusive place where an item is tight but not clingy, sexy but not cloying, cool but not over the top. Alexandra Alvarez’s label, Alix, hits that mark with its range of comfortable, minimal, and neutral-hued bodysuits.</p>
								<h4 class="ht__pro__title">Description</h4>
								<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem</p>
								<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p>
								<h4 class="ht__pro__title">Standard Featured</h4>
								<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in</p>
							</div>
						</div>
						<!-- End Single Content -->
						<!-- Start Single Content -->
						<div role="tabpanel" id="review" class="pro__single__content tab-pane fade">
							<div class="pro__tab__content__inner">
								<p>Formfitting clothing is all about a sweet spot. That elusive place where an item is tight but not clingy, sexy but not cloying, cool but not over the top. Alexandra Alvarez’s label, Alix, hits that mark with its range of comfortable, minimal, and neutral-hued bodysuits.</p>
								<h4 class="ht__pro__title">Description</h4>
								<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem</p>
								<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p>
								<h4 class="ht__pro__title">Standard Featured</h4>
								<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem</p>
							</div>
						</div>
						<!-- End Single Content -->
						<!-- Start Single Content -->
						<div role="tabpanel" id="shipping" class="pro__single__content tab-pane fade">
							<div class="pro__tab__content__inner">
								<p>Formfitting clothing is all about a sweet spot. That elusive place where an item is tight but not clingy, sexy but not cloying, cool but not over the top. Alexandra Alvarez’s label, Alix, hits that mark with its range of comfortable, minimal, and neutral-hued bodysuits.</p>
								<h4 class="ht__pro__title">Description</h4>
								<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem</p>
								<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p>
								<h4 class="ht__pro__title">Standard Featured</h4>
								<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem</p>
							</div>
						</div>
						<!-- End Single Content -->
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- End Product Description -->
	<!-- Start Banner Area -->
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

</body>
</html>