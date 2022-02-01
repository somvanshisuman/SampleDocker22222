<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer details </title>
<link rel="stylesheet" href="/css/style.css">
</head>
<body>
	<div class="center">
		<h1>Product Details</h1>
		<div class="inner">
		
		
		<div align="center">
		
		</div>
			<form action="add" method="get">
				<table>
				
					<tr>
						<td>Id</td>
						<td><input type="number" name="id"></td>
					</tr>
					<tr>
						<td>Name</td>
						<td><input type="text" name="name"></td>
					</tr>
					<tr>
						<td>Category</td>
						<td><input type="text" name="category"></td>
					</tr>
					
					
					
					
					<tr>
						<td>price</td>
						<td><input type="text" name="price"></td>
					</tr>
					
					<br><br>
				</table>
				<button type="submit">Insert</button><br><br>
			</form>
			<h5>
			<a href="/customer/home">go to Home Page</a>
		</h5>
		</div>
	</div>
</body>
</html>