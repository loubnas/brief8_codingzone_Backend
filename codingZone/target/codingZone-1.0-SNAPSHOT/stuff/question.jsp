<%@ page import="java.util.Iterator" %>
<%@ page import="java.util.List" %>
<%@ page import="models.Question" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>question</title>
</head>
<body>
<h3>question</h3>
<h3>welcome admin in question page a</h3>
<form  action="AddQuestionServlet" method="post">



    <div class="Questions" id="Questions">
        <div class="Question">
            <div class="Header">
                <label for="question">question:</label>
                <input id="question" name="question" type="text"/><input id="idQuestion" name="idQuestion" type="number" placeholder="question ID"/><input id="duration" name="duration" type="number" placeholder="question duration"/><input id="score" name="score" type="number" placeholder="question score"/>
            </div>
            <div class="Body">
                <div class="Answer">
                    <label for="Answer1">Reponse 1:</label>
                    <input name="Answer1" type="text" id="Answer1">
                    <input name="TrueAnswer" type="radio" value="0" >
                </div>
                <div class="Answer">
                    <label for="Answer2">Reponse 1:</label>
                    <input name="Answer2" type="text" id="Answer2">
                    <input name="TrueAnswer" type="radio" value="1" >
                </div>
                <div class="Answer">
                    <label for="Answer3">Reponse 1:</label>
                    <input name="Answer3" type="text" id="Answer3">
                    <input name="TrueAnswer" type="radio" value="2" >
                </div>
                <div class="Answer">
                    <label for="Answer4">Reponse 1:</label>
                    <input name="Answer4" type="text" id="Answer4">
                    <input name="TrueAnswer" type="radio" value="3" >
                </div>

            </div>
        </div>
    </div>
    <input type="submit" value="Ajouter">
</form>

<%--<table>
    <c:forEach var="element" items="${listQuestion}">
        <tr>
            <td>${element.id_question}</td>
            <td>${element.content}</td>
            <td>${element.score}</td>
        </tr>
    </c:forEach>
</table>--%>
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

         List<Question> list =(List<Question>) request.getAttribute("listQuestion");
        Iterator iterator = list.iterator();
        while(iterator.hasNext()){
            Question Q = (Question)iterator.next();

    %>
    <tr>
        <td><%=Q.getId_question() %></td>
        <td><%=Q.getContent() %></td>
        <td><%=Q.getReponse1() %></td>
        <td><%=Q.getReponse2() %></td>
        <td><%=Q.getReponse3()%></td>
        <td><%=Q.getReponse4() %></td>
        <td><%=Q.getTrueAnswer() %></td>
        <td><%=Q.getScore() %></td>
        <td><%=Q.getDuration() %></td>
        <td><%=Q.getDuration() %></td>
        <td><a class="btn btn-danger" href="DeleteQuestionServlet?id=<%=Q.getId_question()%>">Delete</a></td>


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
