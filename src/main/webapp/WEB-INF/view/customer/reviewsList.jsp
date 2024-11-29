<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table class= "table">
	
		<tr>
			<td>ordersNo</td>
			<td>boardContent</td>
			<td>createDate</td>
			<td>삭제</td>
			
		</tr>
		<c:forEach items="${reviewsList}" var="r">
			<tr>
				<td>${r.ordersNo}</td>
				<td>${r.boardContent}</td>
				<td>${r.createDate}</td>
				<td><a href="${pageContext.request.contextPath}/customer/deleteReviews?ordersNo=${r.ordersNo}">삭제</a></td>
			</tr>
		</c:forEach>
</table>
</body>
</html>