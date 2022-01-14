package daoImpl;

import dao.DAO;
import models.TestStudent;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

public class TestStudentDaoImpl extends DAO<TestStudent> {
    @Override
    public TestStudent login(TestStudent obj) {
        return null;
    }

    @Override
    public int create(TestStudent obj) {
        try {
            String query = "INSERT INTO test_student(id_test, id_student,  code) VALUES (?, ?,  ? )";

            PreparedStatement preparedStatement = this.connection.prepareStatement(query);
            preparedStatement.setLong(1,obj.getIdTest());
            preparedStatement.setLong(2,obj.getIdStudent());

            preparedStatement.setString(3,obj.getCode());

            int resultSet = preparedStatement.executeUpdate();
            return resultSet;
        } catch (SQLException e) {
            e.printStackTrace();
            return 0;
        }
    }

    @Override
    public List<TestStudent> findAll() {
        return null;
    }

    @Override
    public TestStudent find(int id) {
        return null;
    }

    @Override
    public int update(TestStudent obj) {
        return 0;
    }

    @Override
    public int delete(int id) {
        return 0;
    }
}
