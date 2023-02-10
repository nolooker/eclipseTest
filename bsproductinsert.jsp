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
.input-group{margin:10px;}
</style>

</head>
<body>
<div class="container mt-3 col-md-7">
		
		<form>
			<div class="input-group">
				<span class="input-group-text">상품 번호</span> 
				<input id="num"name="num"type="number"class="form-control" placeholder="">
			</div>
			
			<div class="input-group">
				<span class="input-group-text">상품명</span> 
				<input id="name"name="name"type="text"class="form-control" placeholder="">
			</div>
			
			<div class="input-group">
				<span class="input-group-text">제조 회사</span> 
				<input id="company"name="company"type="text"class="form-control" placeholder="">
			</div>
			
			<div class="input-group">
				<span class="input-group-text">코멘트</span> 
				<input id="comments"name="comments"type="text"class="form-control" placeholder="">
			</div>
			
			<div class="input-group">
				<span class="input-group-text">이미지</span> 
				<input id="image"name="image"type="file"class="form-control" placeholder="">
			</div>
			
			<div class="input-group">
				<span class="input-group-text">재고</span> 
				<input id="stock"name="stock"type="number"class="form-control" placeholder="">
			</div>
			
			<div class="input-group">
				<span class="input-group-text">단가</span> 
				<input id="price"name="price"type="number"class="form-control" placeholder="">
			</div>
			
			<div class="input-group">
				<span class="input-group-text">포인트</span> 
				<input id="point"name="point"type="number"class="form-control" placeholder="">
			</div>
			
			<div class="input-group">
				<span class="input-group-text">비고</span> 
				<input id="remark"name="remark"type="text"class="form-control" placeholder="">
			</div>
			
			<div class="input-group">
				<span class="input-group-text">카테고리</span> 
				<select id="category"name="category"class="form-select">
				<option value="-">---항목 선택</option>
  				<option value="child">아동복</option>
  				<option value="man">남성복</option>
  				<option value="woman">여성복</option>
  				<option value="shoes">신발</option>
			</select>
			</div>
			
			<div class="input-group">
				<span class="input-group-text">입고 일자</span> 
				<input id="inputdate"name="inputdate"type="datetime"class="form-control" placeholder="">
			</div>
			
			<div class="input-group">
				<button type="submit" class="btn btn-primary btn-lg">등록</button>
				&nbsp;&nbsp;&nbsp;
				<button type="reset" class="btn btn-secondary btn-lg">초기화</button>
			</div>
			
			
		</form>
	</div>
</body>
</html>