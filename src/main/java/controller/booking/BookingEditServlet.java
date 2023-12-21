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
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        out.println("<h1>Update Booking</h1>");

        // Retrieve booking ID from the request parameter
        String bid = request.getParameter("id");
        int id = Integer.parseInt(bid);

        // Get the booking details based on the booking ID
        Booking booking = BookingDAO.getSingleBooking(id);

        out.print("<form action='BookingEditServlet2' method='post'>");
        out.print("<table>");
        out.print("<tr><td></td><td><input type='hidden' name='id' value='" + id + "'/></td></tr>");
        out.print("<tr><td>Hotel ID:</td><td><input type='text' name='hotelId' id='hotelId' value='" + booking.getHotelId() + "'/></td></tr>");
        out.print("<tr><td>Check-In Date:</td><td><input type='text' name='checkInDate' id='checkInDate' value='" + formatDate(booking.getCheckInDate()) + "'/></td></tr>");
        out.print("<tr><td>Check-Out Date:</td><td><input type='text' name='checkOutDate' id='checkOutDate' value='" + formatDate(booking.getCheckOutDate()) + "'/></td></tr>");
        out.print("<tr><td>Number of Guests:</td><td><input type='text' name='numberOfGuests' id='numberOfGuests' value='" + booking.getNumberOfGuests() + "'/></td></tr>");
        out.print("<tr><td>Total Price:</td><td><input type='text' name='totalPrice' id='totalPrice' value='" + booking.getTotalPrice() + "'/></td></tr>");
        out.print("<tr><td>Confirmed:</td><td><input type='text' name='isConfirmed' id='isConfirmed' value='" + booking.isConfirmed() + "'/></td></tr>");
        out.print("<tr><td colspan='2'><input type='submit' value='Edit & Save '/></td></tr>");
        out.print("</table>");
        out.print("</form>");

        out.close();
    }

    private String formatDate(java.util.Date date) {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        return sdf.format(date);
    }
}
