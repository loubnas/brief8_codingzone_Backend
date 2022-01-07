<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 06/01/2022
  Time: 15:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
</head>
<body>
<!-- Login Form -->
<form action="LoginServlet" method="post">
    <input type="text" id="email" class="fadeIn second" name="email" placeholder="email"><br>
    <input type="password" id="password" class="fadeIn third" name="password" placeholder="password"><br>
    <input type="submit" name="submit" class="fadeIn fourth" value="Log In"><br>
</form> <br>
<h2>

    <%= request.getAttribute("message") %>

</h2>
</body>
</html>