package interfaceImpl;

import interfaces.IDAO;
import model.Question;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class IQuestionImpl implements IDAO<Question> {

    @Override
    public Question create(Question question) {
        try {
            PreparedStatement preparedStatement = this.connect.prepareStatement("INSERT INTO question (question) VALUES (?);");
            preparedStatement.setString(1, question.getQuestion());
            preparedStatement.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return question;
    }


    @Override
    public Question find(long id) {

        Question question= null;
        try {
            ResultSet result = this .connect.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_UPDATABLE).executeQuery(
                    "SELECT * FROM question  WHERE id =?");
            if(result.first())
                question = new Question(result.getString("question"));


        } catch (SQLException e) {
            e.printStackTrace();
        }
        return question;
    }



    @Override
    public Question update(Question question) {
        try {

            PreparedStatement questionStatement = this.connect.prepareStatement(
                    "UPDATE question set question = ?  WHERE id= ?");

            questionStatement.setString(1, question.getQuestion());


            questionStatement.executeUpdate();

            question = this.find(question.getId());
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return question;
    }


    @Override
    public void delete(Question question) {
        try {
            this.connect.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_UPDATABLE).executeUpdate(
                    "DELETE FROM question WHERE id_question = "+question.getId());


        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

    @Override
    public boolean login(Question obj) {
        return false;
    }
}
