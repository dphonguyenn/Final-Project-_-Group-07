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
	<div class="container text-center">
		<div class="logo-404">
			<a href="index.html"><img
				src="<c:url value='/template/web/images/home/logo.png' />" alt="" /></a>
		</div>
		<div class="content-404">
			<img
				src="<c:url value='/template/web/images/404/404.png' />" class="img-responsive" alt="" />
			<h1>
				<b>OPPS!</b> We Couldn’t Find this Page
			</h1>
			<p>Uh... So it looks like you brock something. The page you are
				looking for has up and Vanished.</p>
			<h2>
				<a href="index.html">Bring me back Home</a>
			</h2>
		</div>
	</div>
</body>
</html>