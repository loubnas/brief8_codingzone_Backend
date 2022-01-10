<%@ page import="models.Test" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Iterator" %><%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 10/01/2022
  Time: 09:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Test</title>
</head>
<body>
<table class="table table-bordered mt-2" >
    <thead>
    <tr>
        <th scope="col">Id_question</th>
        <th scope="col">Content</th>
        <th scope="col">Reponse1</th>
        <th scope="col">Reponse2</th>
        <th scope="col">Reponse3</th>
        <th scope="col">Reponse4</th>
        <th scope="col">TrueAnswer</th>
        <th scope="col">Score</th>
        <th scope="col">Duration</th>
        <th scope="col">Action</th>

    </tr>
    </thead>
    <tbody>
    <%

        List<Test> list =(List<Test>) request.getAttribute("listTest");
        Iterator iterator = list.iterator();
        while(iterator.hasNext()){
            Test Q = (Test)iterator.next();

    %>
    <tr>
        <td><%=Q.getId_test() %></td>
        <td><%=Q.getName() %></td>
        <td><%=Q.getDescription() %></td>
        <td><%=Q.getId_staff() %></td>

        <td><a class="btn btn-danger" href="DeleteQuestionServlet?id=<%=Q.getId_test()%>">Delete</a></td>


    </tr>
    <%}%>

    </tbody>
</table>



<br/>
<br>
<br>
<ul>

    <li><a href="FindQuestionServlet" > add question</a>

    <li><a href="FindTestServlet" > add test</a></li>
    <li><a href="LogOutServlet" > Log Out</a></li>
</ul>
</body>
</html>
