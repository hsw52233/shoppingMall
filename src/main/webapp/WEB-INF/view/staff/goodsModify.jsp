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
	<div>
		<table>
			<td>상품 수정</td>
			<div>
			<td>
			<form action="${pageContext.request.contextPath}/staff/goodsModify" method="post">
				<input type="hidden" name="goodsNo" value="${goods.goodsNo}">
   				 goodsTitle :   <input type="text" name="goodsTitle" value="${goods.goodsTitle}">
   				 goodsMemo :     <input type="text" name="goodsMemo" value="${goods.goodsMemo}">
   				 goodsPrice :    <input type="number" name="goodsPrice" value="${goods.goodsPrice}">
				<td><button type="submit">수정하기</button></td>	
			</form>
			</td>
			</div>
		</table>
	
	</div>
</body>
</html>