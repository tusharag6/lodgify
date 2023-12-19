package controller;

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
@WebServlet("/save-controller")
public class SaveController extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        User user = new User();
        UserDao userDao = new UserDao();
        user.setUserName(req.getParameter("name"));
        user.setUserEmail(req.getParameter("email"));
        user.setUserPassword(req.getParameter("password"));
        try {
            userDao.register(user);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        RequestDispatcher rd = req.getRequestDispatcher("index.jsp");
        rd.forward(req,resp);
    }
}
