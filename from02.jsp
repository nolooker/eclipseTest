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
<!-- 서블릿 실습
from02.jsp -> to02.jsp
서블릿 패턴(url pattern) : hello
서블릿 이름 : com.shopping.myservlet.HelloController.java

from02.jsp에서 /hello라는 요청이 들어오면 HelloController.java가 요청을 접수 받은 다음 
to02.jsp로 이동하도록 하겠습니다.

Bean 클래스 : com.shopping.model.person02.java
-->

	<form action="<%= contextPath %>/hello" method="post">
		아이디 : <input type="text" name="id" value="hong"><br/> 
		이름 : <input type="text" name="name" value="홍길동"><br/> 
		나이 : <input type="text" name="age" value="20"><br/> 
		취미 : <input type="checkbox" name="hobby" value="탁구">탁구 
			  <input type="checkbox" name="hobby" value="축구">축구 
			  <input type="checkbox" name="hobby" value="농구">농구 
			  <br/> 
			
			<input type="submit" value="전송">

	</form>
</body>
</html>