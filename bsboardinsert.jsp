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
			$('#regdate').datepicker({dateFormat:"yy/mm/dd"});
		});
		
</script>


</head>
<body>
<div class="container mt-3 col-md-7">

		<h2>상품 등록</h2>
		<p>사용자들이 구매할 상품을 등록해 주는 페이지</p>
		
		<form>
			<div class="input-group">
				<span class="input-group-text col-md-2">게시물 번호</span> 
				<input id="no"name="no"type="number"class="form-control" placeholder="">
			</div>
			
			<div class="input-group">
				<span class="input-group-text col-md-2">작성자</span> 
				<input id="writer"name="writer"type="text"class="form-control" placeholder="">
			</div>
			
			<div class="input-group">
				<span class="input-group-text col-md-2">글 제목</span> 
				<input id="subject"name="subject"type="text"class="form-control" placeholder="">
			</div>
			
			<div class="input-group">
				<span class="input-group-text col-md-2">글 내용</span> 
				<input id="content"name="content"type="text"class="form-control" placeholder="">
			</div>
			
			<div class="input-group">
				<span class="input-group-text col-md-2">등록 일자</span> 
				<input id="regdate"name="regdate"type="datetime"class="form-control" placeholder="">
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