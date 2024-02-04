<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import = "com.model.Products"
    import = "com.Controller.ProductController"
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Product Entry</title>
</head>
<body>
<%
String Prodname = request.getParameter("p1");

String Category = request.getParameter("category");

int quantity = Integer.parseInt(request.getParameter("qty"));


int Price = Integer.parseInt(request.getParameter("price"));

String Manufacturer = request.getParameter("manufacturer");

Products product = new Products();



ProductController pc = new ProductController();

for(int i = 1; i<=quantity; i++){

}


%>

</body>
</html>