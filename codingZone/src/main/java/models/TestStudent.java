package models;




import java.sql.Date;

public class TestStudent {
    private int idTestStudent;
    private int idTest;
    private int idStudent;

    public TestStudent(int idTest, int idStudent, String code) {
        this.idTest = idTest;
        this.idStudent = idStudent;
        this.code = code;
    }

    private Date dateTest;
    private String code;




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







}
