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
<h1>ADD address</h1>
	<form id="formAddAddress" method="post" action="${pageContext.request.contextPath}/customer/addAddress">
		<input type="hidden" name="customerMail" value="${customerMail}">
		<table class="table table-bordered">\
			<tr>
				<td>이메일</td>
				<td>${customerMail}</td>
			</tr>
			<tr>
				<td>address_detail</td>
				<td><input type="text" name ="addressDetail" id ="addressDetail"></td>
			</tr>
		</table>
		<button id="btnAddAddress" type="button">추가</button>
	</form>
</body>
<script>
	$('#btnAddAddress').click(function() {
		if($('#addressDetail').val() == '' || $('#addressDetail').val().length < 4){
			alert('주소를 입력하세요(4자 이상)')
			return;
		}
		$('#formAddAddress').submit();
	});
</script>
</html>