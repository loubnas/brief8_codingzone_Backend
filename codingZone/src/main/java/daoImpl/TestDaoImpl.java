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
    public int create(Test test) {

        try {
            PreparedStatement preparedStatement =this.connection.prepareStatement("INSERT INTO test ( name,description,id_staff) VALUES (?,?,?);");
            preparedStatement.setString(1,test.getName());
            preparedStatement.setString(2,test.getDescription());
            preparedStatement.setLong(3,test.getId_staff());

            int resultSet = preparedStatement.executeUpdate();

            return resultSet;
        } catch (SQLException e) {
            e.printStackTrace();
            return 0;
        }
    }

    @Override
    public List<Test> findAll() {
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
    public Test find(int id) {
        return null;
    }

    @Override
    public int update(Test obj) {
        return 0;
    }

    @Override
    public int delete(int id) {
        try {
            PreparedStatement preparedStatement =this.connection.prepareStatement("DELETE from test where id_test=?");
            preparedStatement.setInt(1, id);


            int flag = preparedStatement.executeUpdate();

            return flag;
        } catch (SQLException e) {
            // TODO Auto-generated catch block

            e.printStackTrace();
            return 0;
        }


    }


    @Override
    public Test login(Test obj) {
        return null;
    }
}
