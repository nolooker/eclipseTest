<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
	<style type="text/css">
		container{width: 80%;margin-left:auto;margin-right:auto;}
		table, #mydiv{width: 60%;margin-left:auto;margin-right:auto;}
	</style>
</head>

<body>

	<div class="container mt-3">
		<h2>Striped Rows</h2>
		<p>The .table-striped class adds zebra-stripes to a table:</p>
		<div id="mydiv">
		<table class="table table-striped">
			<thead>
				<tr>
					<th>Firstname</th>
					<th>Lastname</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>John</td>
					<td>Doe</td>
				</tr>
				<tr>
					<td>Mary</td>
					<td>Moe</td>
				</tr>
				<tr>
					<td>July</td>
					<td>Dooley</td>
				</tr>
			</tbody>
		</table>
		</div>
	</div>

</body>
</html>
