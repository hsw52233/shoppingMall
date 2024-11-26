<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>


<meta charset="UTF-8">
<title>staffLogin</title>
</head>
<body>

	<div>
			<form id="form" action="${pageContext.request.contextPath}/staffLogin" method="post">
				<div>
					<label for="staffId" >아이디:</label>
					<input id="staffId" name="staffId" type="text" class="form-control" id="staffId" name="staffId" >
			 	</div>
			 	<div class="mb-3">
					<label for="password" >비밀번호:</label>
					<input id="password" name="password" type="password" class="form-control">
				</div>
				<div class="text-center">
					<button id ="btn" type="button" class="btn btn-light">Login</button>
					|
					<button type="reset" class="btn btn-light">Reset</button>
				</div>
			</form>
		</div>
</body>
</html>