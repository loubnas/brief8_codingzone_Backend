
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Dashboard</title>
</head>
<body>
<h3>Dashboard</h3>
<h3>welcome admin  </h3>
<h2>${staff.email}////${staff.id} </h2>
<br/>
<br>
<br>
<ul>
    <li><a href="FindQuestionServlet" > add question</a>

    <li><a href="#" > add test</a></li>
    <li><a href="LogOutServlet" > Log Out</a></li>
</ul>


</body>
</html>
