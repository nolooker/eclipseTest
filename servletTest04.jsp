<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String contextPath = request.getContextPath();
%>   

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>설문 조사</h3>
	<form action="<%=contextPath%>/hihihi" method="post">
		아이디 : <input name="id" type="text" value="yusin"><br>
		비밀번호 : <input name="password" type="text" value="1234"><br>
		이름 : <input name="name" type="text" value="김유신"><br>
		성별 : 
		<input name="gender" type="radio" value="남자" checked="checked">남자
		<input name="gender" type="radio" value="여자">여자
		<br/>
		나이 : <input name="age" type="number" value="20"><br>
		이메일 : <input name="email" type="text" value="asdf@naver.com"><br>
		연령대 :
		<select name="ageg">
			<option value="청년" selected="selected">청년
			<option value="중년">중년 
			<option value="노년">노년
		</select>
		<br/><br/>
		<input type="submit" value="가입">
		<input type="reset" value="다시 작성">
		
	</form> 
</body>
</html>