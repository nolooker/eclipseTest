<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
		// 한글 깨짐 방지, 반드시 가장 상단에 명시할 것.
		request.setCharacterEncoding("UTF-8");
%>

<%
		

		String name = request.getParameter("name");
		
		int age = Integer.parseInt(request.getParameter("age"));
		
		String image = request.getParameter("image");
		
		int money = Integer.parseInt(request.getParameter("money"));
		
		String gender = request.getParameter("gender");
		
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
		
		String job = request.getParameter("job");
		
		String comment = request.getParameter("comment");
		
%>





<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

  			
  			이름 : <%=name%><br/>
  			나이 : <%=age%><br/>
  			이미지 : <%=image%><br/>
  			숨김 파라미터 : <%=money%><br/>
  			성별 : <%=gender%><br/>
  			취미 : <%=hobby%><br/>
			직업 : <%=job%><br/>
			코멘트 : <%=comment%><br/>
		

</body>
</html>