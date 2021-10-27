<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="icon" type="image/x-icon"
	href="<c:url value = '/template/styles/assets/css/bootstrap.css' />" />
<link
	href="<c:url value = '/template/styles/assets/css/font-awesome.min.css'/>"
	rel="stylesheet" />
<link
	href="<c:url value = '/template/styles/assets/css/flexslider.css'/>"
	rel="stylesheet" />
<link href="<c:url value = '/template/styles/assets/css/style.css'/>"
	rel="stylesheet" />
<link
	href='<c:url value = 'http://fonts.googleapis.com/css?family=Open+Sans:400,700,300' />'
	rel='stylesheet' type='text/css' />
<link rel="stylesheet"
	href="<c:url value = 'https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css'/>"
	integrity="sha512-YWzhKL2whUzgiheMoBFwW8CKV4qpHQAEuvilg9FAn5VJUDwKZZxkJNuGM4XkWuk94WCrrwslk8yWNGmY1EduTA=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />


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
		src="<c:url value = '/template/styles/assets/js/jquery-1.10.2.js'/>"></script>
	<script
		src="<c:url value = '/template/styles/assets/js/jquery.flexslider.js'/>"></script>
	<script
		src="<c:url value = '/template/styles/assets/js/scrollReveal.js'/>"></script>
	<script
		src="<c:url value = '/template/styles/assets/js/jquery.easing.min.js'/>"></script>
	<script src="<c:url value = '/template/styles/assets/js/custom.js'/>"></script>
	<script
		src="<c:url value = '/template/styles/assets/js/bootstrap.js'/>"></script>

</body>
</html>