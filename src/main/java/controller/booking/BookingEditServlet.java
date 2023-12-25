package controller.booking;

import dao.BookingDAO;
import pojo.Booking;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;

@WebServlet("/BookingEditServlet")
public class BookingEditServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String bid = request.getParameter("id");
        int id = Integer.parseInt(bid);
        Booking booking = BookingDAO.getSingleBooking(id);
        booking.setBookingId(id);
        request.setAttribute("booking", booking);
        request.getRequestDispatcher("./admin/edit-booking.jsp").forward(request, response);
    }
}
