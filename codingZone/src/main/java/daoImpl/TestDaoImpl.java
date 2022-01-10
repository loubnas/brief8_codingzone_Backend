package daoImpl;

import dao.DAO;
import models.Question;
import models.Test;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class TestDaoImpl extends DAO<Test> {
    @Override
    public Test login(Test obj) {
        return null;
    }

    @Override
    public int create(Test obj) {
        return 0;
    }

    @Override
    public List<Test> find() {
        try {
            String query = "select * from test";

            PreparedStatement preparedStatement =this.connection.prepareStatement(query);
            ResultSet resultSet = preparedStatement.executeQuery();

            List<Test> listTest = new ArrayList<>();
            while (resultSet.next()) {

                listTest.add(new Test(
                        resultSet.getInt("id_test"),
                        resultSet.getString("name"),

                        resultSet.getString("description"),

                        resultSet.getInt("id_staff")
                ));
            }

            return listTest;

        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
    }

    @Override
    public int delete(int id) {
        return 0;
    }
}
