package factory;

import dao.DAO;
import daoImpl.QuestionDaoImpl;
import daoImpl.StaffDaoImpl;
import daoImpl.TestDaoImpl;
import daoImpl.TestQstsDaoImpl;
import models.Question;
import models.Staff;
import models.Test;
import models.TestQuestion;

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


}
