<%@ page import="models.Question" %>
<%--

  Created by IntelliJ IDEA.
  User: admin
  Date: 10/01/2022
  Time: 23:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edite Question</title>

    <form  action="UpdateQuestionServlet" method="post">

        <%

            Question Q =(Question) request.getAttribute("question");
            String[] checked = new String[4];

            checked[Q.getTrueAnswer()]="checked";

        %>

        <div class="Questions" id="Questions">
            <h2> <%=Q.getTrueAnswer() %></h2>
            <div class="Question">
                <div class="Header">
                    <label for="question">question:</label>
                    <input value="<%=Q.getContent() %>" id="question" name="question" type="text"/><input value="<%=Q.getId_question() %>" id="id_question" name="id_question" type="number" placeholder="id_question"/><input value="<%=Q.getDuration() %>" id="duration" name="duration" type="number" placeholder="question duration"/><input value="<%=Q.getDuration() %>" id="score" name="score" type="number" placeholder="question score"/>
                </div>
                <div class="Body">
                    <div class="Answer">
                        <label for="Answer1">Reponse 1:</label>
                        <input value="<%=Q.getReponse1() %>" name="Answer1" type="text" id="Answer1">
                        <input name="TrueAnswer" type="radio" value="0" <%= checked[0] %>  >
                    </div>
                    <div class="Answer">
                        <label for="Answer2">Reponse 2:</label>
                        <input value="<%=Q.getReponse2() %>" name="Answer2" type="text" id="Answer2">
                        <input name="TrueAnswer" type="radio" value="1" <%= checked[1] %>>
                    </div>
                    <div class="Answer">
                        <label for="Answer3">Reponse 3:</label>
                        <input value="<%=Q.getReponse3() %>" name="Answer3" type="text" id="Answer3">
                        <input name="TrueAnswer" type="radio" value="2" <%= checked[2] %> >
                    </div>
                    <div class="Answer">
                        <label for="Answer4">Reponse 4:</label>
                        <input value="<%=Q.getReponse4() %>" name="Answer4" type="text" id="Answer4">
                        <input name="TrueAnswer" type="radio" value="3" <%= checked[3] %> >
                    </div>

                </div>
            </div>
        </div>
        <input type="submit" value="Update">
    </form>

</head>
<body>

</body>
</html>
