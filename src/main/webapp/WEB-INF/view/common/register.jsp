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
	<h1>Register</h1>
	<!-- form에서 입력받은 정보들은 common/register로 보내지게끔 경로를 설정함 / post방식으로 진행  -->
	<form id="form" action="${pageContext.request.contextPath}/common/register" method="post">
			<div>
				<label for="loginId"> E-mail </label>
				<input id="loginId" type="text" name="loginId">
				@
				<select name="loginAddress" id="loginAddress">
					<option value="@naver.com">naver.com</option>
					<option value="@gmail.com">gmail.com</option>
					<option value="@hanmail.com">hanmail.com</option>
					<option value="@daum.net">daum.net</option>					
				</select> 
			</div>
			<!--
			 방법 : loginId값과 loginAddress값을 분리해서 받은 뒤, controller에서 둘을 합쳐줌 -->
			<div>
				<label for="password"> password </label>
				<input id="password" type="password" name="password">
			</div>
			<div>
				<input id="gender" name="gender" type="radio" value="남자">
				<label for="man">Man</label>
				<input id="gender" name="gender" type="radio" value="여자">
				<label for="woman">Woman</label>
			</div>
			<div>
				<label for="date">birth</label>
				<input id="birth" name="birth" type="date">
			</div>
				<button id="btn" type="button">회원가입</button>
	</form>
</body>
<script>

// registerForm 유효성검사
$('#btn').click(function(){
	console.log('클릭 로그');
	if(($('#loginId').val()) == false){ // 이메일 입력값검사
		alert("E-mail을 입력해주세요."); 
	}else if(($('#password').val()) == false){ // 패스워드 입력값검사
		alert("패스워드를 입력해주세요.");
	}else if(($('#password').val().length <= 3)){ // 패스워드 입력값검사
		alert("패스워드는 4글자이상 입력해주세요.");
	}else if($('#gender').checked != false){ // 성별 입력값검사
		alert("성별을 체크해주세요.");
	}else if(($('#birth').val()) == false){ // 생일 입력값검사
		alert("생일을 입력해주세요.");
	}else{ // 만약 위 조건들이 문제없이 실행되었을 때, submit을 통해 입력받은 정보들을 customerController로 전송
		$('#form').submit();
	}
});
</script>

</html>