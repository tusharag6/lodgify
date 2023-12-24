package controller.booking;

import dao.BookingDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/BookingDeleteServlet")
public class BookingDeleteServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String bid = request.getParameter("id");
        int id = Integer.parseInt(bid);

        // Delete the booking based on the provided booking ID
        BookingDAO.deleteBooking(id);

        // Redirect to the BookingViewServlet to display the updated list of bookings
        response.sendRedirect("BookingViewServlet");
    }
}
