package interfaceImpl;


import interfaces.IDAO;
import model.Stuff;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class IStuffImpl implements IDAO<Stuff> {


    @Override
    public boolean login(Stuff stuff) {

        try {

            PreparedStatement preparedStatement = connect.prepareStatement("SELECT * FROM  staff WHERE email = ? and password = ?");
            preparedStatement.setString(1, stuff.getEmail());
            preparedStatement.setString(2, stuff.getPassword());


            ResultSet resultSet = preparedStatement.executeQuery();
            if (resultSet.next()) {
                return true;
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }



    @Override
    public Stuff update(Stuff obj) {
        return null;
    }

    @Override
    public void delete(Stuff obj) {

    }

    @Override
    public Stuff find(long id) {
        return null;
    }

    @Override
    public Stuff create(Stuff obj) {
        return null;
    }


}















