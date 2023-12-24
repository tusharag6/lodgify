package controller.booking;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import dao.BookingDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import pojo.Booking;

@WebServlet("/BookingViewServlet")
public class BookingViewServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        out.println("<a href='index.html'>Add New Booking</a>");
        out.println("<h1>Bookings List</h1>");

        List<Booking> list = BookingDAO.getAllBookings();

        out.print("<table border='1' width='100%'>");
        out.print("<tr><th>Booking ID</th><th>Hotel ID</th><th>Check-In Date</th><th>Check-Out Date</th><th>Number of Guests</th><th>Total Price</th><th>Confirmed</th><th>Action</th></tr>");
        for (Booking booking : list) {
            out.print("<tr><td>" + booking.getBookingId() + "</td>" +
                    "<td>" + booking.getHotelId() + "</td>" +
                    "<td>" + booking.getCheckInDate() + "</td>" +
                    "<td>" + booking.getCheckOutDate() + "</td>" +
                    "<td>" + booking.getNumberOfGuests() + "</td>" +
                    "<td>" + booking.getTotalPrice() + "</td>" +
                    "<td>" + booking.isConfirmed() + "</td>" +
                    "<td><a href='BookingEditServlet?id=" + booking.getBookingId() + "'>edit </a><a href='BookingDeleteServlet?id=" + booking.getBookingId() + "'>delete</a></td></tr>");
        }
        out.print("</table>");

        out.close();
    }
}
