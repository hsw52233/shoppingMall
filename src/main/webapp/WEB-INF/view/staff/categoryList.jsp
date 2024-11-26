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
			<h1>CATEGORY LIST</h1>
			
			<table class="table table-striped">
				<tr>
					<td>categoryNo</td>
					<td>categoryTitle</td>
					<td>updateDate</td>
					<td>createDate</td>
					<td><a href="${pageContext.request.contextPath}/staff/categoryAdd">카테고리 추가</a></td>
				
			
						<td><a href="${pageContext.request.contextPath}/staff/categoryModify">카테고리 수정</a></td>
						
					
					
					
				</tr>
				<c:forEach var ="s" items="${categoryList}">
					<tr>
						<td>${s.categoryNo}</td>
						<td>${s.categoryTitle}</td>
						<td>${s.updateDate}</td>
						<td>${s.createDate}</td>
						<td><a href="${pageContext.request.contextPath}/staff/categoryAdd">카테고리 추가</a></td>
				
			
						<td><a href="${pageContext.request.contextPath}/staff/categoryModify">카테고리 수정</a></td>
						
						
						<td>
							
						</td>
					</tr>
				</c:forEach>
			</table>
			
		</div>
		
	</div>
</body>
</html>


