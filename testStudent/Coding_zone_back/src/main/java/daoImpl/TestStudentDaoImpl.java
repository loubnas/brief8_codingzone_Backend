package daoImpl;

import dao.DAO;
import models.Question;
import models.TestStudent;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class TestStudentDaoImpl extends DAO<TestStudent> {

    @Override
    public int create(TestStudent obj) {
        try {
            String query = "INSERT INTO test_student(id_test, id_student, date , code, date_limite) VALUES (?, ?,?,?,? )";

            PreparedStatement preparedStatement = this.connection.prepareStatement(query);
            preparedStatement.setInt(1, obj.getIdTest());
            preparedStatement.setInt(2, obj.getIdStudent());
            preparedStatement.setDate(3, obj.getDateTest());
            preparedStatement.setString(4, obj.getCode());
            preparedStatement.setDate(5, obj.getDatelimite());

            int resultSet = preparedStatement.executeUpdate();
            return resultSet;
        } catch (SQLException e) {
            e.printStackTrace();
            return 0;
        }
    }

    @Override
    public List<TestStudent> findAll() {
        try {
            String query = "select * from test_student";

            PreparedStatement preparedStatement =this.connection.prepareStatement(query);
            ResultSet resultSet = preparedStatement.executeQuery();

            List<TestStudent> ts = new ArrayList<TestStudent>();
            while (resultSet.next()) {
                ts.add(new TestStudent(
                        resultSet.getInt("id_testStudent"),
                        resultSet.getInt("id_test"),
                        resultSet.getInt("id_student"),
                        resultSet.getDate("date"),
                        resultSet.getString("code"),
                        resultSet.getDate("date_limite")));

            }
            return ts;

        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
    }

    @Override
    public TestStudent login(TestStudent obj) {
        return null;
    }

    @Override
    public TestStudent find(int id) {
        try {


            PreparedStatement preparedStatement = this.connection.prepareStatement("SELECT * FROM test_student where \"id_testStudent\"=?");
            preparedStatement.setInt(1, id);
            ResultSet resultSet = preparedStatement.executeQuery();

            TestStudent ts = null;
            while (resultSet.next()) {

                ts = new TestStudent();
                ts.setIdTestStudent(resultSet.getInt("id_testStudent"));
                ts.setIdStudent(resultSet.getInt("id_student"));
                ts.setIdTest(resultSet.getInt("id_test"));
                ts.setCode(resultSet.getString("code"));
                ts.setDateTest(resultSet.getDate("date"));
                ts.setDatelimite(resultSet.getDate("date_limite"));
                return ts;

            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public int update(TestStudent obj) {
        try {
            PreparedStatement preparedStatement =this.connection.prepareStatement("UPDATE test_student set id_test =?,id_student=?,date =?,code=?,date_limite=? where \"id_testStudent\"=?");
            preparedStatement.setInt(1,obj.getIdTest());
            preparedStatement.setInt(2,obj.getIdStudent());
            preparedStatement.setDate(3,obj.getDateTest());
            preparedStatement.setString(4,obj.getCode());
            preparedStatement.setDate(5,obj.getDatelimite());
            preparedStatement.setInt(6,obj.getIdTestStudent());



            int resultSet = preparedStatement.executeUpdate();

            return resultSet;
        } catch (SQLException e) {
            e.printStackTrace();
            return 0;
        }

    }

    @Override
    public int delete(int id) {
        return 0;
    }

    public TestStudent findByCode(String code) {
        try {


            PreparedStatement preparedStatement = this.connection.prepareStatement("SELECT * FROM test_student where code=? and date is null and date_limite> now()");
            preparedStatement.setString(1, code);
            ResultSet resultSet = preparedStatement.executeQuery();

            TestStudent ts = null;
            while (resultSet.next()) {

                ts = new TestStudent();
                ts.setIdTestStudent(resultSet.getInt("id_testStudent"));
                ts.setIdStudent(resultSet.getInt("id_student"));
                ts.setIdTest(resultSet.getInt("id_test"));
                ts.setCode(code);
                ts.setDatelimite(resultSet.getDate("date_limite"));
                return ts;

            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
}
