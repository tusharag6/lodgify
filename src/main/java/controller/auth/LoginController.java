package controller.auth;

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
                User userMod = userDao.getUserByEmail(user);
                HttpSession s = req.getSession();
                s.setAttribute("user",userMod);
                s.setAttribute("userName",userMod.getUserName());
                if (isAdmin(user)) {
                    res.sendRedirect(req.getContextPath()+"/admin/home.jsp");
                } else {
                    res.sendRedirect(req.getContextPath()+"/home/index.jsp");
                }
            }
            else {
                res.sendRedirect(req.getContextPath()+"/auth/Signin.jsp");
            }
        }
        catch (Exception e){
            e.printStackTrace();
        }
    }
    private boolean isAdmin(User user) {
        return "codedawgs@gmail.com".equals(user.getUserEmail()) && "codedawgs".equals(user.getUserPassword());
    }
}
