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
<body>
    <!-- 상품 정보 테이블 -->
    <table class="table">
        <tr>
            <td>상품 번호</td>
            <td>${goods.goodsNo}</td>
        </tr>
        <tr>
            <td>상품 이름</td>
            <td>${goods.goodsTitle}</td>
        </tr>
        <tr>
            <td>상품 내용</td>
            <td>${goods.goodsMemo}</td>
        </tr>
        <tr>
            <td>상품 가격</td>
            <td>${goods.goodsPrice}</td>
        </tr>
        <tr>
            <td>상품 가격</td>
            <td>${goods.goodsPrice}</td>
        </tr>
    </table>

    <div class="mb-3">
        <label for="cartAmount" class="form-label">수량</label>
        <input type="number" id="addCartAmount" class="form-control" value="1" min="1">
    </div>

    <!-- 장바구니 추가 -->
    <div>
	    <form id = "formAddCart" method="post" action="${pageContext.request.contextPath}/customer/addCart" id="addCartForm">
	        <input type="hidden" name="goodsNo" value="${goods.goodsNo}">
	        <input type="hidden" name="cartAmount" id="cartAmount" value="1"> 
	        <button id="btnAddCart" type="button" class="btn btn-primary">장바구니 추가</button>
	    </form>
    </div>
    <div>
    	<table class="table table-bordered">
    		<tr>
    			<td>ordersNo</td>
    			<td>boardContent</td>
    		</tr>
    		<c:forEach items="${reviewsList}" var="r">
	    		<tr>
	    			<td>${r.ordersNo}</td>
	    			<td>${r.boardContent}</td>
	    			<td>${r.updateDate}</td>
	    		</tr>
    		</c:forEach>
    	</table>
    </div>
</body>
	<script>
        // 수량 입력 필드의 값이 변경되면 해당 값을 변경
        $('#addCartAmount').click(function() {
        	// 장바구니 폼의 수량
            $('#cartAmount').val($('#addCartAmount').val()); 
        });
        
        $('#btnAddCart').click(function() {
        	let customerMail = '${sessionScope.customerMail}';
        	if(!customerMail){
        		alert('로그인 후 이용해주세요');
        	} else {
				$('#formAddCart').submit();
        	}
		});
    </script>
</html>