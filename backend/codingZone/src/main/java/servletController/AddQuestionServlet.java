package servletController;


import dao.DAO;
import factory.DaoFactory;
import models.Question;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;


@WebServlet(name = "AddQuestionServlet", value = "/AddQuestionServlet")
public class AddQuestionServlet extends HttpServlet {
    private DAO<Question> daoQuestion= DaoFactory.getQuestionImpl();



    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String questionContent = request.getParameter("question");
        String Answer1=  request.getParameter( "Answer1");
        String Answer2=  request.getParameter( "Answer2");
        String Answer3=  request.getParameter( "Answer3");
        String Answer4=  request.getParameter( "Answer4");
        int TrueAnswer=  Integer.parseInt(request.getParameter( "TrueAnswer"));
        int duration=  Integer.parseInt(request.getParameter( "duration"));
        int score=  Integer.parseInt(request.getParameter( "score"));




        Question question = new Question(questionContent,Answer1,Answer2,Answer3,Answer4,TrueAnswer,duration,score);
        int flag = daoQuestion.create(question);
        response.sendRedirect("FindQuestionServlet");









    }
}
