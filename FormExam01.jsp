<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<h1>폼 양식</h1>
		<!-- action 속성이 submit 할 때 이동할 곳을 명시 -->
		
		<form action="FormExam01To.jsp">
		
		<label>이름</label> :
		<input type="text"name="name"></input>
		<br/><!-- <br/>은 엔터키 효과 -->
        
        <label>나이</label> :
		<input type="text"name="age"></input>
		<br/>
        						
		<label>이미지</label> :
		<input type="file"name="image"></input>
		<br/>
		
		<label>숨김 피라미터</label> :
		<input type="hidden"name="money"value="1200000"></input>
		<br/>
		
		<label>성별</label> :
		<input type="radio"name="gender" value="1"checked="checked">남자
		<input type="radio"name="gender" value="2">여자
		<br/>
		
		<label>취미</label> :
		<input type="checkbox"name="sport"value="야구"checked="checked">야구
		<input type="checkbox"name="sport"value="축구"checked>축구
		<input type="checkbox"name="sport"value="농구"checked="checked">농구
		<input type="checkbox"name="sport"value="당구">당구
		<input type="checkbox"name="sport"value="골프">골프
		<br/>
		
		<label>직업</label> :
		<select name="job">
		<option>--선택해 주세요.
				<option selected="selected">의사
				<option>변호사
				<option>검사
				<option>판사
				<option>변리사
		</select>
		<br/>
		
		<label>코멘트</label> :
		<br/>
		
		<textarea name="comment"rows="10"cols="50"></textarea>
		
		<input type="submit"value="전송">
		
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		
		<input type="reset"value="초기화">
		
		</form>
</body>
</html>