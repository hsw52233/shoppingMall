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
<style>
	
	a{text-decoration: none; color:#fff;}	
	
	.fakeHeader {width: 100%; height: 100px; background-color: #1d2233; color:#fff;}
	.fakeHeader h1{float: left; margin-top: 20px;}
	.fakeHeader .fakeLogout{float: right; margin-top: 30px; color:#fff; }

	
	.fakeContainer {width: 100%; height: 900px; }
	.fakeBanner {width: 100%; height: 450px; background-color: #2a2f42; margin: 70px 0;}
	.fakeBanner a{display: block; width: 100%; height: 100%; text-align: center; padding-top: 200px;}
	.fakeContentBox {width: 70%; height: 300px; margin: 0 auto; }
	.fakeContentBox .fakeContent { overflow: hidden; float: left; width: 30%; height: 100%;  margin-left:2.5%; background-color: grey;}
	.rightBox {margin-left:0;}
	
	.fakeContent a {display:block; width: 100%; height: 100%; text-align: center; padding-top: 150px; font-size:18px;}
	
	
	.fakeFooter {width: 100%; background-color: #1d2233;  height: 300px; }
	.fakeUnderFoot {width: 80%; margin: 0 auto;}
	.fakeUnderFoot li {padding-top: 100px; float: left; width: 25%; color:#fff; text-align: center; list-style: none;}
	
</style>
<body>

<div class="fakeHeader">

<h1>Home</h1>
<div>
	<a href="">로그아웃</a>
	<a href="${pageContext.request.contextPath}/customer/customerOne">마이페이지</a>
	<a href="${pageContext.request.contextPath}/common/login">로그인</a>
</div>
  <div class="fakeLogout">
		<a href="${pageContext.request.contextPath}/common/logout">로그아웃</a>
	</div>
<div class="fakeContainer">
	<div class="fakeBanner"><a href="#">쇼핑몰 배너</a></div>
	<div class="fakeContentBox">
		<div class="fakeContent leftBox"><a href="#">상품A</a></div>
		<div class="fakeContent"><a href="#">상품B</a></div>
		<div class="fakeContent rightBox"><a href="#">상품C</a></div>
	</div>
</div>

<div class="fakeFooter">
	<ul class="fakeUnderFoot">
		<li>푸터1</li>
		<li>푸터2</li>
		<li>푸터3</li>
		<li>푸터4</li>
	</ul>
</div>


</body>
</html>