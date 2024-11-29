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
        .container {
    display: flex;        /* Flexbox 사용 */
    gap: 10px;            /* 요소 간 간격 */
}

.sidebar {
    width: 250px;         /* 사이드바 너비 */
}

.main-content {
    flex-grow: 1;         /* 나머지 공간을 차지 */
}
        
    </style>
</head>
<body>
   <header class="bg-dark text-white py-3">
    <div class="container d-flex justify-content-between">
        <h1 class="h4">상품 페이지</h1>
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
                        <a class="nav-link" href="${pageContext.request.contextPath}/staff/reviewsList">리뷰 관리 리스트</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="${pageContext.request.contextPath}/staff/staffList">스태프 리스트</a>
                    </li>
                </ul>
            </div>
        </div>

        <!-- Main Content -->
        <div class="col-md-9">
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
                        <td><button class="btn btn-primary"><a href="${pageContext.request.contextPath}/staff/goodsModify?goodsNo=${s.goodsNo}">상품 수정</a></button></td>
                        <td><a href="${pageContext.request.contextPath}/staff/removegoods?goodsNo=${s.goodsNo}">상품 삭제</a></td>
                    </tr>
                </c:forEach>
            </table>
            <a href="${pageContext.request.contextPath}/staff/goodsAdd">상품 추가</a>
        </div>
    </div>
</div>

    <%@ include file="common/footer.jsp" %>
    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>