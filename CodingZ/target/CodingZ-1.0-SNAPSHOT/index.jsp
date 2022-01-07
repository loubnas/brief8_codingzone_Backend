<%@ page import="model.Stuff" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    String SFN=((Stuff)request.getAttribute("stuff")).getFirstname_stuff();
%>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<h1><%= SFN %>
</h1>
<br/>
<a href="hello-servlet">Hello Servlet</a>
</body>
</html>