<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./../common/bootstrap5.jsp" %>   
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<style type="text/css">
		#progress01{width:30%;}
	</style>
	<script type="text/javascript">
		$(document).ready(function(){
	  		$('#slide01').change(function(){
	  			/* alert($('#slide01').val()/100); */
	  			$('#child02').attr('opacity', $('#slide01').val()/100);
	  		});		  
		});	
	</script>	
</head>
<body>
	<div class="container mt-3">
		<div>
  			<img id="child02" src="./../image/child2.jpg" class="rounded" alt="Cinque Terre">
		</div>
		<div class="slidecontainer">
  			<input id="slide01" type="range" min="0" max="100" value="50" class="slider">
		</div>
	</div>
</body>
</html>