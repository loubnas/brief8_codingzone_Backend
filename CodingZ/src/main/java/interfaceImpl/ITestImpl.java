package interfaceImpl;

import interfaces.IDAO;
import model.Test;

import java.sql.PreparedStatement;
import java.sql.SQLException;

public class ITestImpl  implements IDAO<Test>  {

    @Override
    public Test create(Test test) {
            try {
                PreparedStatement testStatement = this.connect.prepareStatement(
                        "INSERT INTO test  (name_test,description,id_staff ) VALUES(?,?,?,?,?)");

                testStatement.setString(1, test.getName());
                testStatement.setString(2, test.getDescription());
                testStatement.setLong(3, test.getId_staff());


                testStatement.executeUpdate();


            } catch (SQLException e) {
                e.printStackTrace();
            }
            return test;
        }

    @Override
    public Test update(Test obj) {
        return null;
    }

    @Override
    public void delete(Test obj) {

    }

    @Override
    public boolean login(Test obj) {
        return false;
    }

    @Override
    public Test find(long id) {
        return null;
    }

}
