<%@page import="com.Dao.ProductDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import = "com.Controller.ProductController"
    import = "java.util.*"
    import = "com.model.*"
    
    %>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<head>
<style>

body{

   repeat : no-repeat;
   background-color : #283d4b;
}

ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
}

li {
  float: left;
}

li a {
  display: block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

li a:hover:not(.active) {
  background-color: #111;
}

.active {
  background-color: #04AA6D;
}
.card-img-top{

  width : 200px;
  height : 200px;
   
}

</style>
</head>
<body>

<div>
 <div class = "navbar-nav bg-danger">
<ul class = "nav">
  <li><a class="active" href="#home">Home</a></li>
  <li><a href="https://telecom.economictimes.indiatimes.com/tag/electronics">News</a></li>
  <li><a href="Contact.jsp">Contact</a></li>
 <!--  <li><a href="#about">About</a></li>   -->
  <li class = "ml-auto"><a href = "LogOut.jsp">Logout</a></li>
</ul>
</div>
<%
    ProductController productController = new ProductController();
    ProductDao productDao = new ProductDao(productController.getSession());
    
    List<Products> products = productDao.getAllProducts();
%>
<div class = "container">
<div class = "card-header my-3">All Products</div>
<div class = "row">

<%
if(!products.isEmpty()){
	
	for(Products p : products){
			
%>
<div class = "col-md-3 my-3">
<div class = "card w-100">
<img class = "card-img-top" src = "Images/<%=p.getImage()%>" alt = "card image cap">
<div class = "card-body">
<h5 class = "card-title"><%=p.getName()%></h5>
<h6 class = "price">Price :$ <%= p.getPrice()%></h6>
<h6 class = "category">Category :<%= p.getCategory()%></h6>
<div class = "mt-3 d-flex justify-content-between">
<a href = "https://www.amazon.in" class = "btn btn-dark">Add to cart</a>
<a href = "#" class = "btn btn-primary">Buy now</a>
</div>
</div>
</div>
</div>
<%
}
}

else{
	
  out.println("There is no products");
  
}
%>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</body>
</html>