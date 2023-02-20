<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<h3>request 영역의 정보</h3>
		아이디 : ${requestScope.cc.id}<br/>
		비밀번호 : ${requestScope.cc.password}<br/>
		이름 : ${requestScope.cc.name}<br/>
		성별 : ${requestScope.cc.gender}<br/>
		나이 : ${requestScope.cc.age}<br/>
		이메일 : ${requestScope.cc.email}<br/>
		연령대 : ${requestScope.cc.ageg}<br/>
		
		<h3>session 영역의 정보</h3>
		테스트1 : ${sessionScope.company}<br/>
		테스트2 : ${sessionScope.address}<br/>
		
		<h3>application 영역의 정보</h3>
		인사 : ${applicationScope.hello}<br/>
		
</body>
</html>