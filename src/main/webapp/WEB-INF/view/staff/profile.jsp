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
			<h1>STAFF ONE</h1>
			<div>
				<table class="table">
					<c:forEach items="${profile}" var="p">
				<tr>
					<td>staffId</td>
					<td>${p.staffId}</td>
				</tr>	
					<td>staffPw</td>
							<td>${p.staffPw}</td>
				<tr>	
					<td>updateDate</td>
							<td>${p.updateDate}</td>
				</tr>
				<tr>	
					<td>createDate</td>
							<td>${p.createDate}</td>
				</tr>
					</c:forEach>
				</tr>
			</table>
			<br>
			<a href="${pageContext.request.contextPath}/logout">로그아웃</a>
			</div>
		</div>
	</div>
</body>

</html>