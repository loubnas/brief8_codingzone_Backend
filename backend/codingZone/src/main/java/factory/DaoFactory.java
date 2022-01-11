package factory;

import dao.DAO;
import daoImpl.QuestionDaoImpl;
import daoImpl.StaffDaoImpl;
import daoImpl.TestDaoImpl;
import models.Question;
import models.Staff;
import models.Test;

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

}
