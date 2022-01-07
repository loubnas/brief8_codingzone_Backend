package model;

import java.util.Date;

public class TestStudent {
    private Long id;
    private Date date;
    private String code;
    private Long id_test;
    private Long id_student;


    public TestStudent(Long id, Date date, String code,Long id_test,Long id_student) {
        this.id = id;
        this.date = date;
        this.code = code;
        this.id_test=id_test;
        this.id_student=id_student;
    }

    public TestStudent(){}

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public Long getId_test() {
        return id_test;
    }

    public void setId_test(Long id_test) {
        this.id_test = id_test;
    }

    public Long getId_student() {
        return id_student;
    }

    public void setId_student(Long id_student) {
        this.id_student = id_student;
    }
}
