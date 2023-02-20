<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
		// 한글 깨짐 방지, 반드시 가장 상단에 명시할 것.
		request.setCharacterEncoding("UTF-8");
%>
<%
		String name = request.getParameter("name");
		String gender = request.getParameter("gender");
		
		String[] jobs = request.getParameterValues("job") ;
		
		String job = "" ;
		
		if(jobs == null){
				job = "";		
				
		}else{

			for(int i=0 ; i < jobs.length; i++){
				job += jobs[i] + "," ;
			}
			job = job.substring(0,job.length() -1);
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
			<td>이름</td>
			<td>${requestScope.abc.name}</td>
		</tr>
		<tr>
			<td>성별</td>
			<td>${requestScope.abc.gender}</td>
		</tr>
		<tr>
			<td>직업</td>
			<td>${requestScope.abc.job}</td>
		</tr>
	
	
	</table>
  			이름 : <%=name%><br/>
  			성별 : <%=gender%><br/>
  			직업 : <%=job%><br/>
</body>
</html>