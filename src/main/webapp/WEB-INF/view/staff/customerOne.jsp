<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body class="container-flud">
	<div class="row">
		
		<div class="col-sm-10">
			<!-- main content -->
			<h1>CUSTOMER ONE</h1>
			<table class="table">
				<tr>
					<td>customerMail</td>
					<td>${customer.customerMail}</td>
				</tr>
				<tr>
					<td>customerPw</td>
					<td>${customer.customerPw}</td>
				</tr>
				<tr>
					<td>customerBirth</td>
					<td>${customer.customerBirth}</td>
				</tr>
				<tr>
					<td>customerGender</td>
					<td>${customer.customerGender}</td>
				</tr>
				
				<tr>
					<td>addressDetail</td>
					<td>${address.addressDetail}</td>
				</tr>
			</table>
			
			
			<br>
			<!-- 주문 리스트 -->
			<h2>배송 상태</h2>
	<table class="table table-bordered">
		<tr>
			<td>paymentNo</td>
			<td>addressNo</td>
			<td>paymentPrice</td>
			<td>paymentMethod</td>
			<td>addressDetail</td>
			<td>paymentState</td>
			<td>상품목록</td>
		</tr>
		<c:forEach items="${orderList}" var="o">
			<tr>
				<td>${o.paymentNo}</td>
				<td>${o.addressNo}</td>
				<td>${o.paymentPrice}</td>
				<td>${o.paymentMethod}</td>
				<td>${o.addressDetail}</td>
				<td>
					<c:if test="${o.paymentState == '결제완료' }">
					<a href="${pageContext.request.contextPath}/staff/paymentComplete?paymentNo=${o.paymentNo}&customerMail=${customer.customerMail}">
						<!-- 배송중일때 배송완료로 바꾸면서 페이지 이동 -->
						${o.paymentState}
					</a>
					</c:if>
					<c:if test="${o.paymentState == '배송중'}">
						${o.paymentState}
					</c:if>
				</td>
				
			</tr>
		</c:forEach>
	</table>
			<br>
			
			</div>
		</div>
	</div>
</body>

</html>