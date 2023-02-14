<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>테이블 만들기</title>
	<style type="text/css">
	
	</style>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function(){
			$('tr:first').css('color', 'blue');
			$('tr:last').css('color', 'red');
			
			$('tr:odd').css('color', 'green');
			$('tr:even').css('color', 'yellow');
			
			$('tr:eq(2)').css('background-color', 'blue');
			$('tr:gt(4)').css('background-color', 'red');
			$('tr:lt(3)').css('background-color', 'green');
			
			/* 속성은 대괄호 내에 작성하고 '$='의 의미는 ~~로 끝나는 항목 */
			$('[href$=".com/"]').css('background-color', 'green');
			
			/* '^='의 의미는 ~~로 시작하는 항목 */
			$('[href^="http://"]').css('background-color', 'yellow');
			
			var list = $('[href^="http://"]') ;
			list.each(function(){
				alert($(this).text());
			});	
			
			/* '*='의 의미는 ~~을 포함하는 항목 */
			$('[href*="bs"]').css('background-color', 'blue');
		});
	</script>	
</head>
<body>
	<h3>표 만들기</h3>
	<table border="1"> 
		<tr>
			<th>아이디</th>
			<th>이름</th>
			<th>나이</th>
			<th>주소</th>
		</tr>
		<tr>
			<td>hong</td>
			<td>홍길동</td>
			<td>10</td>
			<td>금천</td>
		</tr>
		<tr>
			<td>kim</td>
			<td>김철수</td>
			<td>20</td>
			<td>영등포</td>
		</tr>
		<tr>
			<td>lee</td>
			<td>이순신</td>
			<td>30</td>
			<td>마포</td>
		</tr>
		<tr>
			<td>choi</td>
			<td>최영</td>
			<td>40</td>
			<td>용산</td>
		</tr>
		<tr>
			<td>an</td>
			<td>안중근</td>
			<td>50</td>
			<td>은평</td>
		</tr>
		<tr>
			<td>park</td>
			<td>박문수</td>
			<td>60</td>
			<td>강남</td>
		</tr>
	</table>
	
	<!--  ordered list -->
	<h3>순서 있는 목록</h3>
	<ol>
		<li>냄비에 물 붓기</li>
		<li>물이 끓는다.</li>
		<li>라면 넣고 3분 끓인다.</li>
		<li>맛있게 먹는다.</li>
		<li>설겆이 한다.</li>
	</ol>
	
	<!--  unordered list -->
	<h3>순서 없는 목록</h3>
	<ul>
		<li><a href="https://www.naver.com/">네이버</a></li>
		<li><a href="https://www.daum.net/">다음</a></li>
		<li><a href="https://www.imbc.com/">MBC</a></li>
		<li><a href="http://www.kbs.co.kr/">KBS</a></li>
		<li><a href="http://www.sbs.co.kr/">SBS</a></li>
	</ul>		
</body>
</html>











