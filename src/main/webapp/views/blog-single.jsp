<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
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
									<li><a href="">Nike </a></li>
									<li><a href="">Under Armour </a></li>
									<li><a href="">Adidas </a></li>
									<li><a href="">Puma</a></li>
									<li><a href="">ASICS </a></li>
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
									<li><a href="">Fendi</a></li>
									<li><a href="">Guess</a></li>
									<li><a href="">Valentino</a></li>
									<li><a href="">Dior</a></li>
									<li><a href="">Versace</a></li>
									<li><a href="">Armani</a></li>
									<li><a href="">Prada</a></li>
									<li><a href="">Dolce and Gabbana</a></li>
									<li><a href="">Chanel</a></li>
									<li><a href="">Gucci</a></li>
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
									<li><a href="">Fendi</a></li>
									<li><a href="">Guess</a></li>
									<li><a href="">Valentino</a></li>
									<li><a href="">Dior</a></li>
									<li><a href="">Versace</a></li>
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
					<h2>Brands</h2>
					<div class="brands-name">
						<ul class="nav nav-pills nav-stacked">
							<li><a href=""> <span class="pull-right">(50)</span>Acne
							</a></li>
							<li><a href=""> <span class="pull-right">(56)</span>Grüne
									Erde
							</a></li>
							<li><a href=""> <span class="pull-right">(27)</span>Albiro
							</a></li>
							<li><a href=""> <span class="pull-right">(32)</span>Ronhill
							</a></li>
							<li><a href=""> <span class="pull-right">(5)</span>Oddmolly
							</a></li>
							<li><a href=""> <span class="pull-right">(9)</span>Boudestijn
							</a></li>
							<li><a href=""> <span class="pull-right">(4)</span>Rösch
									creative culture
							</a></li>
						</ul>
					</div>
				</div>
				<!--/brands_products-->

				<div class="price-range">
					<!--price-range-->
					<h2>Price Range</h2>
					<div class="well">
						<input type="text" class="span2" value="" data-slider-min="0"
							data-slider-max="600" data-slider-step="5"
							data-slider-value="[250,450]" id="sl2"><br /> <b>$ 0</b>
						<b class="pull-right">$ 600</b>
					</div>
				</div>
				<!--/price-range-->

				<div class="shipping text-center">
					<!--shipping-->
					<img src="<c:url value='/template/web/images/home/shipping.jpg' />"
						alt="" />
				</div>
				<!--/shipping-->
			</div>
		</div>
		<div class="col-sm-9">
			<div class="blog-post-area">
				<h2 class="title text-center">Latest From our Blog</h2>
				<div class="single-blog-post">
					<h3>Girls Pink T Shirt arrived in store</h3>
					<div class="post-meta">
						<ul>
							<li><i class="fa fa-user"></i> Mac Doe</li>
							<li><i class="fa fa-clock-o"></i> 1:33 pm</li>
							<li><i class="fa fa-calendar"></i> DEC 5, 2013</li>
						</ul>
						<span> <i class="fa fa-star"></i> <i class="fa fa-star"></i>
							<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
							class="fa fa-star-half-o"></i>
						</span>
					</div>
					<a href=""> <img
						src="<c:url value='/template/web/images/blog/blog-one.jpg'/>"
						alt="">
					</a>
					<p>The pain itself is important, but I give it to the pain of
						some great pain. In order for the least to come, what of ours to
						exercise any school of labor except to take advantage of the
						objectives from it to achieve. But the pain in the film is irure
						to condemn, in pleasure it wants to escape from the pain of being
						cillus that no one pays for.</p>
					<br>

					<p>They are the exceptions the blinds yearn for, they don't
						see, they are the ones who abandon their responsibilities to the
						fault that is soothing the soul's hardships. But in order that you
						may understand whence every born error is the pleasure of accusing
						and praising the pain, I will open the whole matter, and will
						explain the very things which were said by that inventor of the
						truth and as it were the architect of the blessed life.</p>
					<br>

					<p>For no one rejects, or hates, or shuns pleasure, because it
						is pleasure itself, but because great pains result from those who
						do not know how to follow pleasure by reason.</p>
					<br>

					<p>Moreover, there is no one who desires to obtain pain itself
						because pain is important, enhanced, but because times of such a
						nature do not occur so that by toil and pain he may seek some
						great pleasure.</p>
					<div class="pager-area">
						<ul class="pager pull-right">
							<li><a href="#">Pre</a></li>
							<li><a href="#">Next</a></li>
						</ul>
					</div>
				</div>
			</div>
			<!--/blog-post-area-->

			<div class="rating-area">
				<ul class="ratings">
					<li class="rate-this">Rate this item:</li>
					<li><i class="fa fa-star color"></i> <i
						class="fa fa-star color"></i> <i class="fa fa-star color"></i> <i
						class="fa fa-star"></i> <i class="fa fa-star"></i></li>
					<li class="color">(6 votes)</li>
				</ul>
				<ul class="tag">
					<li>TAG:</li>
					<li><a class="color" href="">Pink <span>/</span></a></li>
					<li><a class="color" href="">T-Shirt <span>/</span></a></li>
					<li><a class="color" href="">Girls</a></li>
				</ul>
			</div>
			<!--/rating-area-->

			<div class="socials-share">
				<a href=""><img
					src="<c:url value='/template/web/images/blog/socials.png'/>" alt=""></a>
			</div>
			<!--/socials-share-->

			<div class="media commnets">
				<a class="pull-left" href="#"> <img class="media-object"
					src="images/blog/man-one.jpg" alt="">
				</a>
				<div class="media-body">
					<h4 class="media-heading">Annie Davis</h4>
					<p>The pain itself is love, the main iterative process, but
						every time I give it as low as toil and to some great pain. For
						more information on how to do our school district employment if
						not to achieve the objectives from it.</p>
					<div class="blog-socials">
						<ul>
							<li><a href=""><i class="fa fa-facebook"></i></a></li>
							<li><a href=""><i class="fa fa-twitter"></i></a></li>
							<li><a href=""><i class="fa fa-dribbble"></i></a></li>
							<li><a href=""><i class="fa fa-google-plus"></i></a></li>
						</ul>
						<a class="btn btn-primary" href="">Other Posts</a>
					</div>
				</div>
			</div>
			<!--Comments-->
			<div class="response-area">
				<h2>3 RESPONSES</h2>
				<ul class="media-list">
					<li class="media"><a class="pull-left" href="#"> <img
							class="media-object"
							src="<c:url value='/template/web/images/blog/man-two.jpg'/>"
							alt="">
					</a>
						<div class="media-body">
							<ul class="sinlge-post-meta">
								<li><i class="fa fa-user"></i>Janis Gallagher</li>
								<li><i class="fa fa-clock-o"></i> 1:33 pm</li>
								<li><i class="fa fa-calendar"></i> SEP 10, 2021</li>
							</ul>
							<p>The pain itself is love, the main iterative process, but I
								give them as much time as fatigue and great pain something. For
								more information on what we do school district to achieve the
								objectives of it .</p>
							<a class="btn btn-primary" href=""><i class="fa fa-reply"></i>Replay</a>
						</div></li>
					<li class="media second-media"><a class="pull-left" href="#">
							<img class="media-object"
							src="<c:url value='/template/web/images/blog/man-three.jpg'/>"
							alt="">
					</a>
						<div class="media-body">
							<ul class="sinlge-post-meta">
								<li><i class="fa fa-user"></i>Janis Gallagher</li>
								<li><i class="fa fa-clock-o"></i> 1:33 pm</li>
								<li><i class="fa fa-calendar"></i>SEP 10, 2021</li>
							</ul>
							<p>The pain itself is love, the main iterative process, but I
								give them as much time as fatigue and great pain something. For
								more information on what we do school district to achieve the
								objectives of it .</p>
							<a class="btn btn-primary" href=""><i class="fa fa-reply"></i>Replay</a>
						</div></li>
					<li class="media"><a class="pull-left" href="#"> <img
							class="media-object"
							src="<c:url value='/template/web/images/blog/man-four.jpg'/>"
							alt="">
					</a>
						<div class="media-body">
							<ul class="sinlge-post-meta">
								<li><i class="fa fa-user"></i>Janis Gallagher</li>
								<li><i class="fa fa-clock-o"></i> 1:33 pm</li>
								<li><i class="fa fa-calendar"></i> SEP 10, 2021</li>
							</ul>
							<p>The pain itself is love, the main iterative process, but I
								give them as much time as fatigue and great pain something. For
								more information on what we do school district to achieve the
								objectives of it .</p>
							<a class="btn btn-primary" href=""><i class="fa fa-reply"></i>Replay</a>
						</div></li>
				</ul>
			</div>
			<!--/Response-area-->
			<div class="replay-box">
				<div class="row">
					<div class="col-sm-4">
						<h2>Leave a replay</h2>
						<form>
							<div class="blank-arrow">
								<label>Your Name</label>
							</div>
							<span>*</span> <input type="text"
								placeholder="write your name...">
							<div class="blank-arrow">
								<label>Email Address</label>
							</div>
							<span>*</span> <input type="email"
								placeholder="your email address...">
							<div class="blank-arrow">
								<label>Web Site</label>
							</div>
							<input type="email" placeholder="current city...">
						</form>
					</div>
					<div class="col-sm-8">
						<div class="text-area">
							<div class="blank-arrow">
								<label>Your Name</label>
							</div>
							<span>*</span>
							<textarea name="message" rows="11"></textarea>
							<a class="btn btn-primary" href="">post comment</a>
						</div>
					</div>
				</div>
			</div>
			<!--/Repaly Box-->
		</div>
	</div>
</html>