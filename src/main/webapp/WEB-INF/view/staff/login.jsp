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
				<div>아이디:   <input type="text" name="staffId"></div>
				<div>비밀번호:   <input type="password" name="password"></div>
				
				<button type="submit">로그인</button>
			    <button type="reset">초기화</button>
			</form>
			
		</div>
</body>
</html>