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
			<h1>CUSTOMER LIST</h1>
			
			<table class="table table-striped">
				<tr>
					<td>customerMail</td>
					<td>customerPw</td>
					<td>customerBirth</td>
					<td>customerGender</td>
					<td>updateDate</td>
					<td>createDate</td>
					<td>회원 삭제</td>				
					
				</tr>
				<c:forEach var ="s" items="${customerList}">
					<tr>
						<td>${s.customerMail}</td>
						<td>${s.customerPw}</td>
						<td>${s.customerBirth}</td>
						<td>${s.customerGender}</td>
						<td>${s.updateDate}</td>
						<td>${s.createDate}</td>
				
			
						<td><a href="${pageContext.request.contextPath}/staff/removeCategory?customerMail=${s.customerMail}">회원 삭제</a></td>
						
						
						<td>
							
						</td>
					</tr>
				</c:forEach>
			</table>
			<td><a href="${pageContext.request.contextPath}/staff/customerAdd">회원 추가</a></td>
		</div>
		
	</div>
</body>
</html>


