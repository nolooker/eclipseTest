<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./../common/bootstrap5.jsp"%>
<%@ include file="./../common/common.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<body>
	
	 	<!-- 1부터 10까지의 총합 구하기 -->
	<c:set var="total" value="0"/>
	
	<c:forEach var="i" begin="1" end="10" step="1">
				<c:set var="total" value="${total + i}"/>
	
	</c:forEach>
	
	총합 : <c:out value="${total}"/><br/>
	
	<!-- 1부터 10까지의 짝수/ 홀수 각각 총합 구하기 -->
	<c:set var="odd" value="0"/>
	<c:set var="even" value="0"/>
	
	<c:forEach var="i" begin="1" end="10" step="1">
		<c:if test="${i%2 == 1}">
			<c:set var="odd" value="${odd + i}"/>
		</c:if>
		
		<c:if test="${i%2 == 0}">
			<c:set var="even" value="${even + i}"/>
		</c:if>
	
	</c:forEach>
	
	홀수 총합 : <c:out value="${odd}"/><br/>
	짝수 총합 : <c:out value="${even}"/><br/>
	
	<!-- 1부터 10까지의 3의 배수 총합/4의 배수 총합/ 나머지 합 구하기 -->
	<c:set var="result01" value="0"/>
	<c:set var="result02" value="0"/>
	<c:set var="result03" value="0"/>
	
	<c:forEach var="i" begin="1" end="10" step="1">
			<c:choose>
				<c:when test="${i%3 == 0}">
					<c:set var="result01" value="${result01 + i}"/>
				</c:when>
				<c:when test="${i mod 4 == 0}">
					<c:set var="result02" value="${result02 + i}"/>
				</c:when>

				<c:otherwise>
					<c:set var="result03" value="${result03 + i}"/>
				</c:otherwise>
				
			</c:choose>
	</c:forEach>
	
	결과01 : <c:out value="${result01}"/><br/>
	결과02 : <c:out value="${result02}"/><br/>
	결과03 : <c:out value="${result03}"/><br/>
	
	<c:set var="id" value="hong"/>
	
	<c:if test="${empty id}">
		비어 있음<br/>
	</c:if>
	
	<c:if test="${not empty id}">
		데이터 들어 있음<br/>
	</c:if>
	
	
	<!-- 1+3+5...+99 총합 구하기 -->
	<c:set var="sum" value="0"/>
	
	<c:forEach var="i" begin="1" end="99" step="2">
				<c:set var="sum" value="${sum + i}"/>
	</c:forEach>
	
	총합 구하기 : <c:out value="${sum}"/><br/>
	
	
	<!-- jumsu : 82 수우미양가 구해보시오 -->
	if 구문 수우미양가 구하기 : 
	<c:set var="jumsu" value="82"/>
	
	<c:forEach var="i" begin="1" end="1" step="1">
		
		<c:if test="${jumsu >= 90}">
				학점 : A
		</c:if>
		
		<c:if test="${jumsu >= 80 and jumsu < 90}">
				학점 : B
		</c:if>
		
		<c:if test="${jumsu >= 70 and jumsu < 80}">
				학점 : C
		</c:if>
		
		<c:if test="${jumsu >= 60 and jumsu < 70}">
				학점 : D
		</c:if>
		
		<c:if test="${jumsu < 60}">
				학점 : F
		</c:if>
	</c:forEach><br/>
	
	choose 구문 수우미양가 구하기 : 
	
	<c:set var="jumsu" value="82"/>
	
			<c:choose>
				<c:when test="${jumsu >= 90}">
					학점 : A<br/>
				</c:when>
				<c:when test="${jumsu >= 80 and jumsu < 90}">
					학점 : B
				</c:when>
				<c:when test="${jumsu >= 70 and jumsu < 80}">
					학점 : C
				</c:when>
				<c:when test="${jumsu >= 70 and jumsu < 80}">
					학점 : D
				</c:when>
				<c:otherwise>
					학점 : F<br/>
				</c:otherwise>	

			</c:choose>
	
</body>
</html>