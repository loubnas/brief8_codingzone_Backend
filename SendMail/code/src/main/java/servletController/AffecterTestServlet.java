package servletController;

import dao.DAO;
import daoImpl.TestDaoImpl;
import factory.DaoFactory;
import helpers.MailJava;
import models.Question;
import models.Test;

import javax.mail.MessagingException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import java.util.Random;

@WebServlet(name = "AffecterTestServlet", value = "/AffecterTestServlet")
public class AffecterTestServlet extends HttpServlet {
    private TestDaoImpl daoTest = (TestDaoImpl) DaoFactory.getTestImpl();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        List<Test> listTest = daoTest.findAll();
        request.setAttribute("listTest",listTest);
        request.getRequestDispatcher("/stuff/affecterTest.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String email= request.getParameter( "email");
        String test = request.getParameter( "id_test");
        // It will generate 6 digit random Number.
        // from 0 to 999999

        Random rnd = new Random();
        int number = rnd.nextInt(999999);

        // this will convert any number sequence into 6 character.
        String code = String.format("%06d", number);
        System.out.println("email :"+email+" \n test "+test+"\n code : "+code);




        try {
            MailJava.SendMail(email,code);
        } catch (MessagingException e) {
            e.printStackTrace();
        }



        this.getServletContext().getRequestDispatcher("/stuff/dashboard.jsp").forward(request,response);

    }
}
