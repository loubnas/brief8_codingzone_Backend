package config;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Config {

    private static String url = "jdbc:postgresql://localhost:5432/codingzone";
    private static String user = "postgres";
    private static String passwd = "12345";
    private static Connection connect;

    public static Connection getInstance(){
        if(connect == null){
            try {
                Class.forName("org.postgresql.Driver");
                connect = DriverManager.getConnection(url, user, passwd);
            } catch (SQLException e) {
                e.printStackTrace();
            } catch (ClassNotFoundException e) {
                e.printStackTrace();
            }
        }
        return connect;
    }
}
