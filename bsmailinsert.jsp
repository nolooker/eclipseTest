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
	
</script>

</head>
<body>
<div class="container mt-3 col-md-5">

		<h2>로그인 페이지</h2>
		<p>로그인을 위한 페이지</p>
		<form>
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
  	<a type="button" href="bsmembersinsert.jsp" class="btn btn-info">회원 가입</a>
			
		</form>
	</div>
</body>
</html>