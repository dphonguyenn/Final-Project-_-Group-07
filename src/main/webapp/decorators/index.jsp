<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="<c:url value='/template/styles/assets/css/bootstrap.css' />"
	rel="stylesheet">
<link
	href="<c:url value='/template/styles/assets/css/font-awesome.min.css' />"
	rel="stylesheet">
<link
	href="<c:url value='/template/styles/assets/css/flexslider.css' />"
	rel="stylesheet">
<link href="<c:url value='/template/styles/assets/css/style.css' />"
	rel="stylesheet">
</head>
<body>
	<!-- header -->
	<%@ include file="/common/trangchu/header.jsp"%>
	<!-- header -->

	<div class="container">
		<dec:body />
	</div>

	<!-- footer -->
	<%@ include file="/common/trangchu/footer.jsp"%>
	<!-- footer -->
	<script
		src="<c:url value='/template/styles/assets/js/jquery-1.10.2.js' />"></script>
	<script src="<c:url value='/template/styles/assets/js/bootstrap.js' />"></script>
	<script
		src="<c:url value='/template/styles/assets/js/jquery.flexslider.js' />"></script>
	<script
		src="<c:url value='/template/styles/assets/js/scrollReveal.js' />"></script>
	<script
		src="<c:url value='/template/styles/assets/js/jquery.easing.min.js' />"></script>
	<script src="<c:url value='/template/styles/assets/js/custom.js' />"></script>
</body>
</html>