<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ page import="com.shopping.model.Board"%>
<%@ page import="com.shopping.dao.BoardDao"%>


<%@ include file="./../common/bootstrap5.jsp"%>
<%@ include file="./../common/common.jsp"%>
	
<%
	BoardDao dao = new BoardDao() ;
    List<Board> datalist = dao.getDataList();
    
    request.setAttribute("datalist", datalist) ;
    
%>	
	
<!DOCTYPE html>
<html>
<head>
	<title>Bootstrap Example</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<script type="text/javascript">
			${document}
	
	</script>
	<style type="text/css">
		.rounded-pill{opacity:0.7;}
	</style>
</head>
<body>

	<div class="container mt-3">
		<h2>게시물 목록</h2>
		<p>사용자들이 게시한 목록을 보여 주는 페이지</p>

		<table class="table table-striped">
			<thead>
				<tr>
					<th>글번호</th>
					<th>작성자</th>
					<th>글제목</th>
					<th>글내용</th>
					<th>작성 일자</th>
					<th>조회수</th>
					<th>비고</th>
					<th>게시글 그룹 번호</th>
					<th>게시할 순번</th>
					<th>글의 깊이</th>
					
				</tr>
			</thead>
			<tbody>
			<c:forEach var="bean" items="${datalist}">
				<tr>
					<td align="center">
						<c:if test="${bean.no < 15}">
						<span class="badge rounded-pill bg-warning">${bean.no}</span>
					</c:if>
						<c:if test="${bean.no < 25 and bean.no > 10}">
						<span class="badge rounded-pill bg-primary">${bean.no}</span>
					</c:if>
						<c:if test="${bean.no < 35 and bean.no > 20}">
						<span class="badge rounded-pill bg-success">${bean.no}</span>
					</c:if>
						<c:if test="${bean.no < 45 and bean.no > 30}">
						<span class="badge rounded-pill bg-danger"">${bean.no}</span>
					</c:if>
						<c:if test="${bean.no < 55 and bean.no > 40}">
						<span class="badge rounded-pill bg-dark">${bean.no}</span>
					</c:if>
					</td>
					<td>${bean.writer}</td>
					<td>
						<c:forEach begin="1" end="${bean.depth}">
						<span class="badge rounded-pill bg-success">re</span>
						</c:forEach>
						${bean.subject}
						
					</td>
					<td>${bean.content}</td>
					<td>${bean.regdate}</td>
					<td>
						<c:if test="${bean.readhit >= 50}">
						<span class="badge rounded-pill bg-warning">${bean.readhit}</span>
						</c:if>
						<c:if test="${bean.readhit < 50}">
						<span class="badge rounded-pill bg-primary">${bean.readhit}</span>
						</c:if>
					</td>
					<td>${bean.remark}</td>
					<td>${bean.groupno}</td>
					<td>${bean.orderno}</td>
					<td>${bean.depth}</td>
				</tr>
				</c:forEach>
			</tbody>
		</table>

		<ul class="pagination justify-content-center">
			<li class="page-item"><a class="page-link" href="#">Previous</a></li>
			<li class="page-item"><a class="page-link" href="#">1</a></li>
			<li class="page-item active"><a class="page-link" href="#">2</a></li>
			<li class="page-item"><a class="page-link" href="#">3</a></li>
			<li class="page-item disabled"><a class="page-link" href="#">4</a></li>
			<li class="page-item"><a class="page-link" href="#">5</a></li>
			<li class="page-item"><a class="page-link" href="#">Next</a></li>
		</ul>
	</div>
</body>
</html>
