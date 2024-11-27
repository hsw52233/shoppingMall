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
	<!-- form에서 입력받은 정보들은 common/login로 보내지게끔 경로를 설정함 / post방식으로 진행  -->
	<form id="form" method="post" action="${pageContext.request.contextPath}/common/login">
		<h1>customerLogin</h1>
		<hr>
		<small>${msg}</small>
		<!-- controller에서 msg라는 공간을 만들어서 경고메세지 출력 -->
		<div>
			<label for="loginId"> ID </label>
			<input id="loginId" type="text" name="loginId" placeholder="ID">
		</div>
		<div>
			<label for="password"> password </label>
			<input id="password" type="password" name="password" placeholder="Password" >
		</div>
		<button id="btn" type="button">로그인</button>
		<ul>
			<li>
				<a href="${pageContext.request.contextPath}/common/register">회원가입</a>
			</li>
			<li>
				<a href="${pageContext.request.contextPath}/common/findId">이메일찾기</a>
			</li>
			<li>
				<a href="#">비밀번호찾기</a>
			</li>
		</ul>
	</form>
	
</body>
<script>
$('#btn').click(function(){ // 버튼클릭 시 가동
	console.log('클릭 로그'); // 디버깅
	if($('#loginId').val() == ""){ // 만약 loginId값이 비어있다면
		alert('ID를 입력해주세요.');
	} else if ($('#password').val() == ""){ // 만약 password값이 비어있다면
		alert('password를 입력해주세요.');
	} else if ($('#password').val().length < 4){ // 만약 password값이 4자릿수 이하라면
		alert('password는 4글자 이상 입력하셔야합니다.');
	} else {
		$('#form').submit();
	}

});
</script>
</html>