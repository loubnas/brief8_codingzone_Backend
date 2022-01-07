package servletController.stuff;

import dao.DAOFactory;
import interfaces.IDAO;
import model.Stuff;
import model.Test;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "stuffLoginServlet", value = "/stuff/stuffLoginServlet")

public class stuffLoginServlet extends HttpServlet {

    IDAO<Stuff> daostuff = DAOFactory.getIStuffImpl();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String email = request.getParameter("email");
        String password = request.getParameter("password");

        Stuff staff = new Stuff(email, password);
        boolean flag = daostuff.login(staff);

        System.out.print(flag);
        if (flag) {
            String message = "welcome admin";
            request.setAttribute("message", message);

            this.getServletContext().getRequestDispatcher("/loginStuff.jsp").forward(request, response);
        } else {
            String message = "email or  password incorrecte";
            request.setAttribute("message", message);

            this.getServletContext().getRequestDispatcher("/loginStuff.jsp").forward(request, response);
        }

    }
}
