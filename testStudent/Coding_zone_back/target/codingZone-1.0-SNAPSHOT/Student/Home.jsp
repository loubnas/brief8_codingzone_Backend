<%@ page import="models.Test" %>
<%@ page import="models.Question" %>
<%@ page import="models.Student" %>
<%@ page import="models.TestStudent" %><%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 14/01/2022
  Time: 16:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    Test test=(Test)request.getAttribute("test");
    Student student=(Student) request.getAttribute("student");
    TestStudent testStudent=(TestStudent) request.getAttribute("testStudent");

%>
<html>
<head>
    <title>Test :</title>
    <script>
        var nbrQuestion=<%=test.getQuestions().size()%>;
        var enCours=1;
        var enCoursInterval=<%=test.getQuestions().get(0).getDuration()%>;
    </script>
    <style>
        .hide{display: none}
    </style>
</head>
<body>

<h3><%=test.getName()%></h3>
<h3><%=(student.getLastNameStudent()+" "+student.getFistNameStudent())%></h3>
<p><%=test.getDescription()%></p>

<form action="ScoreServlet" method="post" id="QForm">
    <input type="hidden" name="test" value="<%=testStudent.getIdTest()%>"/>
    <input type="hidden" name="student" value="<%=testStudent.getIdStudent()%>"/>
    <input type="hidden" name="testStudent" value="<%=testStudent.getIdTestStudent()%>"/>


<% int i=1;for(Question q:test.getQuestions()){%>
    <div id="q-<%=i%>" class="<%=i!=1?"hide":""%>" interval="<%=q.getDuration()%>">

<p>----------------------------------------</p>
   <p id="q-<%=i%>-interval"> <%=q.getDuration()%> secondes</p>

<p><%=q.getContent()%> --  <%=q.getScore()%> point(s)</p>
<table>
    <tr>
        <td><input type="radio" name="<%=q.getId_question()%>" value="1"/> </td>
        <td><%=q.getReponse1()%></td>
    </tr>
    <tr>
        <td><input type="radio" name="<%=q.getId_question()%>" value="2"/> </td>
        <td><%=q.getReponse2()%></td>
    </tr>
    <tr>
        <td><input type="radio" name="<%=q.getId_question()%>" value="3"/> </td>
        <td><%=q.getReponse3()%></td>
    </tr>
    <tr>
        <td><input type="radio" name="<%=q.getId_question()%>" value="4"/> </td>
        <td><%=q.getReponse4()%></td>
    </tr>
</table>
    </div>
<% i++;
}%>
    <input type="button" id="next" />
</form>

<script>

    if(enCours<nbrQuestion){
        document.getElementById("next").value="Question suivante";
    }
    else{
        document.getElementById("next").value="Envoyer";
    }

    //passage des questions :
    function next(){
        if(enCours<nbrQuestion){
            document.getElementById("q-"+enCours).classList.add('hide');
            enCours++;
            document.getElementById("q-"+enCours).classList.remove('hide');
            enCoursInterval =parseInt(document.getElementById("q-"+enCours).getAttribute("interval"));
            if(enCours==nbrQuestion){

                    document.getElementById("next").value="Envoyer";

            }
        }
        else{
            document.getElementById("QForm").submit();
        }
    }

    document.getElementById("next").onclick=()=>{next();}

    //timer :
    var interval=setInterval(()=>{
        if(enCoursInterval<=0){
            next();
        }else{
            enCoursInterval--;
        }
        document.getElementById("q-"+enCours+"-interval").innerHTML=enCoursInterval+" secondes";

    },1000)
</script>

<script>
    function disableBack() { window.history.forward(); }
    setTimeout("disableBack()", 0);
    window.onunload = function () { null };
</script>

</body>
</html>
