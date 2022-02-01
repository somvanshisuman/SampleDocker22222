<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
h1 {
	text-align: center;
}

h3 {
	text-align: center;
}
</style>

<body>
<h2>${errorMsg}</h2>
<form method="post">
<h1><input type="text" name="userId" placeholder="User ID"/><br>
<br>
<input type="password" name="password" placeholder="Password"/><br>
<br>
<button>Submit</button></h1>
</form> 

</body>
</html>