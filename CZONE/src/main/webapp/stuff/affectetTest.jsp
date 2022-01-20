<%@ page import="models.Test" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Iterator" %><%--
  Created by IntelliJ IDEA.
  User: adm
  Date: 12/01/2022
  Time: 15:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Affecter le test</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.0/dist/jquery.validate.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-multiselect/0.9.13/js/bootstrap-multiselect.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-multiselect/0.9.13/css/bootstrap-multiselect.css">
</head>
<body>
<h3 class="text-center">Affecter un Test :</h3>
<%--    <%@include file="/stuff/sidebar.jsp"%>--%>
<div class="container">
    <form action="AffecterTestServlet" method="POST">
        <div class="form-group">
            <label for="test">select un test</label>
            <%
                List<Test> list = (List<Test>) request.getAttribute("listTest");
                Iterator iterator = list.iterator();
            %>
            <select class="form-control" id="test" name="test" required>
                <option selected disabled value="">select un test</option>
                <%
                    while(iterator.hasNext()){
                        Test T = (Test)iterator.next();
                %>
                <option value="<%=T.getId_test()%>"><%=T.getName()%></option>
                <% } %>
            </select>
        </div>
        <div class="form-group">
            <label for="email1">Email</label>
            <input  type="email" class="form-control" id="email1" aria-describedby="emailHelp" placeholder="Enter email de l'appranant" name="email" required>
        </div>
        <button type="submit" class="btn btn-primary">Envoyer</button>
    </form>
</div>
</body>
</html>
