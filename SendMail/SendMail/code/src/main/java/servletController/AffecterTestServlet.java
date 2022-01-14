package servletController;

import daoImpl.TestDaoImpl;
import factory.DaoFactory;
import helpers.MailJava;
import models.Test;
import models.TestStudentSended;

import javax.mail.MessagingException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.*;

@WebServlet(name = "AffecterTestServlet", value = "/AffecterTestServlet")
public class AffecterTestServlet extends HttpServlet {
    private TestDaoImpl daoTest = (TestDaoImpl) DaoFactory.getTestImpl();

    public void loadData(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        List<Test> listTest = daoTest.findAll();
        request.setAttribute("listTest", listTest);
        request.getRequestDispatcher("/stuff/affecterTest.jsp").forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

       loadData(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        List<TestStudentSended> operationResponse=new ArrayList<TestStudentSended>() ;

        String[] emails = request.getParameterValues("email");
        int test = Integer.parseInt(request.getParameter("id_test"));
        // It will generate 6 digit random Number.
        // from 0 to 999999


        for(String mail : emails) {
            Random rnd = new Random();
            int number = rnd.nextInt(999999);

            // this will convert any number sequence into 6 character.
            String code = String.format("%06d", number);
            System.out.println("email :" + mail + " \n test " + test + "\n code : " + code);


            try {
                if(MailJava.SendMail(mail, code)){
                    // enregistrement test_student

                    operationResponse.add(new TestStudentSended(test,mail,true));
                }
                else{

                    operationResponse.add(new TestStudentSended(test,mail,false));
                }
            } catch (MessagingException e) {
                e.printStackTrace();
            }
        }

        request.setAttribute("operationsResponse",operationResponse);

        loadData(request,response);

    }

}

