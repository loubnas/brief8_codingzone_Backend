package servletController.stuff;

import dao.DAOFactory;
import interfaces.IDAO;
import model.Question;
import model.Test;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "addTestServlet", value = "/stuff/addQuestionServlet")

public class addQuestionServlet extends HttpServlet {

    IDAO<Question> daoquestion= DAOFactory.getIQuestionImpl();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        this.getServletContext().getRequestDispatcher("/stuff/addQuestionServlet.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {



        int QuestionsCount=Integer.parseInt(request.getParameter("QuestionsCount"));


        for(int i=1;i<=QuestionsCount;i++){
            String Question=request.getParameter("Question-"+i);
            int Answer=Integer.parseInt(request.getParameter("AnswerState-"+i));

            System.out.println("--"+Question);

            for(int j=1;j<=4;j++){
                String AnswerText=request.getParameter("AnswerText-"+i+"-"+j);

                System.out.println("--> "+AnswerText+ "("+(Answer==j)+")");
            }
            // Ajout de la question

            Question q=new Question();
            q.setQuestion(Question);
            Question res = daoquestion.create(q);


        }

        this.getServletContext().getRequestDispatcher("/stuff/addQuestionServlet.jsp").forward(request, response);

    }



}
