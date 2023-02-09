<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<style type="text/css">
	
	/*
			CSS(Cascading Style Sheet) 
			html 요소(element)에 스타일을 지정하는 문법
	*/
	
	li{font-size:30px;}
	h1{
	color:green;
	font-size:50px
	
	}
	</style>
	
	<script type="text/javascript">
	/*
	
	JavaScript 영역
	html 요소에 대한 읽기/쓰기/조작 등을 하기 위한 프로그래밍 언어
	
	*/
	function welcome(){
		alert('어서 오세요~~');
	}
	
	</script>
	
</head>
<body>
<!-- 나는 html 주석이야 -->
<!--  
		여는 꺽쇠로 시작하는 항목을 tag 또는 elment 라고 한다.
		tag내에 속성이름="값"을 속성(attribute)이라고 한다.
		html은 웹 페이지 내부에 들어가는 content를 만드는 문법이라고 한다.
		
 -->
 
 <!-- 중요 태그 : from(양식), table(표), 앵커(a 태그)  -->
 
 <!-- 검색시 hn으로 검색하기 -->
<h1>큰 글씨</h1>
<h1>Heading 1</h1>
<h2>Heading 2</h2>
<h3>Heading 3</h3>
<h4>Heading 4</h4>
<h5>Heading 5</h5>
<h6>Heading 6</h6>


<button onclick="welcome();">Click Me</button>

안녕하세요~~<font color="blue"><b>홍길동</b></font>님

~~방가워요^^
<br/>
<hr/>
<!-- hr은 horizontal ruler -->

<ul>
	<li>사과</li>
	<li>배</li>
	<li>감</li>
	<li>포도</li>

</ul>
<hr/>
<a href="http://www.naver.com">네이버</a>
<br/>
<a href="http://www.daum.net">다음</a>
</body>
</html>