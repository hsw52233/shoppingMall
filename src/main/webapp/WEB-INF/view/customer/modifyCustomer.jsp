<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>
<meta charset="UTF-8">
<title>정보 수정</title>
</head>
<body>
	<h2>${customer.customerMail}정보 수정</h2>
	<form id="formModifyPassword" action="${pageContext.request.contextPath}/customer/modifyCustomer" method="post">
		<input type="hidden" name = "customerMail" value="${customer.customerMail}">
		<table>
			<tr>
				<td>비밀번호 변경</td>
				<td><input type="text" name = "pw" id="pw" required></td>
			</tr>
			<tr>
				<td>비밀번호 변경 확인</td>
				<td><input type="text" name = "rePw" id="rePw" required></td>
			</tr>
		</table>
		<button id="btnModifyPassword" type="button">변경</button>
	</form>
</body>
<script>
	$('#btnModifyPassword').click(function() {
		if($('#pw').val() == '' || $('#pw').val().length < 4) {
			alert('비밀번호는 4자 이상입력해주세요');
		} else if($('#pw').val() != $('#rePw').val()) {
			alert('새 비밀번호가 일치하지 않습니다.')
		} else {
			$('#formModifyPassword').submit();
		}
	});
</script>
</html>