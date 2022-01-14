package factory;

import dao.DAO;
import daoImpl.QuestionDaoImpl;
import daoImpl.StaffDaoImpl;
import daoImpl.TestDaoImpl;
import daoImpl.TestQstsDaoImpl;
import daoImpl.StudentDaoImpl;
import models.*;

public class DaoFactory {


    public static DAO<Staff> getStaffImpl(){

        return new StaffDaoImpl();
    }
    public static DAO<Question> getQuestionImpl(){

        return new QuestionDaoImpl();
    }
    public static DAO<Test> getTestImpl(){

        return new TestDaoImpl();
    }

    public static DAO<TestQuestion> getTestQstsImpl(){
        return  new TestQstsDaoImpl();
    }

    public static DAO<Student> getStudentImpl(){
        return  new StudentDaoImpl();
    }




}
