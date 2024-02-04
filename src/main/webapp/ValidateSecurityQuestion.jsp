<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="com.Controller.CustomerController" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <title>Validate Security Question</title>
</head>
<body>

    <div class="container mt-5">
        <div class="col-md-6 offset-md-3">
            <%
                String username = request.getParameter("email");
                String question = request.getParameter("questions");
                String answers = request.getParameter("answer");
                CustomerController cc = new CustomerController();
                boolean isValidated = cc.validateSecurtiyquestion(username, question, answers);

                if (isValidated) {
            %>
                    <form action="ResetPassword.jsp" method="post">
                        <input type="hidden" name="email" value="<%= username %>">
                        <div class="form-group">
                            <label for="Pass1">Enter Password</label>
                            <input type="password" class="form-control" name="Pass1" required>
                        </div>
                        <div class="form-group">
                            <label for="Pass2">Re-Enter Password</label>
                            <input type="password" class="form-control" name="Pass2" required>
                        </div>
                        <button type="submit" class="btn btn-danger">Reset Password</button>
                    </form>
            <%
                } else {
            %>
                    <p class="text-danger">Entered Question or Answer is wrong</p>
            <%
                }
            %>
        </div>
    </div>

    <!-- Bootstrap JS and Popper.js -->
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0a1weyGpITe7blg" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.min.js" integrity="sha384-wfSDF2E50YFg2EWhu2zabF0AbD7IYoBBfl7dDTRjef4tPf2bV2lLJc79aI5qjTm" crossorigin="anonymous"></script>
</body>
</html>
