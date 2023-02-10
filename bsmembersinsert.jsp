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
			$('#hiredate').datepicker({dateFormat:"yy/mm/dd"});
		});
		
</script>

</head>
<body>
<div class="container mt-3 col-md-7">

		<h2>회원 가입</h2>
		<p>회원 가입하는 페이지</p>
		
		<form>
			<div class="input-group">
				<span class="input-group-text col-md-2">아이디</span> 
				<input id="id"name="id"type="text"class="form-control" placeholder="">
			</div>
			
				<div class="input-group">
				<span class="input-group-text col-md-2">비밀번호</span> 
				<input id="password"name="password"type="password"class="form-control" placeholder="">
			</div>
			
			<div class="input-group">
				<span class="input-group-text col-md-2">이름</span> 
				<input id="name"name="name"type="text"class="form-control" placeholder="">
			</div>
			
			<div class="input-group">
			<span class="input-group-text col-md-2">성별</span>
			<div class="form-control">
				<input type="radio"  name="inlineRadioOptions"id="inlineRadio1"value="option1">남
				&nbsp;&nbsp;&nbsp;
				<input type="radio"  name="inlineRadioOptions"id="inlineRadio2"value="option2">여
			</div>
			</div>
			
			<div class="input-group">
				<span class="input-group-text col-md-2">취미</span>
			<div class = "form-control"> 
				<input type="checkbox"id="inlineCheckbox1"value="option1">축구</input>
				&nbsp;&nbsp;
				<input type="checkbox"id="inlineCheckbox2"value="option2">야구</input>
				&nbsp;&nbsp;
				<input type="checkbox"id="inlineCheckbox3"value="option3">농구</input>
				&nbsp;&nbsp;
				<input type="checkbox"id="inlineCheckbox4"value="option4">골프</input>
				&nbsp;&nbsp;
				<input type="checkbox"id="inlineCheckbox5"value="option5">탁구</input>
			</div>
			</div>
			<div class="input-group">
				<span class="input-group-text col-md-2">포인트</span> 
				<input id="mpoint"name="mpoint"type="number"class="form-control" placeholder="">
			</div>
		
			<div class="input-group">
				<span class="input-group-text col-md-2">비고</span> 
				<input id="remark"name="remark"type="text"class="form-control" placeholder="">
			</div>
			
			<div class="input-group">
				<span class="input-group-text col-md-2">날짜</span> 
				<input id="hiredate"name="hiredate"type="datetime"class="form-control" placeholder="">
			</div>
			
			<div id="buttonset"class="input-group">
				<button type="submit" class="btn btn-primary btn-lg">등록</button>
				&nbsp;&nbsp;&nbsp;
				<button type="reset" class="btn btn-secondary btn-lg">초기화</button>
			</div>
			
	 <div class="mb-3 mt-3">
    		<label for="email" class="form-label">Email:</label>
    		<input type="email" class="form-control" id="email" placeholder="Enter email" name="email">
	</div>
	<div class="mb-3">
    		<label for="pwd" class="form-label">Password:</label>
    		<input type="password" class="form-control" id="pwd" placeholder="Enter password" name="pswd">
  	</div>
  	<div class="form-check mb-3">
    	<label class="form-check-label">
      	<input class="form-check-input" type="checkbox" name="remember">
			
			Remember me
   		</label>
  	</div>
  	<button type="submit" class="btn btn-primary">Submit</button>
			
		</form>
	</div>
</body>
</html>