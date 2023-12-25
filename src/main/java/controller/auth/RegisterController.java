package controller.auth;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.SQLException;

import pojo.User;
import dao.UserDao;
@WebServlet("/register")
public class RegisterController extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        User user = new User();
        UserDao userDao = new UserDao();
        RequestDispatcher rd;
        user.setUserName(req.getParameter("name"));
        user.setUserEmail(req.getParameter("email"));
        user.setUserPassword(req.getParameter("password"));
        try {
            if(userDao.checkEmail(user)) {
                userDao.register(user);
                rd = req.getRequestDispatcher("./auth/Signin.jsp");
                rd.forward(req,resp);
            }
            else {
                rd = req.getRequestDispatcher("./auth/Signup.jsp");
                rd.forward(req,resp);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
