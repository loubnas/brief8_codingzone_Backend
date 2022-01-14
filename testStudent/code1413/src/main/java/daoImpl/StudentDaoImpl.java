package daoImpl;

import dao.DAO;

import models.Student;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class StudentDaoImpl extends DAO<Student> {
    @Override
    public Student login(Student obj) {
        return null;
    }

    @Override
    public int create(Student obj) {
        return 0;
    }

    @Override
    public List<Student> findAll() {
        try {
            String query = "select * from student";

            PreparedStatement preparedStatement =this.connection.prepareStatement(query);
            ResultSet resultSet = preparedStatement.executeQuery();

            List<Student> listStudent = new ArrayList<Student>();
            while (resultSet.next()) {
                //System.out.print( resultSet.getString("content"));
                listStudent.add(new Student(
                        resultSet.getInt("id_student"),
                        resultSet.getString("firstname_student"),
                        resultSet.getString("lastname_student"),
                        resultSet.getString("email")));
            }
            return listStudent;

        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
    }

    @Override
    public Student find(int id) {
        return null;
    }

    @Override
    public int update(Student obj) {
        return 0;
    }

    @Override
    public int delete(int id) {
        return 0;
    }
}
