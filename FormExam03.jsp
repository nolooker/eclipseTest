<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>html 공부</title>
	
	<!-- jquery = javascript + css + etc 등을 사용하는 라이브러리 -->
	<!-- jquery.min.js 파일 내부에 여러 가지 함수들이 정의 되어 있다 -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
	<script type="text/javascript">
		/*function은 동작으로 해석*/
		$(document).ready(function(){   /*현재 이 문서가 완전히 로딩되었을 때 여기를 실행해 주세요.*/
							alert('문서가 로딩되었습니다.') ;    /*alert() 함수는 일방적으로 띄워 주는 대화 상자*/
							/* $('#myform').hide();*/ /*id 속성이 myform인 항목을 숨겨 주세요*/ 
							
							var a = 5 ; /* 자바 스크립트에서는 변수 정의시 var를 사용*/
							var b = 10;
							var c = a + b ;
							/* alert(c) ; */
							
							/* 모든 라벨의 갯수 구하기 */
							var label_count = $('label').length ;
							$('#label_cnt').html(label_count) ;
							/* 모든 label을 찾아서 label_style이라는 클래스 속성을 추가하기  */
							$('label').addClass('label_style');				
							
							$('#age').removeClass('label_style');
							
							$('label').removeClass('label_style');
	});
		
	</script>

	
	<style type="text/css">
	
			.label_style{background-color:yellow;font-size:30px;}
			
	
	</style>
	
	
</head>
<body>
		<h1>폼 양식</h1>
		<!-- action 속성이 submit 할 때 이동할 곳을 명시 -->
		
		<form id="myform" name="myform" action="FormExam03To.jsp">
		
		<label>이름</label> :
		<input type="text"name="name"></input>
		<br/><!-- <br/>은 엔터키 효과 -->
        
        <label id="age">나이</label> :
		<input type="text"name="age"></input>
		<br/>
        						
		<label class="mytarget">이미지</label> :
		<input type="file"name="image"></input>
		<br/>
		
		<label>숨김 피라미터</label> :
		<input type="hidden"name="money"value="1200000"></input>
		<br/>
		
		<label class="mytarget">성별</label> :
		<input type="radio"name="gender" value="1"checked="checked">남자
		<input type="radio"name="gender" value="2">여자
		<br/>
		
		<label id="hobby">취미</label> :
		<input type="checkbox"name="sport"value="야구"checked="checked">야구
		<input type="checkbox"name="sport"value="축구"checked>축구
		<input type="checkbox"name="sport"value="농구"checked="checked">농구
		<input type="checkbox"name="sport"value="당구">당구
		<input type="checkbox"name="sport"value="골프">골프
		<br/>
		
		<label class="yourtarget">직업</label> :
		<select name="job">
		<option>--선택해 주세요.
				<option selected="selected">의사
				<option>변호사
				<option>검사
				<option>판사
				<option>변리사
		</select>
		<br/>
		
		<label class="mytarget yourtarget">코멘트</label> :
		<br/>
		<textarea name="comment"rows="10"cols="50"></textarea>
		
		<br/>
		
		<input type="submit"value="전송">
		
		&nbsp;
		
		<input type="reset"value="초기화">
		
		</form>
		
		<br/>
		라벨 개수 : <span id="label_cnt"></span><br/>
		
</body>
</html>