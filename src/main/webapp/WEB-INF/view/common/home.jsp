<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="fakeHeader">
<h1>Home</h1>
	<div>
		<a href="${pageContext.request.contextPath}/customer/customerOne">마이페이지</a>
		<a href="${pageContext.request.contextPath}/common/login">로그인</a>
	</div>
  	<div class="fakeLogout">
		<a href="${pageContext.request.contextPath}/common/logout">로그아웃</a>
	</div>
	<table class ="table table-bordered">
		<c:forEach items="${goodsList}" var="g">
		<tr>
			<td>이미지</td>
			<td>goodsNo</td>
			<td>goodsTitle</td>
		</tr>
		<tr>
			<td>
				<img src="${pageContext.request.contextPath}/upload/${g.goodsFileName}.${g.goodsFileExt}" width="100" height="100">
				
			</td>
			<td>${g.goodsNo}</td>
			<td>
				<a href="${pageContext.request.contextPath}/common/goodsOne?goodsNo=${g.goodsNo}">${g.goodsTitle}</a>
			</td>
		</tr>
		</c:forEach>
	</table>
</body>
</html>