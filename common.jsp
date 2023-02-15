<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	
	<%-- core 라이브러리 --%>
	<%-- uri는 unique한 값, prefix는 접두사(네임스페이스)  --%>
	<%-- 네임스페이스는 서로 다른 영역을 식별하기 위한 별칭과 같은 개념  --%>
	
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	
	<%-- 
			JSTL : Jsp Standard Tag Library
			JSP 코딩을 지원하기 위한 표준 태그 라이브러리
			준비물 ) jstl-1.2.jar, standard.jar 파일 lib에 넣기
			taglib 지시어를 명시해 주어야 함. (상단에 %@ taglib prefix="c"uri="http://java.sun.com/jsp/jstl/core" % 입력)
			필요한 태그 라이브러리를 적절히 사용하면 됨.		
	 --%>
	
	<!-- for sweet alert -->
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>	
</head>
<body>
<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
  <div class="container-fluid">
    <a class="navbar-brand" href="">쇼핑몰</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#collapsibleNavbar">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="collapsibleNavbar">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link" href="">미로그인</a>
        </li>
        
        <!-- 회원 section -->
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown">회원</a>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="#">회원 가입</a></li>
            <li><a class="dropdown-item" href="#">로그인</a></li>
            <li><a class="dropdown-item" href="#">로그 아웃</a></li>
            <li><a class="dropdown-item" href="#">정보 수정</a></li>
          </ul>
        </li>
        
        <!-- 게시물 section -->
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown">게시물</a>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="#">게시물 등록</a></li>
            <li><a class="dropdown-item" href="#">목록 보기</a></li>
          </ul>
        </li>
        
        <!-- 상품 section -->
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown">상품</a>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="#">상품 등록</a></li>
            <li><a class="dropdown-item" href="#">목록 보기</a></li>
          </ul>
        </li>        


        <!-- 쇼핑몰 section -->
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown">쇼핑몰</a>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="#">내역 보기</a></li>
            <li><a class="dropdown-item" href="#">장바구니</a></li>
          </ul>
        </li>        
        
      </ul>
    </div>
  </div>
</nav>
</body>
</html>