package models;

import java.sql.Date;

public class TestStudent {
    private int idTestStudent;
    private int idTest;
    private int idStudent;
    private Date dateTest;
    private String code;
    private Date datelimite;

    public TestStudent(int idTestStudent, int idTest, int idStudent, Date dateTest, String code, Date datelimite) {
        this.idTestStudent = idTestStudent;
        this.idTest = idTest;
        this.idStudent = idStudent;
        this.dateTest = dateTest;
        this.code = code;
        this.datelimite = datelimite;
    }

    public  TestStudent(){

    }


    public TestStudent(int idtest, int id_stdint, Date datelimite, String code) {

        this.idTest= idtest;
        this.idStudent=id_stdint;
        this.datelimite=datelimite;
        this.code = code;
    }

    public int getIdTestStudent() {
        return idTestStudent;
    }

    public void setIdTestStudent(int idTestStudent) {
        this.idTestStudent = idTestStudent;
    }

    public int getIdTest() {
        return idTest;
    }

    public void setIdTest(int idTest) {
        this.idTest = idTest;
    }

    public int getIdStudent() {
        return idStudent;
    }

    public void setIdStudent(int idStudent) {
        this.idStudent = idStudent;
    }

    public Date getDateTest() {
        return dateTest;
    }

    public void setDateTest(Date dateTest) {
        this.dateTest = dateTest;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public Date getDatelimite() {
        return datelimite;
    }

    public void setDatelimite(Date datelimite) {
        this.datelimite = datelimite;
    }
}
