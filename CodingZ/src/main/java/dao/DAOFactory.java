package dao;


import interfaceImpl.IQuestionImpl;
import interfaceImpl.IStuffImpl;
import interfaceImpl.ITestImpl;
import interfaceImpl.ITestStudentImpl;
import interfaces.IDAO;
import model.Question;
import model.Stuff;
import model.Test;

public class DAOFactory {

    public static IDAO<Test> getITestImpl() { return new ITestImpl();}
    public static IDAO<Question> getIQuestionImpl() { return new IQuestionImpl();}
    public static IDAO<Stuff> getIStuffImpl() { return new IStuffImpl();}






}

