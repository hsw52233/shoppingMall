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
<body >
 <header class="bg-dark text-white py-3">
    <div class="container d-flex justify-content-between">
        <h1 class="h4">스태프리스트</h1>
        <div class="d-flex align-items-center">
            <a href="#" class="btn btn-outline-light btn-sm">로그아웃</a>
        </div>
    </div>
</header>
   
        <div class="container-fluid p-3">
        <div class="row">
            <!-- Sidebar -->
            <div class="col-md-3">
                <div class="sidebar">
                    <h5>관리자 페이지</h5>
                    <ul class="nav flex-column">
                        <li class="nav-item">
                            <a class="nav-link active" href="${pageContext.request.contextPath}/staff/profile">${loginStaff.staffId}님</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="${pageContext.request.contextPath}/staff/goodsList">상품 리스트</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="${pageContext.request.contextPath}/staff/goodsCategoryList">상품 카테고리 리스트</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="${pageContext.request.contextPath}/staff/categoryList">카테고리 리스트</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="${pageContext.request.contextPath}/staff/customerList">회원 리스트</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="${pageContext.request.contextPath}/staff/reviewList">리뷰 관리 리스트</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="${pageContext.request.contextPath}/staff/staffList">스태프 리스트</a>
                        </li>
                    </ul>
                </div>
            </div>

            <!-- Main Content -->
            <div class="col-md-9">
                <h1>STAFF LIST</h1>
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th>staffNo</th>
                            <th>staffId</th>
                            <th>updateDate</th>
                            <th>createDate</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="s" items="${staffList}">
                            <tr>
                                <td>${s.staffNo}</td>
                                <td>${s.staffId}</td>
                                <td>${s.updateDate}</td>
                                <td>${s.createDate}</td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
                <a href="${pageContext.request.contextPath}/staff/staffAdd">스태프 추가</a>
            </div>
        </div>
    </div>
<%@ include file="common/footer.jsp" %>
    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>


