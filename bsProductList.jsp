<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="./../common/bootstrap5.jsp"%>
<%@ include file="./../common/common.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style type="text/css">
/* table 셀의 수평 가운데 정렬 */
.card {
	margin-left: auto;
	margin-right: auto
}
</style>

</head>
<body>

	<div class="container mt-3">
		<h2>상품 목록</h2>
		<p>고객들이 구매할 상품 목록을 보여 주는 페이지</p>
		<table class="table table-borderless">
			<thead>
				<tr>
					<th>
						<div class="card" style="width: 18rem;">
							<a href="http://www.nike.com"> <img
								src="./../image/2.jpg" class="card-img-top" alt="아디다스">
								<div class="card-body">
									<h5 class="card-title">상품01</h5>
									<p class="card-text">이 상품은 좋아요</p>
								</div>
							</a>
						</div>
					</th>
					<th>
						<div class="card" style="width: 18rem;">
							<a href="http://www.adidas.com"> <img src="./../image/2.jpg"
								class="card-img-top" alt="아디다스">
								<div class="card-body">
									<h5 class="card-title">상품01</h5>
									<p class="card-text">이 상품은 좋아요</p>
								</div>
							</a>
						</div>
					</th>
					<th>
						<div class="card" style="width: 18rem;">
							<a href="http://www.adidas.com"> <img src="./../image/3.jpg"
								class="card-img-top" alt="애기신발">
								<div class="card-body">
									<h5 class="card-title">상품01</h5>
									<p class="card-text">이 상품은 좋아요</p>
								</div>
							</a>
						</div>
					</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th>
						<div class="card" style="width: 18rem;">
							<a href="http://www.adidas.com"> <img src="./../image/4.jpg"
								class="card-img-top" alt="애기신발">
								<div class="card-body">
									<h5 class="card-title">상품01</h5>
									<p class="card-text">이 상품은 좋아요</p>
								</div>
							</a>
						</div>
					</th>
					<th>
						<div class="card" style="width: 18rem;">
							<a href="http://www.adidas.com"> <img src="./../image/5.jpg"
								class="card-img-top" alt="애기신발">
								<div class="card-body">
									<h5 class="card-title">상품01</h5>
									<p class="card-text">이 상품은 좋아요</p>
								</div>
							</a>
						</div>
					</th>
					<th>
						<div class="card" style="width: 18rem;">
							<a href="http://www.adidas.com"> <img src="./../image/6.jpg"
								class="card-img-top" alt="애기신발">
								<div class="card-body">
									<h5 class="card-title">상품01</h5>
									<p class="card-text">이 상품은 좋아요</p>
								</div>
							</a>
						</div>
					</th>
				</tr>
			</tbody>
		</table>

		<ul class="pagination justify-content-center">
			<li class="page-item"><a class="page-link" href="#">Previous</a></li>
			<li class="page-item"><a class="page-link" href="#">1</a></li>
			<li class="page-item active"><a class="page-link" href="#">2</a></li>
			<li class="page-item"><a class="page-link" href="#">3</a></li>
			<li class="page-item disabled"><a class="page-link" href="#">4</a></li>
			<li class="page-item"><a class="page-link" href="#">5</a></li>
			<li class="page-item"><a class="page-link" href="#">6</a></li>
			<li class="page-item"><a class="page-link" href="#">7</a></li>
			<li class="page-item"><a class="page-link" href="#">8</a></li>
			<li class="page-item"><a class="page-link" href="#">9</a></li>
			<li class="page-item"><a class="page-link" href="#">Next</a></li>
			<li class="page-item"><a class="page-link" href="#">...</a></li>
		</ul>

	</div>

</body>
</html>
