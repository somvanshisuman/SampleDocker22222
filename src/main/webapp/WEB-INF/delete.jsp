<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="/css/style.css">
</head>
<body>
	<div class="main">
		<form action="delete" method="post">
			<table>
				<tr>
					<td>Customer ID</td>
					<td><input type="number" name="id"></input></td>
				</tr>
				<tr>
					<td></td>
					<td><input type="submit" value="delete"></input></td>
				</tr>
			</table>
		</form>
		<h5>
			<a href="/customer/home">go to admin Home Page</a>
		</h5>
		<p></p>
		<h5>
			<center><a href="/customer/Index">go to Home Page</a></center>
		</h5>
	</div>
</body>
</html>