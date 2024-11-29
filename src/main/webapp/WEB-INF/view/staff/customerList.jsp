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
        <h1 class="h4">회원 페이지</h1>
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
                <h1>CUSTOMER LIST</h1>

                <!-- Table for Customer List -->
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

                    <c:forEach var="s" items="${customerList}">
                        <tr>
                            <td><a href="${pageContext.request.contextPath}/staff/customerOne?customerMail=${s.customerMail}">${s.customerMail}</a></td>
                            <td>${s.customerPw}</td>
                            <td>${s.customerBirth}</td>
                            <td>${s.customerGender}</td>
                            <td>${s.updateDate}</td>
                            <td>${s.createDate}</td>
                            <td><a href="${pageContext.request.contextPath}/staff/removeCustomer?customerMail=${s.customerMail}">회원 삭제</a></td>
                        </tr>
                    </c:forEach>
                </table>
            </div>
        </div>
    </div>
    
<%@ include file="common/footer.jsp" %>
    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>


