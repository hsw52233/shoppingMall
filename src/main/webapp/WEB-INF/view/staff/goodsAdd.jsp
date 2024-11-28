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
		<form  method="post" action="${pageContext.request.contextPath }/staff/goodsAdd">
		<table>
		<td>goodsTitle</td>
		<td><input type = "text" name="goodsTitle"></td>
		<td>goodsMemo</td>
		<td><input type = "text" name="goodsMemo"></td>
		<td>goodsPrice</td>
		<td><input type = "text" name="goodsPrice"></td>
		
		
		</table>
		<button type="submit">add goods</button>
		
	</div>


</body>
</html>