<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
		// 한글 깨짐 방지, 반드시 가장 상단에 명시할 것.
		request.setCharacterEncoding("UTF-8");
%>
<%
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		int age = Integer.parseInt(request.getParameter("age")) +5 ;
		
		String[] hobbies = request.getParameterValues("hobby") ;
		
		String hobby = "" ;
		
		if(hobbies == null){
				hobby = "";		
				
		}else{

			for(int i=0 ; i < hobbies.length; i++){
				hobby += hobbies[i] + "," ;
			}
			hobby = hobby.substring(0,hobby.length() -1);
		}
		
		
%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border="1">
		<tr>
			<td>아이디</td>
			<td>${requestScope.asdf.id}</td>
		</tr>
		
		<tr>
			<td>이름</td>
			<td>${requestScope.asdf.name}</td>
		</tr>
		
		<tr>
			<td>나이</td>
			<td>${requestScope.asdf.age}</td>
		</tr>
		<tr>
			<td>취미</td>
			<td>${requestScope.asdf.hobby}</td>
		</tr>
	
	
	</table>
  			아이디 : <%=id%><br/>
  			아이디 길이 : <%=id.length()%><br/>
  			이름 : <%=name%><br/>
  			나이 : <%=age%><br/>
  			취미 : <%=hobby%><br/>
</body>
</html>