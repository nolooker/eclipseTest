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
	<!-- action 속성에 submit 할때 이동할 곳을 명시 -->
	
	<form action="formExam04To.jsp">
	
		<label>이름</label> : 
		<input type="text" name="name" value="gric"></input>
		<br/> <!-- br은 엔터키 효과 -->
		
		<label>나이</label> :  
		<input type="text" name="age" value="30"></input> 
		<br/>
		
		<label>이미지</label> :  
		<input type="file" name="image"></input> 
		<br/>
		
		<label>숨김 파라미터</label> :  
		<input type="hidden" name="money" value="1200000"></input> 
		<br/>
		
		<label>성별</label> :  
		<input type="radio" name="gender" value="1" checked="checked">남자
		<input type="radio" name="gender" value="2">여자
		<br/>
		
		<label>취미</label> :  
		<input type="checkbox" name="hobby" value="당구">당구
		<input type="checkbox" name="hobby" value="축구">축구
		<input type="checkbox" name="hobby" value="야구" checked>야구
		<input type="checkbox" name="hobby" value="농구" checked="checked">농구
		<br/>
		 
		<label>직업</label> : 
		<select name="job">
			<option>-- 선택해 주세요.
			<option value="의사">의사
			<option value="판사" selected="selected">판사
			<option value="변호사">변호사
			<option value="검사">검사			
		</select>
		<br/>
		
		<label>코멘트</label> : 
		<textarea name="comment" rows="10" cols="50"></textarea>
		
		<br/>
		<input type="submit" value="전송">
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="reset" value="초기화"> 
	</form>

	<%
	String name = "park";
	int age = 30;
	String gender = "남자";
	String hobby = "축구";
	String job = "판사";
	String comment = "nice to meet you";
	
	%>
	
	<a href="formExam04To.jsp?name=<%=name%>&age=<%=age%>&gender=<%=gender%>&hobby=<%=hobby%>&job=<%=job%>&comment=<%=comment%>">변수 사용</a>
	<br/>
	
	<%
	request.setAttribute("name", "최정아");
	request.setAttribute("age", 20);
	request.setAttribute("gender", "여자");
	request.setAttribute("hobby", "축구");
	request.setAttribute("job", "검사");
	request.setAttribute("comment", "show me the money");
	%>
	
	<a href="formExam04To.jsp?name=${requestScope.name}&age=${requestScope.age}&gender=${requestScope.gender}&hobby=${requestScope.hobby}&job=${requestScope.job}&comment=${requestScope.comment}">EL사용</a>
	<br />
	
	
</body>
</html>









