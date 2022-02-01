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
		<h1>Insert to Cart</h1>
		<div class="inner">
		
		
		<div align="center">
		<form action="addimage" method="post" enctype="multipart/form-data">
		select Image :
		<input type="file" name="image">
		<input type="submit" value="add Image" >
		</form>
		</div>
			<form action="add123" method="get">
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
				<button type="submit">Insert to Cart</button><br><br>
				<button type="submit"><a href="/customer/cartresult">All Cart data</a></button><br><br>
			</form>
			<h5>
			<a href="/customer/home">go to Home Page</a>
		</h5>
		</div>
	</div>
</body>
</html>