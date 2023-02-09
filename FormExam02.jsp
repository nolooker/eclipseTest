<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>html 공부</title>
	<style type="text/css">
	/* style 태그는 css를 적용시키기 위한 태그입니다. */
	/* text/css의 메모장으로 볼 수 있는 css 형식입니다.*/
	/*선택자{속성이름:속성값;속성이름:속성값;속성이름:속성값;}*/		
	/*선택자는 selector 라고 한다*/
			label{font-size: 25px;}/*라벨 태그 모두 찾아서 글자 크기를 25픽셀로 셋팅*/
	/*id 속성은 sharp 기호를 사용합니다*/				  
	/* 문서 내애세 유일(unique)하게 지정하고자 할 때 사용 */
	#age{color:white;font-size:30px;} 	
 	#hobby{color:blue;font-size: 30px;}
 	
 	/*class 속성은 dot(.) 기호를 사용합니다*/				  
	/* 여러 개를 같이 묶어서 처리하고자 할 때 사용 */
 	.mytarget{color:yellow;font-size:40px;background-color:black;}
 	
 	.yourtarget{color:red;font-size:40px;background-color:yellow;}
 	
 	/* 콤마를 사용하면 2개 이상의 요소에 동시 스타일 지정이 가능 */
 	
 	#age,#hobby{background-color:red;color:white;}
 	
 	/* 스페이스는 특정 요소의 하위 요소를 찾을 때 사용 */
 	#myform #age{background-color:blue;color:yellow;}
 	
 	/* 라벨 요소 중에서 id가 hobby인 항목을 찾는다 */
 	label#hobby{background-color:green;color:black;}
 	
 	</style>
	
	
</head>
<body>
		<h1>폼 양식</h1>
		<!-- action 속성이 submit 할 때 이동할 곳을 명시 -->
		
		<form id="myform" name="myform" action="FormExam02To.jsp">
		
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
</body>
</html>