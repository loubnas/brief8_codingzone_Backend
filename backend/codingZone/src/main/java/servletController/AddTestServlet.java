package servletController;

import config.Config;
import dao.DAO;
import factory.DaoFactory;
import models.Question;
import models.Test;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.Connection;

@WebServlet(name = "AddTestServlet", value = "/AddTestServlet")
public class AddTestServlet extends HttpServlet {
    private DAO<Test> daoTest= DaoFactory.getTestImpl();
    private Connection connection = Config.getInstance();


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String Nomtest = request.getParameter("Nomtest");
        String descripton=  request.getParameter( "description");
        int idQuestion= Integer.parseInt( request.getParameter( "idQuestion"));
        int idStaff= Integer.parseInt( request.getParameter( "idStaff"));


        Test test = new Test(Nomtest,descripton,idQuestion,idStaff);
        int flag = daoTest.create(test);
        response.sendRedirect("FindTestServlet");


    }
}
