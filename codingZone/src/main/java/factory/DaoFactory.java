package factory;

import dao.DAO;
import daoImpl.QuestionDaoImpl;
import daoImpl.StaffDaoImpl;
import models.Question;
import models.Staff;

public class DaoFactory {


    public static DAO<Staff> getStaffImpl(){

        return new StaffDaoImpl();
    }
    public static DAO<Question> getQuestionImpl(){

        return new QuestionDaoImpl();
    }

}
