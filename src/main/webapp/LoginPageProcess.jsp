<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"
 import="com.model.Customers, com.Controller.CustomerController" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Login Page Process</title>
</head>
<body>
    <%
    String email = request.getParameter("email");
    String Enterpassword = request.getParameter("psw");
    
    CustomerController cc = new CustomerController();
    
    String dbPassword = cc.getPassword(email);
    
    if( Enterpassword.equals(dbPassword)){
    	
    	out.println("Login is Successfull");
    	response.sendRedirect("Home.jsp");
    }
    else{
    	out.println("Inavlid user id or password");
    	response.sendRedirect("LoginPage.html");
    }
    
    
    
    %>
</body>
</html>
