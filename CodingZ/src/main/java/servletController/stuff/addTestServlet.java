package servletController.stuff;



import dao.DAOFactory;
import interfaceImpl.ITestImpl;
import interfaces.IDAO;
import model.Question;
import model.Test;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "addTestServlet", value = "/stuff/addTestServlet")
public class addTestServlet extends HttpServlet {

    IDAO<Test> daotest= DAOFactory.getITestImpl();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        this.getServletContext().getRequestDispatcher("/stuff/addTest.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String TestName=request.getParameter("TestName");
        String  TestContent=request.getParameter(" TestContent");


        //Ajouter de test

        Test t=new Test();
        t.setName(TestName);
        t.setDescription(TestContent);
        t.setId_staff(12L);
        Test result = daotest.create(t);


        System.out.println(TestName);
        System.out.println(TestContent);

        this.getServletContext().getRequestDispatcher("/stuff/addTest.jsp").forward(request, response);

    }



}
