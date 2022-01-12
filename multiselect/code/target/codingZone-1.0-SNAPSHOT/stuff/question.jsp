<%@ page import="java.util.Iterator" %>
<%@ page import="java.util.List" %>
<%@ page import="models.Question" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>



    <title>question</title>
    <style><%@include file="/css/question.css"%></style>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://kit.fontawesome.com/bc3854343b.js" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous">
    </script>
</head>

<body>
<%@include file="/stuff/sidebar.jsp"%>


<div class="bodyContent">
    <!-- Button trigger modal -->
    <button type="button" class="btn btn-dark Btn-color" data-bs-toggle="modal" data-bs-target="#exampleModal">
        Ajouter une question
    </button> <br>

    <!-- Modal -->
    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Ajouter une question :</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <form  action="AddQuestionServlet" method="post">

                        <div class="Questions" id="Questions">
                            <div class="Question">
                                <div class="Header">
                                    <label class="form-label" for="question">Question:</label>
                                    <input class="form-control" id="question" name="question" type="text"/>
                                    <label class="form-label" for="duration"> Durée:</label>
                                    <input class="form-control" id="duration" name="duration" type="number" placeholder="question duration"/>
                                    <label class="form-label" for="score">Score :</label>
                                    <input class="form-control" id="score" name="score" type="number" placeholder="question score"/>
                                </div>
                                <div class="Body">
                                    <div class="Answer">
                                        <label class="form-label" for="Answer1">Reponse 1:</label>
                                        <input class="form-control" name="Answer1" type="text" id="Answer1">
                                        <input class="form-check-input"  name="TrueAnswer" type="radio" value="1" >
                                    </div> <br>
                                    <div class="Answer">
                                        <label class="form-label" class="form-label" for="Answer2">Reponse 2:</label>
                                        <input class="form-control" name="Answer2" type="text" id="Answer2">
                                        <input class="form-check-input" name="TrueAnswer" type="radio" value="2" >
                                    </div> <br>
                                    <div class="Answer">
                                        <label class="form-label" for="Answer3">Reponse 3:</label>
                                        <input class="form-control" name="Answer3" type="text" id="Answer3">
                                        <input class="form-check-input" name="TrueAnswer" type="radio" value="3" >
                                    </div> <br>
                                    <div class="Answer">
                                        <label class="form-label" for="Answer4">Reponse 4:</label>
                                        <input class="form-control" name="Answer4" type="text" id="Answer4">
                                        <input class="form-check-input" name="TrueAnswer" type="radio" value="4" >
                                    </div>

                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="submit" class="btn btn-primary" value="Ajouter"> Ajouter</button>
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                        </div>

                    </form>

                </div>

            </div>
        </div>
    </div>




    <table class="table table-bordered mt-2 w-25 tbl" >
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
            List<Question> QS = (List<Question>) request.getAttribute("listQuestion");
            for(Question Q:QS){
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

            <td><a class="btn btn-danger" href="DeleteQuestionServlet?action=delete&id=<%=Q.getId_question()%>">Delete</a></td>
            <td><a class="btn btn-danger" href="DeleteQuestionServlet?action=edite&id=<%=Q.getId_question()%>">Update</a></td>


        </tr>
        <%}%>

        </tbody>
    </table>



    <br/>
    <br>
    <br>
</div>
</body>
</html>
