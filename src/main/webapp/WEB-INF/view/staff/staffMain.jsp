<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<!-- Latest compiled and minified CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- Latest compiled JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<a href="${pageContext.request.contextPath}/staff/profile">관리자 정보&홈페이지</a>
	<a href="${pageContext.request.contextPath}/staff/goodsList">상품 리스트</a>
	<a href="${pageContext.request.contextPath}/staff/categoryList">상품 카테고리 리스트</a>
	<a href="${pageContext.request.contextPath}/staff/ordersList">주문 요청 리스트</a>
	<a href="${pageContext.request.contextPath}/staff/customersList">회원 리스트</a>
	<a href="${pageContext.request.contextPath}/staff/reviewsList">리뷰 관리 리스트</a>
	<a href="${pageContext.request.contextPath}/staff/staffList">스태프 리스트</a>
	<a href="${pageContext.request.contextPath}/logout">로그아웃</a>
</body>
</html>