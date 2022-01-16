package servletController;

import daoImpl.TestStudentDaoImpl;
import factory.DaoFactory;
import models.Question;
import models.Test;
import models.TestStudent;
import models.TestStudentAnswer;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.Date;

@WebServlet(name = "ScoreServlet", value = "/ScoreServlet")
public class ScoreServlet extends HttpServlet {


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        int idTestStudent=Integer.parseInt(request.getParameter("testStudent"));
        TestStudent testStudent=DaoFactory.getTestStudentImpl().find(idTestStudent);

        int idTest=Integer.parseInt(request.getParameter("test"));
        int idStudent=Integer.parseInt(request.getParameter("student"));

        double Score=0,TotalScore=0;
        if(testStudent!=null) {

            if (testStudent.getIdStudent() == idStudent && testStudent.getIdTest() == idTest && testStudent.getDateTest() == null) {
                testStudent.setDateTest(new Date(new java.util.Date().getTime()));
                Test test = DaoFactory.getTestImpl().find(idTest);
                for (Question q : test.getQuestions()) {
                    TestStudentAnswer tsa = new TestStudentAnswer();
                    tsa.setId_question(q.getId_question());
                    tsa.setId_test(idTest);
                    tsa.setId_student(idStudent);

                    int answer = -1;
                    if (request.getParameter(String.valueOf(q.getId_question())) != null) {
                        answer = Integer.parseInt(request.getParameter(String.valueOf(q.getId_question())));

                    }
                    tsa.setAnswer(answer);
                    DaoFactory.getTestStudentAnswerImpl().create(tsa);
                    Score += (answer == q.getTrueAnswer()) ? q.getScore() : 0;
                    TotalScore += q.getScore();


                }
                DaoFactory.getTestStudentImpl().update(testStudent);

            } else {
                //erreurs
            }

            request.setAttribute("score", Score);
            request.setAttribute("totalScore", TotalScore);
        }
        else{
            System.out.println("NO ST");
        }

        request.getRequestDispatcher("/Student/Score.jsp").forward(request,response);

    }
}
