package daoImpl;

import dao.DAO;
import models.Question;

import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

public class QuestionDaoImpl extends DAO<Question> {




    @Override
    public int create(Question question)  {


       /* int uniqueID = UUID.randomUUID().toString();*/

        try {
            PreparedStatement preparedStatement =this.connection.prepareStatement("INSERT INTO question (id_question, content,reponse1,reponse2,reponse3,reponse4,duration,score,trueanswer) VALUES (?,?,?,?,?,?,?,?,?);");
            preparedStatement.setInt(1, question.getId_question());
            preparedStatement.setString(2, question.getContent());
            preparedStatement.setString(3,question.getReponse1());
            preparedStatement.setString(4,question.getReponse2());
            preparedStatement.setString(5,question.getReponse3());
            preparedStatement.setString(6,question.getReponse4());
            preparedStatement.setInt(7, question.getDuration());
            preparedStatement.setInt(8, question.getScore());
            preparedStatement.setInt(9, question.getTrueAnswer());
    ;






            int resultSet = preparedStatement.executeUpdate();

            return resultSet;
        } catch (SQLException e) {
            // TODO Auto-generated catch block

            e.printStackTrace();
            return 0;
        }




    }

    @Override
    public List<Question> find() {

        try {
            String query = "select * from question";

            PreparedStatement preparedStatement =this.connection.prepareStatement(query);
            ResultSet resultSet = preparedStatement.executeQuery();

            List<Question> listQuestion = new ArrayList<Question>();
            while (resultSet.next()) {
                System.out.print( resultSet.getString("content"));
                listQuestion.add(new Question(
                        resultSet.getInt("id_question"),
                        resultSet.getString("content"),

                        resultSet.getString("reponse1"),
                        resultSet.getString("reponse2"),
                        resultSet.getString("reponse3"),
                        resultSet.getString("reponse4"),
                        resultSet.getInt("trueanswer"),
                        resultSet.getInt("duration"),
                        resultSet.getInt("score")));
            }
            System.out.print(listQuestion);
            return listQuestion;

        } catch (SQLException e) {
     e.printStackTrace();
            return null;
        }

    }

    @Override
    public int delete(int id) {

        try {
            PreparedStatement preparedStatement =this.connection.prepareStatement("DELETE from question where id_question=?");
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
    public Question login(Question obj) {
        return null;
    }
}
