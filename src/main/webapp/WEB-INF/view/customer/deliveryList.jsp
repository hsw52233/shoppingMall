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
<table class="table">
	<tr>
		<td>paymentNo</td>
		<td>ordersNo</td>
		<td>goodsNo</td>
		<td>goodsFileName.goodsFileExt</td>
		<td>goodsTitle</td>
		<td>goodsMemo</td>
		<td>ordersAmount</td>
		<td>totalPrice</td>
		<td>후기 작성</td>
	</tr>
	<c:forEach items="${deliveryList}" var="d">
		<tr>
			<td>${d.paymentNo}</td>
			<td>${d.ordersNo}</td>
			<td>${d.goodsNo}</td>
			<td><img src="${pageContext.request.contextPath}/upload/${d.goodsFileName}.${d.goodsFileExt}" width="100" height="100"></td>
			<td>${d.goodsTitle}</td>
			<td>${d.goodsMemo}</td>
			<td>${d.ordersAmount}</td>
			<td>${d.totalPrice}</td>
			<td>
				<c:if test="${d.paymentState == '결제완료'}">
					<a href="${pageContext.request.contextPath}/customer/reviews?ordersNo=${d.ordersNo}&paymentNo=${d.paymentNo}">후기 작성</a>				
				</c:if>
			
			</td>
		</tr>
	</c:forEach>
</table>
</body>
</html>