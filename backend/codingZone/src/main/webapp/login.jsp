<%@ page import="java.io.PrintWriter" %><%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 06/01/2022
  Time: 15:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <% if(session.getAttribute("staff")!=null){
        response.sendRedirect("stuff/dashboard.jsp");
    }%>
    <title>Login</title>
    <script
            src="https://code.jquery.com/jquery-3.4.1.min.js"
            integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
            crossorigin="anonymous"></script>
    <script type="text/javascript"
            src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.0/dist/jquery.validate.min.js"></script>
</head>
<body>
<div style="text-align: center">
    <h1>Admin Login</h1>
    <form action="LoginServlet" id="loginForm" method="post">
        <label class="form-label" for="email">Email:</label>
        <input class="form-control" name="email" id="email" size="30" />
        <br><br>
        <label class="form-label" for="password">Password:</label>
        <input  class="form-control" type="password" name="password" id="password" size="30" />
        <br>${message}
        <br><br>
        <button type="submit">Login</button>
    </form>



</body>




















<script type="text/javascript">

    $(document).ready(function() {
        $("#loginForm").validate({
            rules: {
                email: {
                    required: true,
                    email: true
                },

                password: "required",
            },

            messages: {
                email: {
                    required: "Please enter email",
                    email: "Please enter a valid email address"
                },

                password: "Please enter password"
            }
        });

    });
</script>
</html>
