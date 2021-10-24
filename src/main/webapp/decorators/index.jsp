<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="icon" type="image/x-icon" href="<c:url value = '/template/styles/assets/favicon.ico' />" />
<link href="<c:url value = '/template/styles/css/styles.css'/>" rel="stylesheet" />
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
	    <script src="<c:url value = '/template/styles/js/scripts.js'/>"></script>
</body>
</html>