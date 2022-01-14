package servletController;

import daoImpl.StudentDaoImpl;
import daoImpl.TestDaoImpl;
import daoImpl.TestStudentDaoImpl;
import factory.DaoFactory;
import helpers.MailJava;
import models.Test;
import models.TestStudent;
import models.TestStudentSended;

import javax.mail.MessagingException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Date;
import java.util.*;

@WebServlet(name = "AffecterTestServlet", value = "/AffecterTestServlet")
public class AffecterTestServlet extends HttpServlet {

    private TestDaoImpl daoTest = (TestDaoImpl) DaoFactory.getTestImpl();
    private StudentDaoImpl daoStudent = (StudentDaoImpl) DaoFactory.getStudentImpl();
    private TestStudentDaoImpl testStudentDao = (TestStudentDaoImpl) DaoFactory.getTestStudentImpl();

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

        int idtest = Integer.parseInt(request.getParameter("id_test"));
        // It will generate 6 digit random Number.
        // from 0 to 999999


        String[] studentOBJ= request.getParameterValues( "studentOBJ");

        for(String std : studentOBJ) {
            String[] parts = std.split("-");
            String id_std = parts[0];
            String email = parts[1];
            System.out.print(std);
            System.out.print("\n");
            System.out.print(id_std);
            System.out.print("\n");
            System.out.print(email);
            System.out.print("\n");
            int id_stdint =Integer.parseInt(id_std);
            System.out.print(id_stdint);

            Random rnd = new Random();
            int number = rnd.nextInt(999999);
            // this will convert any number sequence into 6 character.
            String code = String.format("%06d", number);

            try {
                if(MailJava.SendMail(email, code)){
                    // enregistrement test_student :

                    TestStudent obj =new TestStudent(idtest, id_stdint,code);

            int flag =testStudentDao.create(obj);
                    System.out.print("\n");
                    System.out.print(flag);

                    operationResponse.add(new TestStudentSended(idtest,email,true));
                }
                else{

                    operationResponse.add(new TestStudentSended(idtest,email,false));
                }
            } catch (MessagingException e) {
                e.printStackTrace();
            }
        }

        request.setAttribute("operationsResponse",operationResponse);

        loadData(request,response);

    }

}

