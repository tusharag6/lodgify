package controller.booking;

import java.io.IOException;
import java.util.List;

import dao.BookingDAO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import pojo.Booking;
import pojo.BookingHistory;

@WebServlet("/BookingHistoryServlet")
public class BookingHistoryServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        int userId = (int) session.getAttribute("userId");
        try {
            List<BookingHistory> list = BookingDAO.getBookingHistoriesOfUser(userId);
            request.setAttribute("history", list);
            RequestDispatcher rd = request.getRequestDispatcher("/home/account.jsp");
            rd.forward(request,response);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
