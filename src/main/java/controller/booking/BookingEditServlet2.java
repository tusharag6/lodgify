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
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

@WebServlet("/BookingEditServlet2")
public class BookingEditServlet2 extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        String bid = request.getParameter("bookingId");
        int id = Integer.parseInt(bid);
        int hotelId = Integer.parseInt(request.getParameter("hotelId"));
        String checkInDateString = request.getParameter("checkInDate");
        String checkOutDateString = request.getParameter("checkOutDate");
        int numberOfGuests = Integer.parseInt(request.getParameter("numberOfGuests"));
        int numberOfRooms = Integer.parseInt(request.getParameter("numberOfRooms"));
        double totalPrice = Double.parseDouble(request.getParameter("totalPrice"));
        boolean isConfirmed = Boolean.parseBoolean(request.getParameter("isConfirmed"));

        // Convert date strings to Date objects
        Date checkInDate = null;
        Date checkOutDate = null;
        try {
            SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
            checkInDate = dateFormat.parse(checkInDateString);
            checkOutDate = dateFormat.parse(checkOutDateString);
        } catch (ParseException e) {
            e.printStackTrace();
        }

        Booking booking = new Booking();
        booking.setBookingId(id);
        booking.setHotelId(hotelId);
        booking.setCheckInDate(checkInDate);
        booking.setCheckOutDate(checkOutDate);
        booking.setNumberOfGuests(numberOfGuests);
        booking.setNumberOfRooms(numberOfRooms);
        booking.setTotalPrice(totalPrice);
        booking.setConfirmed(isConfirmed);

        boolean status = BookingDAO.updateBooking(booking);
        if (status) {
            response.sendRedirect("BookingViewServlet");
        } else {
            out.println("Sorry! unable to update record");
        }

        out.close();
    }
}
