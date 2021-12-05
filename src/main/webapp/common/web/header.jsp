<%@include file="/common/taglib.jsp"%>
<header id="header">
	<!--header-->
	<div class="header_top">
		<!--header_top-->
		<div class="container">
			<div class="row">
				<div class="col-sm-6">
					<div class="contactinfo">
						<ul class="nav nav-pills">
							<li><a href="#"><i class="fa fa-phone"></i> +84967064267</a></li>
							<li><a href="#"><i class="fa fa-envelope"></i>
									luonluondandau2001@gmail.com</a></li>
						</ul>
					</div>
				</div>
				<div class="col-sm-6">
					<div class="social-icons pull-right">
						<ul class="nav navbar-nav">
							<li><a href="#"><i class="fa fa-facebook"></i></a></li>
							<li><a href="#"><i class="fa fa-twitter"></i></a></li>
							<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
							<li><a href="#"><i class="fa fa-dribbble"></i></a></li>
							<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--/header_top-->

	<div class="header-middle">
		<!--header-middle-->
		<div class="container">
			<div class="row">
				<div class="col-md-4 clearfix">
					<div class="logo pull-left">
						<a href='<c:url value="/home?action=home" />'><img
							src="<c:url value='/template/web/images/home/logo.png'/>" alt="" /></a>
					</div>
					<div class="btn-group pull-right clearfix">
						<div class="btn-group">
							<button type="button" class="btn btn-default dropdown-toggle usa"
								data-toggle="dropdown">
								VietNam <span class="caret"></span>
							</button>
							<ul class="dropdown-menu">
								<li><a href="">VietNam</a></li>
								<li><a href="">UK</a></li>
							</ul>
						</div>

						<div class="btn-group">
							<button type="button" class="btn btn-default dropdown-toggle usa"
								data-toggle="dropdown">
								VND <span class="caret"></span>
							</button>
							<ul class="dropdown-menu">
								<li><a href="">VND</a></li>
								<li><a href="">Dollar</a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-md-8 clearfix">
					<div class="shop-menu clearfix pull-right">
						<ul class="nav navbar-nav">
							<c:if test="${sessionScope.account.isAdmin == 1}">
								<li><a href=""><i class="fa fa-user"></i> Manage
										Account</a></li>
							</c:if>
							<c:if test="${sessionScope.account.isSell == 1}">
								<li><a href="manager"><i class="fa fa-star"></i> Manage
										Product</a></li>
							</c:if>
							<li><a href='<c:url value="/checkout?action=checkout" />'><i
									class="fa fa-crosshairs"></i> Checkout</a></li>
							<li><a href='<c:url value="/cart?action=cart" />'><i
									class="fa fa-shopping-cart"></i> Cart</a></li>
							<c:if test="${sessionScope.account == null}">
								<li><a href='<c:url value="/dang-nhap?action=login" />'><i
										class="fa fa-lock"></i> Login</a></li>
							</c:if>
							<c:if test="${sessionScope.account != null}">
								<li><a href=""><i class="fa fa-lock"></i> Hello
										${sessionScope.account.user}</a></li>
								<li><a href="logout"><i class="fa fa-lock"></i> Logout</a></li>

							</c:if>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--/header-middle-->

	<div class="header-bottom">
		<!--header-bottom-->
		<div class="container">
			<div class="row">
				<div class="col-sm-9">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse"
							data-target=".navbar-collapse">
							<span class="sr-only">Toggle navigation</span> <span
								class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>
					</div>
					<div class="mainmenu pull-left">
						<ul class="nav navbar-nav collapse navbar-collapse">
							<li><a href='<c:url value="/home?action=home" />'
								class="active">Home</a></li>
							<li class="dropdown"><a href="#">Shop<i
									class="fa fa-angle-down"></i></a>
								<ul role="menu" class="sub-menu">
									<li><a
										href='<c:url value="/trang-chu?action=trang-chu" />'>Products</a></li>
									<li><a
										href='<c:url value="/product-details?action=product-details" />'>Product
											Details</a></li>
									<li><a href='<c:url value="/checkout?action=checkout" />'>Checkout</a></li>
									<li><a href='<c:url value="/cart?action=cart" />'>Cart</a></li>
									<li><a href='<c:url value="/dang-nhap?action=login" />'>Login</a></li>
								</ul></li>
							<li class="dropdown"><a
								href='<c:url value="/blog?action=blog" />'>Blog<i
									class="fa fa-angle-down"></i></a>
								<ul role="menu" class="sub-menu">
									<li><a href='<c:url value="/blog?action=blog" />'>Blog
											List</a></li>
									<li><a
										href='<c:url value="/blog-single?action=blog-single" />'>Blog
											Single</a></li>
								</ul></li>
							<li><a href='<c:url value="/404?action=404" />'>404</a></li>
							<li><a
								href='<c:url value="/contact-us?action=contact-us" />'>Contact</a></li>
						</ul>
					</div>
				</div>
				<form action="search" method="post">
					<div class="col-sm-3">
						<div class="search_box pull-right">
							<input name="txt" type="text" placeholder="Search" />
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
	<!--/header-bottom-->
</header>
<!--/header-->

<section id="slider">
	<!--slider-->
	<div class="container">
		<div class="row">
			<div class="col-sm-12">
				<div id="slider-carousel" class="carousel slide"
					data-ride="carousel">
					<ol class="carousel-indicators">
						<li data-target="#slider-carousel" data-slide-to="0"
							class="active"></li>
						<li data-target="#slider-carousel" data-slide-to="1"></li>
						<li data-target="#slider-carousel" data-slide-to="2"></li>
					</ol>

					<div class="carousel-inner">
						<div class="item active">
							<div class="col-sm-6">
								<h1>
									<span>E</span>-SHOPPER
								</h1>
								<p>The pain itself is love, the main iterative process, but
									I give them as much time as fatigue and great pain something.</p>
								<button type="button" class="btn btn-default get">Get
									it now</button>
							</div>
							<div class="col-sm-6">
								<img src="<c:url value='/template/web/images/home/girl1.jpg'/>"
									class="girl img-responsive" alt="" /> <img
									src="<c:url value='/template/web/images/home/pricing.png'/>"
									class="pricing" alt="" />
							</div>
						</div>
						<div class="item">
							<div class="col-sm-6">
								<h1>
									<span>E</span>-SHOPPER
								</h1>
								<h2>100% Responsive Design</h2>
								<p>The pain itself is love, the main iterative process, but
									I give them as much time as fatigue and great pain something.</p>
								<button type="button" class="btn btn-default get">Get
									it now</button>
							</div>
							<div class="col-sm-6">
								<img src="<c:url value='/template/web/images/home/girl2.jpg'/>"
									class="girl img-responsive" alt="" /> <img
									src="<c:url value='/template/web/images/home/pricing.png'/>"
									class="pricing" alt="" />
							</div>
						</div>

						<div class="item">
							<div class="col-sm-6">
								<h1>
									<span>E</span>-SHOPPER
								</h1>
								<p>The pain itself is love, the main iterative process, but
									I give them as much time as fatigue and great pain so mething.</p>
								<button type="button" class="btn btn-default get">Get
									it now</button>
							</div>
							<div class="col-sm-6">
								<img src="<c:url value='/template/web/images/home/girl3.jpg'/>"
									class="girl img-responsive" alt="" /> <img
									src="<c:url value='/template/web/images/home/pricing.png'/>"
									class="pricing" alt="" />
							</div>
						</div>

					</div>

					<a href="#slider-carousel" class="left control-carousel hidden-xs"
						data-slide="prev"> <i class="fa fa-angle-left"></i>
					</a> <a href="#slider-carousel"
						class="right control-carousel hidden-xs" data-slide="next"> <i
						class="fa fa-angle-right"></i>
					</a>
				</div>

			</div>
		</div>
	</div>
</section>
<!--/slider-->
