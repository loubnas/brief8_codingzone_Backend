<%@ page import="models.Test" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="models.Student" %>
<%@ page import="factory.DaoFactory" %>
<%@ page import="models.Question" %>
<%@ page import="models.TestStudentSended" %><%--
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
    <style><%@include file="/css/question.css"%></style>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.0/dist/jquery.validate.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-multiselect/0.9.13/js/bootstrap-multiselect.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-multiselect/0.9.13/css/bootstrap-multiselect.css">
</head>
<body>

<%@include file="/stuff/sidebar.jsp"%>
<div class="bodyContent">

    <div class="incontent">

        <div class="container">
            <div class="row">
                <h1> Affectation du test : </h1>
                 <fieldset>
                <form action="AffecterTestServlet" method="POST">
                    <div class="form-group">
                        <label class="form-label" for="test">select un test</label>
                        <%
                            List<Test> list = (List<Test>) request.getAttribute("listTest");
                            Iterator iterator = list.iterator();
                        %>
                        <select class="form-control w-50 control" id="test" name="id_test" required>
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

                        <% List<Student> students = DaoFactory.getStudentImpl().findAll();%>
                        <select class="form-select w-50 control" id='pre-selected-options' name="email" multiple='multiple'>
                            <% for(Student s : students){ %>
                            <option value='<%=s.getEmail()%>'> <%=s.getEmail()%></option>
                            <% }%>
                        </select>
                        <script>
                            $('#pre-selected-options').ariaMultiSelectable();
                        </script>
                        <br>

                    </div>
                    <button type="submit" class="BTN-TBL">Envoyer</button>
                </form>
                 </fieldset>
            </div>
            <div class="row">
                <%if(request.getAttribute("operationsResponse")!=null){
                    for(TestStudentSended ts:(List<TestStudentSended>)request.getAttribute("operationsResponse")){%>
                <p> ID test : <%=ts.getId_test()%> ---- Email : <%=ts.getEmail()%> ---- Statut : <%=ts.isSended()%></p>
                <%}
                }%>
            </div>
        </div>
    </div>
</div>
</body>
</html>