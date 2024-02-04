<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import ="com.model.Customers"
    import = "com.Controller.CustomerController"
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sign Up Page Process</title>
</head>
<body>

<%
String emailId = request.getParameter("email");
String password = request.getParameter("psw1");
String firstName = request.getParameter("fname");
String lastName = request.getParameter("lname");
String mobile  = request.getParameter("mob");
String address = request.getParameter("adres");
String questions = request.getParameter("questions");
String answers = request.getParameter("answer");

Customers cust = new Customers(emailId , password , firstName , lastName , mobile , address , questions , answers);

CustomerController ccontr = new CustomerController();

ccontr.SaveInfromation(cust);

out.println("Records are Inserted Succsfully Thank You..");
response.sendRedirect("LoginPage.html");

%>

</body>
</html>