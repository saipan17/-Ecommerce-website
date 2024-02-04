<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import = "com.Controller.CustomerController"
    
    %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
String email = request.getParameter("email");
String password1 = request.getParameter("Pass1");
String password2 = request.getParameter("Pass2");

CustomerController cc = new CustomerController();


if(password1.equals(password2)){
	
	if(cc.resetPassword(email, password1)){
		
		out.println("Password Reseted Succesfully");
		out.println("<br><a href = 'LoginPage.html'>Click here to login again'");
	}
	else{
		out.println("Password is not Reseted succesfully");
		out.println("Please Try again");
	}
	
}
else{
	out.println("Sorry");
	
}

%>

</body>
</html>