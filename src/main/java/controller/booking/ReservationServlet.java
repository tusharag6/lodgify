package controller.booking;

import dao.BookingDAO;
import dao.HotelDAO;
import jakarta.servlet.RequestDispatcher;
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

@WebServlet("/ReservationServlet")
public class ReservationServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Retrieve data from the booking creation form
        int hotelId = Integer.parseInt(request.getParameter("hotelId"));
        String checkInDateString = request.getParameter("checkInDate");
        String checkOutDateString = request.getParameter("checkOutDate");
        System.out.println(checkInDateString);
        int numberOfGuests = Integer.parseInt(request.getParameter("numberOfGuests"));
        int numberOfRooms = Integer.parseInt(request.getParameter("numberOfRooms"));
        double roomPrice = Double.parseDouble(request.getParameter("totalPrice"));
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

        double totalPrice = roomPrice*numberOfGuests;

        // Create a new Booking object
        Booking newBooking = new Booking();
        newBooking.setHotelId(hotelId);
        newBooking.setCheckInDate(checkInDate);
        newBooking.setCheckOutDate(checkOutDate);
        newBooking.setNumberOfGuests(numberOfGuests);
        newBooking.setNumberOfRooms(numberOfRooms);
        newBooking.setTotalPrice(totalPrice);
        newBooking.setConfirmed(isConfirmed);

        // Add the booking to the database
        try {
            BookingDAO.addBooking(newBooking);
            response.sendRedirect(request.getContextPath() + "/home/confirmation.jsp");

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
