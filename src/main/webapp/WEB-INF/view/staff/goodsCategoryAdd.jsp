<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<!-- Latest compiled and minified CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- Latest compiled JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>Add Goods Category</h1>

    <form action="${pageContext.request.contextPath}/staff/goodsCategoryAdd" method="post">
        <div>
            <label for="goodsNo">Goods No:</label>
            <input type="number" id="goodsNo" name="goodsNo" required>
        </div>
        <!-- 데이터를 고르게 하기 -->
        <div>
            <label for="categoryNo">Category No:</label>
            <input type="number" id="categoryNo" name="categoryNo" required>   
        </div>
        <button type="submit">Add</button>
    </form>

</body>
</html>