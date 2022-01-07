<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 06/01/2022
  Time: 23:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Ajouter un nouveau test</title>
    <script>
        function addQuestion(){
            var questionsCount=parseInt(document.getElementById("QuestionsCount").value);
            questionsCount++;
            var questionHtml="<div class=\"Question\">\n" +
                "                <div class=\"Header\">\n" +
                "                    <label>Question</label>\n" +
                "                    <input name=\"Question-"+questionsCount+"\" type=\"text\"/>\n" +
                "                </div>\n" +
                "                <div class=\"Body\">\n" +
                "                    <div class=\"Answer\">\n" +
                "                        <input name=\"AnswerText-"+questionsCount+"-1\" type=\"text\">\n" +
                "                        <input name=\"AnswerState-"+questionsCount+"\" type=\"radio\" value=\"1\" >\n" +
                "                    </div>\n" +
                "                    <div class=\"Answer\">\n" +
                "                        <input name=\"AnswerText-"+questionsCount+"-2\" type=\"text\">\n" +
                "                        <input name=\"AnswerState-"+questionsCount+"\" type=\"radio\" value=\"2\" >\n" +
                "                    </div>\n" +
                "                    <div class=\"Answer\">\n" +
                "                        <input name=\"AnswerText-"+questionsCount+"-3\" type=\"text\">\n" +
                "                        <input name=\"AnswerState-"+questionsCount+"\" type=\"radio\" value=\"3\" >\n" +
                "                    </div>\n" +
                "                    <div class=\"Answer\">\n" +
                "                        <input name=\"AnswerText-"+questionsCount+"-4\" type=\"text\">\n" +
                "                        <input name=\"AnswerState-"+questionsCount+"\" type=\"radio\" value=\"4\" >\n" +
                "                    </div>\n" +
                "                </div>\n" +
                "            </div>";

            document.getElementById("Questions").innerHTML+=questionHtml;
            document.getElementById("QuestionsCount").value=questionsCount;

        }
    </script>
</head>
<body>
    <form method="post">
        <label>nom de test</label>
        <input name="TestName" type="text"/>
        <label>Description</label>
        <input name="TestContent" type="text"/>

        <input type="hidden" name="QuestionsCount" id="QuestionsCount" value="1">
        <div class="Questions" id="Questions">
            <div class="Question">
                <div class="Header">
                    <label>Question</label>
                    <input name="Question-1" type="text"/>
                </div>
                <div class="Body">
                    <div class="Answer">
                        <input name="AnswerText-1-1" type="text">
                        <input name="AnswerState-1" type="radio" value="1" >
                    </div>
                    <div class="Answer">
                        <input name="AnswerText-1-2" type="text">
                        <input name="AnswerState-1" type="radio" value="2" >
                    </div>
                    <div class="Answer">
                        <input name="AnswerText-1-3" type="text">
                        <input name="AnswerState-1" type="radio" value="3" >
                    </div>
                    <div class="Answer">
                        <input name="AnswerText-1-4" type="text">
                        <input name="AnswerState-1" type="radio" value="4" >
                    </div>
                </div>
            </div>
        </div>
        <input type="submit" value="Ajouter">
    </form>

    <input type="button" value="Ajouter question" onclick="addQuestion()">
</body>
</html>
