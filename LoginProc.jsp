<%@page import="com.shopping.model.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./../common/bootstrap5.jsp"%>
<%@ include file="./../common/common.jsp"%>

<%
	// 선언문이라고 하며, 자바로 변환되었을 때 인스턴스 변수나 메소드가 됩니다.
	Map<String,String> memlist = new HashMap<String,String>();
	memlist.put("admin","1234");
	memlist.put("hong","1234");
	
%>

<%
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String password = request.getParameter("password");
		
	boolean bool = memlist.containsKey(id) ;
	
	boolean isLogin = false ; // 기본 값 로그인 실패
	
	if(bool){ // 해당 아이디가 존재하는 경우
		String dbpassword = memlist.get(id) ;
		
		if(password.equals(dbpassword)){ //비번 일치
			isLogin = true ;
		
		}else{ // 비번 불일치		
			isLogin = false ;		
		}
	
	}else{ // 해당 아이디가 존재하지 않는 경우
		
		isLogin = false ;
		
	}
	
	if(isLogin){
		// 로그인이 되면 session 영역에 로그인 정보를 바인딩
		Member mem = new Member();
		mem.setId(id);
		mem.setPassword(password);
		session.setAttribute("loginfo", mem) ;
		
		// sendRedirect() : 리다이렉션 방식을 지원해주는 메소드
		response.sendRedirect("bsProductList2.jsp") ;
	}else{
		session.setAttribute("alertMsg", "아이디/비번 정보를 잘못 입력하셨습니다.") ;
		
		response.sendRedirect("bsMemberLogin2.jsp") ;
	}
	
%>
   
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<body>
	나는 탬플릿 파일
</body>
</html>