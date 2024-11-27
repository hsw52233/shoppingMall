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
			<td>장바구니 번호</td>
			<td>상품번호</td>
			<td>goodsFileName goodsFileExt</td>
			<td>goodsTitle</td>
			<td>categoryTitle</td>
			<td>goodsMemo</td>
			<td>cartAmount</td>
			<td>goodsState</td>
			<td>totalPrice</td>
		</tr>
		<c:forEach items="${cartList}" var="c">
			<tr>
				<td>${c.cartNo}</td>
				<td>${c.goodsNo}</td>
				<td>${c.goodsFileName}.${c.goodsFileExt}</td>
				<td>${c.goodsTitle}</td>
				<td>${c.categoryTitle}</td>
				<td>${c.goodsMemo}</td>
				<td>${c.cartAmount}</td>
				<td>${c.goodsState}</td>
				<td>${c.totalPrice}</td>
				<td>
					<a href="${pageContext.request.contextPath}/customer/removeCart?cartNo=${c.cartNo}">삭제</a>
				</td>
			</tr>
		</c:forEach>
	</table>
	<form id="formPayment" action="${pageContext.request.contextPath}/customer/payment">
		<table class="table table-bordered">
			<tr>
				<td>
					결제 금액:
				</td>
				<td>
					<input type = "hidden" name = "paymentPrice" id = "paymentPrice" value="${paymentPrice}" readonly>
					${paymentPrice} 원
				</td>
			</tr>
			<tr>
				<td>배송지 선택</td>
				<td>
					<select name = "addressNo" id="addressNo">
						<option value="0">:::선택:::</option>
						<c:forEach items="${addressList}" var="a">
							<option value="${a.addressNo}">${a.addressDetail}</option>
						</c:forEach>
					</select>
				</td>
			</tr>
			<tr>
				<td>결제방식</td>
				<td>
					페이 : <input name="paymentMethod" type="radio" value="페이">
					카드 : <input name="paymentMethod" type="radio" value="카드">
				</td>
			</tr>
		</table>
		<button id="btnPayment" type="button">결제</button>
	</form>
</body>
<script>
	$('#btnPayment').click(function() {
		if($('#addressNo').val() == '0'){
			alert('주소를 선택해주세요');
			return;
		}
		$('#formPayment').sumbit();
	});
</script>
</html>