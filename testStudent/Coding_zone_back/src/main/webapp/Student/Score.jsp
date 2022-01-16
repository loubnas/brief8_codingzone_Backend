<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 16/01/2022
  Time: 14:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Score obtenu :</title>
</head>
<body>
<p> votre score est <%=request.getAttribute("score")%> / <%=request.getAttribute("totalScore")%></p>
</body>
</html>
