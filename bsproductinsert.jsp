<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="./../common/bootstrap5.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">
/* box model 공부할 것 */
.input-group{margin:7px;}

.input-group-text{
	display:block;
	margin-left:auto;
	margin-right:auto;
}
#buttonset{margin-top:15px}

</style>

<link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">

<link rel="stylesheet" href="/resources/demos/style.css">

<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
<script type="text/javascript">
	
	
		$(document).ready(function(){
/* 			$('#inputdate').datepicker(); */
			$('#inputdate').datepicker({dateFormat:"yy/mm/dd"});
		});
		
</script>


</head>
<body>
<div class="container mt-3 col-md-7">

		<h2>상품 등록</h2>
		<p>사용자들이 구매할 상품을 등록해 주는 페이지</p>
		
		<form>
			<div class="input-group">
				<span class="input-group-text col-md-2">상품 번호</span> 
				<input id="num"name="num"type="number"class="form-control" placeholder="">
			</div>
			
			<div class="input-group">
				<span class="input-group-text col-md-2">상품명</span> 
				<input id="name"name="name"type="text"class="form-control" placeholder="">
			</div>
			
			<div class="input-group">
				<span class="input-group-text col-md-2">제조 회사</span> 
				<input id="company"name="company"type="text"class="form-control" placeholder="">
			</div>
			
			<div class="input-group">
				<span class="input-group-text col-md-2">코멘트</span> 
				<input id="comments"name="comments"type="text"class="form-control" placeholder="">
			</div>
			
			<div class="input-group">
				<span class="input-group-text col-md-2">이미지</span> 
				<input id="image"name="image"type="file"class="form-control" placeholder="">
			</div>
			
			<div class="input-group">
				<span class="input-group-text col-md-2">재고</span> 
				<input id="stock"name="stock"type="number"class="form-control" placeholder="">
			</div>
			
			<div class="input-group">
				<span class="input-group-text col-md-2">단가</span> 
				<input id="price"name="price"type="number"class="form-control" placeholder="">
			</div>
			
			<div class="input-group">
				<span class="input-group-text col-md-2">포인트</span> 
				<input id="point"name="point"type="number"class="form-control" placeholder="">
			</div>
			
			<div class="input-group">
				<span class="input-group-text col-md-2">비고</span> 
				<input id="remark"name="remark"type="text"class="form-control" placeholder="">
			</div>
			
			<div class="input-group">
				<span class="input-group-text col-md-2">카테고리</span> 
				<select id="category"name="category"class="form-select "><!-- form-select-lg 카테고리 크게 하는 것 -->
				<option value="-">---항목 선택</option>
  				<option value="child">아동복</option>
  				<option value="man">남성복</option>
  				<option value="woman">여성복</option>
  				<option value="shoes">신발</option>
			</select>
			</div>
			
			<div class="input-group">
				<span class="input-group-text col-md-2">입고 일자</span> 
				<input id="inputdate"name="inputdate"type="datetime"class="form-control" placeholder="">
			</div>
			
			<div id="buttonset"class="input-group">
				<button type="submit" class="btn btn-primary btn-lg">등록</button>
				&nbsp;&nbsp;&nbsp;
				<button type="reset" class="btn btn-secondary btn-lg">초기화</button>
			</div>
			
			
		</form>
	</div>
</body>
</html>