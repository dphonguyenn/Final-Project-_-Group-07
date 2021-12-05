<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!--/slider-->

	<div class="row">
		<div class="col-sm-3">
			<div class="left-sidebar">
				<h2>Category</h2>
				<div class="panel-group category-products" id="accordian">
					<!--category-productsr-->
					<div class="panel panel-default">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" data-parent="#accordian"
									href="#sportswear"> <span class="badge pull-right"><i
										class="fa fa-plus"></i></span> Sportswear
								</a>
							</h4>
						</div>
						<div id="sportswear" class="panel-collapse collapse">
							<div class="panel-body">
								<ul>
									<c:forEach items="${listCC}" var="o">
										<li><a href="category?cid=${o.cid}">${o.cname} </a></li>
									</c:forEach>
								</ul>
							</div>
						</div>
					</div>
					<div class="panel panel-default">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" data-parent="#accordian" href="#mens">
									<span class="badge pull-right"><i class="fa fa-plus"></i></span>
									Mens
								</a>
							</h4>
						</div>
						<div id="mens" class="panel-collapse collapse">
							<div class="panel-body">
								<ul>
									<li><a href="#">Fendi</a></li>
									<li><a href="#">Guess</a></li>
									<li><a href="#">Valentino</a></li>
									<li><a href="#">Dior</a></li>
									<li><a href="#">Versace</a></li>
									<li><a href="#">Armani</a></li>
									<li><a href="#">Prada</a></li>
									<li><a href="#">Dolce and Gabbana</a></li>
									<li><a href="#">Chanel</a></li>
									<li><a href="#">Gucci</a></li>
								</ul>
							</div>
						</div>
					</div>

					<div class="panel panel-default">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" data-parent="#accordian"
									href="#womens"> <span class="badge pull-right"><i
										class="fa fa-plus"></i></span> Womens
								</a>
							</h4>
						</div>
						<div id="womens" class="panel-collapse collapse">
							<div class="panel-body">
								<ul>
									<li><a href="#">Fendi</a></li>
									<li><a href="#">Guess</a></li>
									<li><a href="#">Valentino</a></li>
									<li><a href="#">Dior</a></li>
									<li><a href="#">Versace</a></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="panel panel-default">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a href="#">Kids</a>
							</h4>
						</div>
					</div>
					<div class="panel panel-default">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a href="#">Fashion</a>
							</h4>
						</div>
					</div>
					<div class="panel panel-default">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a href="#">Households</a>
							</h4>
						</div>
					</div>
					<div class="panel panel-default">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a href="#">Interiors</a>
							</h4>
						</div>
					</div>
					<div class="panel panel-default">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a href="#">Clothing</a>
							</h4>
						</div>
					</div>
					<div class="panel panel-default">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a href="#">Bags</a>
							</h4>
						</div>
					</div>
					<div class="panel panel-default">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a href="#">Shoes</a>
							</h4>
						</div>
					</div>
				</div>
				<!--/category-products-->

				<div class="brands_products">
					<!--brands_products-->
					<h2>Last Product</h2>
					<div class="brands-name">
						<div class="shipping text-center">
							<!--shipping-->
							<img
								src="<c:url value='/template/web/images/home/thien.png' />"
								alt="" />
								<>
						</div>
						<!--/shipping-->
					</div>
				</div>
				<!--/brands_products-->

				<div class="price-range">
					<!--price-range-->
					<h2>Price Range</h2>
					<div class="well text-center">
						<input type="text" class="span2" value="" data-slider-min="0"
							data-slider-max="600" data-slider-step="5"
							data-slider-value="[250,450]" id="sl2"><br /> <b
							class="pull-left">$ 0</b> <b class="pull-right">$ 600</b>
					</div>
				</div>
				<!--/price-range-->

				<div class="shipping text-center">
					<!--shipping-->
					<img src="<c:url value='/template/web/images/home/thien1.png' />"
						alt="" />
				</div>
				<!--/shipping-->

			</div>
		</div>
		<div class="col-sm-9 padding-right">
			<div class="features_items">
				<!--features_items-->
				<h2 class="title text-center">Features Items</h2>
				<c:forEach items="${listP}" var="o">
					<div class="col-sm-4">
						<div class="product-image-wrapper">
							<div class="single-products">
								<div class="productinfo text-center">
									<img src="${o.image}/>" alt="" />
									<h2>${o.price}</h2>
									<p><a href = "detail?pid=${o.id}">${o.name}</a></p>
									<a href="cart?id=${o.id}" class="btn btn-default add-to-cart"><i
										class="fa fa-shopping-cart"></i>Add to cart</a>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
			<!--features_items-->


		</div>
	</div>
</body>
</html>