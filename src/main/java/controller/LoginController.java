package controller;

import dao.UserDao;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import pojo.User;
@WebServlet("/login")
public class LoginController extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req , HttpServletResponse res){
        User user = new User();
        UserDao userDao = new UserDao();
        RequestDispatcher rd;
        user.setUserEmail(req.getParameter("email"));
        user.setUserPassword(req.getParameter("password"));
        try{
            if(userDao.login(user)){
                HttpSession s = req.getSession();
                s.setAttribute("name",user.getUserName());
                res.sendRedirect("./auth/index.jsp");
            }
            else {
                res.sendRedirect("./auth/Signin.jsp");
            }
        }
        catch (Exception e){
            e.printStackTrace();
        }
    }
}
