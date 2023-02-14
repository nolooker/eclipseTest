<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="./../common/bootstrap5.jsp"%>
<%@ include file="./../common/common.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	/* box model 공부할 것 */
	.input-group{margin: 7px;}
	
	.input-group-text{
		display:block;
		margin-left:auto;
		margin-right:auto;
	}
	#buttonset{margin-top:15px;}
	.radio_gender, .chk_hobby{font-size:1.1rem;} /* 주위 글꼴의 1.1배 */
	
</style>
	<link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
	
  	<link rel="stylesheet" href="/resources/demos/style.css">
  	  	
  	<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
  	<script type="text/javascript">
  		$(document).ready(function(){
  	  		/* $('#hiredate').datepicker(); */
  	  		$('#hiredate').datepicker({dateFormat: "yy/mm/dd"}); 
  	  	 	
  		});
  		
  		function validCheck(){
  			/* alert('반환 값이 false이면 이벤트 전파가 되지 않습니다.'); */
  			var id = $('#id').val();  			
  			if(id.length < 4 || id.length > 10){
  				swal('아이디는 4자리 이상 10자리 이하로 입력해 주세요.');
  				$('#id').focus();
  				return false ;
  			}
  			
  			var name = $('#name').val();  			
  			if(name.length < 4 || name.length > 10){  				
  				$('#name').focus();
  				swal('이름은 4자리 이상 10자리 이하로 입력해 주세요.');
  				return false ;
  			}  			
		
  			var password = $('#password').val();  			
  			if(password.length < 5 || password.length > 12){
  				swal('비밀 번호는 5자리 이상 12자리 이하로 입력해 주세요.');
  				$('#password').focus();
  				return false ;
  			}    			
 			
  			var regex = /^[a-z]\S{4,11}$/ ; /* 정규 표현식 */
  			
  			var result = regex.test(password) ;
  			
			if(result == false){
				swal('첫 글자는 반드시 소문자로 작성되어야 합니다.');
				return false ; 
			}
			
			if(password.indexOf("@") <= 0 && password.indexOf("#") <= 0 && password.indexOf("$") <= 0){
				swal('특수 문자 @#% 중에서 최소 1개 이상이 필요합니다.');
				return false ; 
			}
  			
  			var radioList = $("input[type='radio']:checked");
  			if(radioList.length == 0){
  				swal('성별을 선택해 주세요.'); 
  				return false ;
  			}
  			
  			var checkList = $("input[type='checkbox']:checked");
  			if(checkList.length < 2){
  				swal('취미는 최소 2개 이상 반드시 선택해야 합니다.'); 
  				return false ;
  			}
  			
  			var hiredate = $('#hiredate').val();
  			
  			var regex = /^\d{4}\/[01]\d{1}\/[0123]\d{1}$/ ;
  			var result = regex.test(regdate) ;
  			
  			if(result == false){
  				alert('날짜 형식은 반드시 yyyy/mm/dd 형식으로 작성해 주세요.');
  				$('#hiredate').focus() ;
  				return false ;
  			} 	
  			
  			/* alert(id + '/' ) ; */
  			
  			return false ;
  		}
  	</script>
</head>
<body>
	<div class="container mt-3 col-md-5">
		<h2>회원 가입</h2>
		<p>회원 가입하는 페이지</p>
		
		<form action="bsMemberInsert2To.jsp">
			<div class="input-group">
				<span class="input-group-text col-md-2">아이디</span> 
				<input id="id" name="id" type="text" class="form-control" placeholder="">
			</div> 
			<div class="input-group">
				<span class="input-group-text col-md-2">이름</span> 
				<input id="name" name="name" type="text" class="form-control" placeholder="">
			</div>
			<div class="input-group">
				<span class="input-group-text col-md-2">비밀 번호</span> 
				<input id="password" name="password" type="password" class="form-control" placeholder="">
			</div>
			
			<div class="input-group">
				<span class="input-group-text col-md-2">성별</span> 
				<div class="form-control">			
					<label class="radio-inline radio_gender">
						&nbsp;<input type="radio" name="gender" value="male">남자
					</label>
					&nbsp;
					<label class="radio-inline radio_gender">
						&nbsp;<input type="radio" name="gender" value="female">여자
					</label>
				</div>
			</div>
			
			<div class="input-group">
				<span class="input-group-text col-md-2">취미</span> 
				<div class="form-control">			
					<label class="checkbox-inline chk_hobby">
						&nbsp;<input type="checkbox" name="hobby" value="탁구">탁구
					</label>
					&nbsp;
					<label class="checkbox-inline chk_hobby">
						&nbsp;<input type="checkbox" name="hobby" value="농구">농구
					</label>
					&nbsp;
					<label class="checkbox-inline chk_hobby">
						&nbsp;<input type="checkbox" name="hobby" value="배구">배구
					</label>
					&nbsp;
					<label class="checkbox-inline chk_hobby">
						&nbsp;<input type="checkbox" name="hobby" value="야구">야구
					</label>
				</div>
			</div>			
			
			<div class="input-group">
				<span class="input-group-text col-md-2">가입 일자</span> 
				<input id="hiredate" name="hiredate" type="datetime" class="form-control" placeholder="">
			</div>			
			
			<div class="input-group">
				<span class="input-group-text col-md-2">적립 포인트</span> 
				<input id="mpoint" name="fakempoint" disabled="disabled" type="number" class="form-control" placeholder="">
				<input type="hidden" name="mpoint" value="0">
			</div>			
			<div class="input-group">
				<span class="input-group-text col-md-2">비고</span> 
				<input id="remark" name="fakeremark" disabled="disabled" type="text" class="form-control" placeholder="">
				<input type="hidden" name="remark" value="">
			</div>
				
			<div id="buttonset" class="input-group">
				<button type="submit" class="btn btn-primary btn-lg" onclick="return validCheck();"> 
					등록
				</button>
				
				&nbsp;&nbsp;&nbsp;
				
				<button type="reset" class="btn btn-secondary btn-lg">초기화</button>
			</div>
		</form>
	</div>
</body>
</html>