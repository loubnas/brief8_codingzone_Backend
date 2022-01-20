package servletController;

import dao.DAO;
import daoImpl.TestDaoImpl;
import factory.DaoFactory;
import models.Question;
import models.Staff;
import models.Test;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;
import java.util.Random;

@WebServlet(name = "AffecterTestServlet", value = "/AffecterTestServlet")
public class AffecterTestServlet extends HttpServlet {
    private TestDaoImpl daoTest = DaoFactory.getTestImpl();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        HttpSession session = request.getSession();
//        Staff staff = (Staff) session.getAttribute("staff");
//        System.out.println(staff);
        List<Test> listTest =( List<Test>) daoTest.findAll();
        request.setAttribute("listTest",listTest);
        request.getRequestDispatcher("/stuff/affectetTest.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String email= request.getParameter( "email");
        String test = request.getParameter( "test");
        // It will generate 6 digit random Number.
        // from 0 to 999999

        Random rnd = new Random();
        int number = rnd.nextInt(999999);

        // this will convert any number sequence into 6 character.
        String code = String.format("%06d", number);
        System.out.println("email :"+email+" \n test "+test+"\n code : "+code);

        String message = email;

        request.setAttribute("message",message+" "+code);

//        this.getServletContext().getRequestDispatcher("/stuff/affectetTest.jsp").forward(request,response);

    }
}
