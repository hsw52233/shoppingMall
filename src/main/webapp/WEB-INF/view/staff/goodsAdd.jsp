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

		<form id="formGoodsAdd" method="post" action="${pageContext.request.contextPath }/staff/goodsAdd" enctype="multipart/form-data">
	<div>
		<table>
		<td>goodsTitle</td>
		<td><input type = "text" name="goodsTitle" id="goodsTitle"></td>
		<td>goodsMemo</td>
		<td><input type = "text" name="goodsMemo" id="goodsMemo"></td>
		<td>goodsPrice</td>
		<td><input type = "number" name="goodsPrice" id="goodsPrice"></td>
		<td>goodState</td>
		<td>
			재고있음 : <input name="goodsState" id="goodsState" type="radio" value="재고있음">
			재고없음 : <input name="goodsState" id="goodsState" type="radio" value="재고없음">
		</td>
		<td>goodsCategory</td>
		<td>
			<select name = "categoryNo" id = "categoryNo">
				<option value="">:::선택:::</option>
				<c:forEach items="${categoryList}" var="c">
					<option value="${c.categoryNo}">${c.categoryTitle}</option>
				</c:forEach>
			</select>
		</td>
		</table>
	</div>
		<div class="mb-3">
	        <label class="form-label">파일 업로드</label>
	        <div id="fileDiv">
	        	<input type="file" name="goodsFile" class="form-control goodsFile mb-2">
	            <div><button type="button" id="btnAddFile" class="btn btn-success mb-3">파일 추가</button></div>
	            <button type="button" id="btnRemoveFile" class="btn btn-danger mb-3">파일 삭제</button>
	        </div>
        </div>
		<button id="btnGoodsAdd" type="button">add goods</button>
		</form>
</body>
<script type>
	$('#btnGoodsAdd').click(function() {
		if($('#goodsTitle').val() == ''){
			alert('상품제목 입력');
		} else if($('#goodsMemo').val() == '') {
			alert('goodsMemo 입력');
		} else if($('#goodsPrice').val() == '') {
			alert('goodsPrice 입력');
		} else if(!$('input[name="goodsState"]:checked').val()) {
			alert('goodsState 선택');
		} else if(!$('#categoryNo').val()) {
			alert('categoryTitle 선택');
		} else if($('.goodsFile').length > 0 && $('.goodsFile').last().val() == '') {
			alert('첨부되지 않은 파일 존재');
		} else {
			$('#formGoodsAdd').submit();
		}
	});
	
	$('#btnAddFile').click(function() {
        if ($('.goodsFile').last().val() == '') {
            alert('첨부하지 않은 파일이 존재합니다');
        } else {
            let html = '<input type="file" name="goodsFile" class="form-control goodsFile mb-2">';
            $('#fileDiv').append(html);
        }
    });

    $('#btnRemoveFile').click(function() {
        if ($('.goodsFile').length == 0) {
            alert('삭제할 빈 input=file이 존재하지 않습니다');
        } else {
            $('.goodsFile').last().remove();
        }
    });
</script>
</html>