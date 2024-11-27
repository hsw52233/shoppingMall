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
			<td>카테고리 수정</td>
			<td>
			<form action="${pageContext.request.contextPath}/staff/categoryModify" method="post">
				<input type="hidden" name="categoryNo" value="${category.categoryNo}">
   				 <input type="text" name="categoryTitle" value="${category.categoryTitle}">
				<td><button type="submit">수정하기</button></td>	
			</form>
			</td>
			
		</table>
	
	</div>
</body>
</html>