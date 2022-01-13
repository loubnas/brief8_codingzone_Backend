package helpers;



import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.util.Properties;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;


public class MailJava {

    public static void SendMail(String recipient,String code) throws MessagingException  {

        System.out.println("methode SendMail");

        Properties properties = new Properties();

        // Setup mail server
        properties.put("mail.smtp.host", "smtp.gmail.com");
        properties.put("mail.smtp.port", "587");
        properties.put("mail.smtp.auth", "true");
        properties.put("mail.smtp.starttls.enable", "true");

        String myEmail = "brief5mutuellecentralisee@gmail.com";
        String mypassword = "hzebuugjolehzcoh";

        //Get the Session object. and pass username and password
        Session session = Session.getInstance(properties,new Authenticator() {

            @Override
            protected PasswordAuthentication getPasswordAuthentication(){
                return  new PasswordAuthentication(myEmail,mypassword);
            }

        });
        try {
            //Create a default MimeMessage object.
                MimeMessage message = new MimeMessage(session);

            //Set From header field of the header.
            message.setFrom(new InternetAddress(myEmail));

            //Set To header field of the header.
            message.addRecipient(Message.RecipientType.TO, new InternetAddress(recipient));

            //Set Subject header field
            message.setSubject("Convocation Test Youcode");

            //Now set the actual message
            message.setText("Bonjour , vous etes convoquer à passer le test afin de pouvoir nous rejoindre à Youcode , merci d'entrer le code suivant afin d'acceder à l'application ,Votre Code est :"+code);


                System.out.println("sending...");

                Transport.send(message);
        } catch (Exception e) {
            System.out.println(e.getMessage());

        }


    }













}