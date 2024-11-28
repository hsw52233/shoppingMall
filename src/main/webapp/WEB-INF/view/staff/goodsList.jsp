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
			<h1>GOODS LIST</h1>
			
			<table class="table table-striped">
				<tr>
					<td>goodsNo</td>
					<td>goodsTitle</td>
					<td>goodsMemo</td>
					<td>goodsPrice</td>
					<td>goodsState</td>
					<td>updateDate</td>
					<td>createDate</td>	
					<td>상품 수정</td>	
					<td>상품 삭제</td>	
					
				</tr>
				<c:forEach var="s" items="${goodsList}">
    <tr>
        <td>${s.goodsNo}</td>
        <td><a href="${pageContext.request.contextPath}/staff/goodsOne?goodsNo=${s.goodsNo}">${s.goodsTitle}</a></td>
        <td>${s.goodsMemo}</td>
        <td>${s.goodsPrice}</td>
        <td>
            <a href="${pageContext.request.contextPath}/staff/modifyGoodsActive?goodsNo=${s.goodsNo}&goodsState=${s.goodsState}" class="btn">
                <c:if test="${s.goodsState == '재고있음'}">재고없음</c:if>
                <c:if test="${s.goodsState == '재고없음'}">재고있음</c:if>
            </a>
        </td>
        <td>${s.updateDate}</td>
        <td>${s.createDate}</td>
        <td><a href="${pageContext.request.contextPath}/staff/goodsModify?goodsNo=${s.goodsNo}">상품 수정</a></td>
        <td><a href="${pageContext.request.contextPath}/staff/removegoods?goodsNo=${s.goodsNo}">상품 삭제</a></td>
    </tr>
</c:forEach>
			</table>
			<a href="${pageContext.request.contextPath}/staff/goodsAdd">상품 추가</a>
		</div>
		
	</div>
</body>
</html>


