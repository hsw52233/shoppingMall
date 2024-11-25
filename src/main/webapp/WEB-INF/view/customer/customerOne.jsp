<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>마이페이지</title>
    <!-- Favicon -->
    <link rel="icon" type="image/x-icon" href="/assets/favicon.ico">
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom Styles -->
    <style>
        body {
            font-family: 'Arial', sans-serif;
        }
        .sidebar {
            background-color: #f8f9fa;
            padding: 20px;
            border-right: 1px solid #ddd;
        }
        .sidebar .nav-link {
            font-size: 16px;
            color: #343a40;
        }
        .sidebar .nav-link.active {
            font-weight: bold;
        }
        .profile-info {
            margin-bottom: 30px;
        }
        .order-table th, .order-table td {
            text-align: center;
        }
    </style>
</head>
<body>
    <!-- Header -->
    <header class="bg-dark text-white py-3">
        <div class="container d-flex justify-content-between">
            <h1 class="h4">마이페이지</h1>
            <div class="d-flex align-items-center">
                <span class="me-3">안녕하세요, [${customerMail}]님!</span>
                <a href="#" class="btn btn-outline-light btn-sm">로그아웃</a>
            </div>
        </div>
    </header>

    <div class="container-fluid mt-5">
        <div class="row">
            <!-- Sidebar -->
            <div class="col-md-3">
                <div class="sidebar">
                    <h5>마이페이지</h5>
                    <ul class="nav flex-column">
                        <li class="nav-item">
                            <a class="nav-link active" href="${pageContext.request.contextPath}/customer/customerOne">회원 정보</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="${pageContext.request.contextPath}/customer/ordersList">주문 내역</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="${pageContext.request.contextPath}/customer/cartList">장바구니</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="${pageContext.request.contextPath}/customer/commentList">리뷰 목록</a>
                        </li>
                    </ul>
                </div>
            </div>

            <!-- Main Content -->
            <div class="col-md-9">
                <!-- Profile Information -->
                <div class="profile-info">
                    <h4>회원 정보</h4>
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title">[${customerMail}]님의 정보</h5>
                            <p class="card-text">
                                <strong>이메일:</strong> ${customer.customerMail} <br>
                                <strong>주소:</strong> ${customer.addressDetail}
                            </p>
                            <a href="${pageContext.request.contextPath}/customer/CustomerUpdate" class="btn btn-primary">정보 수정</a>
                        </div>
                    </div>
                </div>

                <!-- Order History -->
                <div class="order-history mt-4">
                    <h4>주문 내역</h4>
                    <table class="table table-bordered order-table">
                        <thead>
                            <tr>
                                <th>주문 번호</th>
                                <th>주문 날짜</th>
                                <th>상태</th>
                                <th>총 금액</th>
                                <th>주문 상세</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>#123456</td>
                                <td>2024-11-15</td>
                                <td>배송 중</td>
                                <td>₩150,000</td>
                                <td><a href="#" class="btn btn-info btn-sm">상세 보기</a></td>
                            </tr>
                            <tr>
                                <td>#123457</td>
                                <td>2024-11-10</td>
                                <td>배송 완료</td>
                                <td>₩85,000</td>
                                <td><a href="#" class="btn btn-info btn-sm">상세 보기</a></td>
                            </tr>
                            <tr>
                                <td>#123458</td>
                                <td>2024-11-05</td>
                                <td>주문 취소</td>
                                <td>₩50,000</td>
                                <td><a href="#" class="btn btn-info btn-sm">상세 보기</a></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>

    <!-- Footer -->
    <footer class="bg-dark text-white py-3 mt-5">
        <div class="container text-center">
            <p>&copy; 2024 | All Rights Reserved.</p>
        </div>
    </footer>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>