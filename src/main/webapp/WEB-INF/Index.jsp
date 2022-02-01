
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Home Page</title>
<meta charset="ISO-8859-1">
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
  <script src="https://kit.fontawesome.com/fb336c8135.js"></script>
  <style>
  @font-face {
font-family: 'Klee One', cursive;
   src: url(sansation_light.woff);
}
* {
font-family: 'Klee One', cursive;

}
  .nav-item{
margin-left:100px;
font-size:15px;
}
.carousel{
height:500px;
width:100%;
}

.carousel-item{
	position: relative;
	display: none;
	float: left;
	width: 100%;
	margin-right: -100%;
	transition:transform 0.6s ease-in-out;
}
.exp{
margin-left:400px;
font-size: 40px;
color: brown;
}
.footer{
background-color: #24262b;
    padding: 5px 0;
}
.footer-col{
   width: 25%;
   padding: 0 15px;
}
.footer-col h4{
font-size: 18px;
color: #ffffff;
text-transform: capitalize;
margin-bottom: 35px;
font-weight: 500;
position: relative;
}
.footer-col h4::before{
content: '';
position: absolute;
left:0;
bottom: -10px;
background-color: #e91e63;
height: 2px;
box-sizing: border-box;
width: 50px;
}
.footer-col ul li:not(:last-child){
margin-bottom: 10px;
}
.footer-col ul{
list-style: none;
}
.footer-col ul li a{
font-size: 16px;
text-transform: capitalize;
color: #ffffff;
text-decoration: none;
font-weight: 300;
color: #bbbbbb;
display: block;
transition: all 0.3s ease;
text-align: left;
}
.footer-col ul li a:hover{
color: #ffffff;
padding-left: 8px;
}
.footer-col .social-links a{
display: inline-block;
height: 40px;
width: 40px;
background-color: rgba(255,255,255,0.2);
margin:0 10px 10px 0;
text-align: center;
line-height: 40px;
border-radius: 50%;
color: #ffffff;
transition: all 0.5s ease;
}
.footer-col .social-links a:hover{
color: #24262b;
background-color: #ffffff;
}
</style>
</head>
<body>
<nav class="navbar navbar-expand-sm navbar-dark bg-dark">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">Online Shopping</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#mynavbar">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="mynavbar">
      <ul class="navbar-nav me-auto">
        <li class="nav-item">
          <a class="nav-link active" href="/customer/Index">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" href="/customer/allproducts">Products</a>
        </li>
        
        
         
      
   
        <li class="nav-item">
          <a class="nav-link" href="/customer/aboutus">About Us</a>
        </li>
<li class="nav-item">
          <a class="nav-link" href="/customer/contactus">Contact Us</a>
        </li>
         <li class="nav-item">
          <a class="nav-link" href="/customer/login1">Login</a>
        </li>
      </ul>
    </div>
  </div>
  </nav>
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
<!-- Carousel -->
<div id="demo" class="carousel slide" data-bs-ride="carousel">
  <!-- The slideshow/carousel -->
  <div class="carousel-inner carousel">
    <div class="carousel-item active">
      <img src="https://i4.sdlcdn.com/img/campaign/d0142ff83b/Kids_WEB2H.jpg" alt="kid" class="d-block" style="width:100%">

</div>
    <div class="carousel-item">
      <img src="https://i3.sdlcdn.com/img/campaign/87975e63e8/Girls_WEB2H.jpg" alt="women" class="d-block" style="width:100%">
    </div>
    <div class="carousel-item">
      <img src="https://i2.sdlcdn.com/img/campaign/59bd9fe8ca/Boys_WEB2H.jpg" alt="men" class="d-block" style="width:100%">
    </div>
  </div>
 



  
  
  
  
  
    <div class="main">
		<h6>
			<a href="/login1">LogOut</a>
		</h6>
		<%
		String driverName = "org.postgresql.Driver";
		String connectionUrl = "jdbc:postgresql://localhost:5432/";
		String dbName = "Shopping";
		String userId = "postgres";
		String password = "admin";

		try {
			Class.forName(driverName);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}

		Connection connection = null;
		Statement statement = null;
		ResultSet resultSet = null;
		%>





		<table align="center" cellpadding="5" cellspacing="5" border="1">
			<h2 align = "center">
				<font><strong>All Details</strong></font>
			</h2>
			<tr>
			<td><b> id</b></td>
				<td><b> Name</b></td>
				<td><b>category</b></td>
				<td><b> price</b></td>
				<td><b>add to cart</b></td>
				
			</tr>
			<%
			try {
				connection = DriverManager.getConnection(connectionUrl + dbName, userId, password);
				statement = connection.createStatement();
				String sql = "SELECT * FROM customer";

				resultSet = statement.executeQuery(sql);
				while (resultSet.next()) {
			%>
			<tr color="black">

				<td><%=resultSet.getString("id")%></td>
				<td><%=resultSet.getString("name")%></td>
				<td><%=resultSet.getString("category")%></td>
				<td><%=resultSet.getString("price")%></td>
				<td><a href="/customer/cartInsert">Add to cart</a></td>
				

			</tr>

			<%
			}
			connection.close();
			} catch (Exception e) {
			e.printStackTrace();
			}
			%>
		</table>
		<a href="/customer/home" class = "button">go Back</a>
	</div>
  
  
  
  
  
  
  
  
  
</body>
</html>