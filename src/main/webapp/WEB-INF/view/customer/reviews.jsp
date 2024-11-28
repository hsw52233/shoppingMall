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
<div class="text text-red">${param.msg}</div>
	<form id="addReviews" method="post" action="${pageContext.request.contextPath}/customer/reviews">
		<input type="hidden" name="ordersNo" value="${ordersNo}" readOnly>
		<input type="hidden" name="paymentNo" value="${paymentNo}" readOnly>
		<table>
			<tr>
				<td>ordersNo</td>
				<td>${ordersNo}</td>
			</tr>
			<tr>
				<td>boardContent</td>
				<td><textarea name="boardContent" id="boardContent" rows="5" cols="50"></textarea> </td>
			</tr>
		</table>
		<button id="btnAddReviews" type="button">작성</button>
	</form>
</body>
<script>
	$('#btnAddReviews').click(function() {
		if($('#boardContent').val().length < 10 ){
			alert('후기는 10자 이상 써주세요');
			return;
		}
		$('#addReviews').submit();
	})

</script>
</html>