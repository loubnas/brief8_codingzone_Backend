package servletController;

import dao.DAO;
import factory.DaoFactory;
import models.Question;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "DeleteQuestionServlet", value = "/DeleteQuestionServlet")
public class DeleteQuestionServlet extends HttpServlet {
    private DAO<Question> daoQuestion= DaoFactory.getQuestionImpl();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    /*   String action = request.getServletPath();
        System.out.print(action);

        if (action=="/delete"){*/
            int idQuestion= Integer.parseInt( request.getParameter( "id"));
            System.out.print(idQuestion);
            int flag = daoQuestion.delete(idQuestion);
            response.sendRedirect("FindQuestionServlet");
//       }





    }


}
