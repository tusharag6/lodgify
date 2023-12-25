package controller.booking;

import dao.BookingDAO;
import dao.HotelDAO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.http.HttpSession;
import pojo.Booking;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import pojo.Hotel;

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
        int userId = Integer.parseInt(request.getParameter("userId"));
        String checkInDateString = request.getParameter("checkInDate");
        String checkOutDateString = request.getParameter("checkOutDate");
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

        // Calculate the number of days
        long numberOfDays = calculateNumberOfDays(checkInDate, checkOutDate);

        // Calculate the total price
        double totalPrice = roomPrice * numberOfRooms * numberOfDays;

        // Create a new Booking object
        Booking newBooking = new Booking();
        newBooking.setHotelId(hotelId);
        newBooking.setUserId(userId);
        newBooking.setCheckInDate(checkInDate);
        newBooking.setCheckOutDate(checkOutDate);
        newBooking.setNumberOfGuests(numberOfGuests);
        newBooking.setNumberOfRooms(numberOfRooms);
        newBooking.setTotalPrice(totalPrice);
        newBooking.setConfirmed(isConfirmed);

        // Add the booking to the database
        try {
            HttpSession session = request.getSession();
            if(session.getAttribute("userName")!=null){
                BookingDAO.addBooking(newBooking);
                Hotel hotel = HotelDAO.getSingleHotel(hotelId);
                request.setAttribute("booking", newBooking);
                request.setAttribute("hotel",hotel);
                RequestDispatcher dispatcher = request.getRequestDispatcher("/home/confirmation.jsp");
                dispatcher.forward(request, response);
            }else {
                response.sendRedirect(request.getContextPath()+"/auth/Signup.jsp");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private long calculateNumberOfDays(Date checkInDate, Date checkOutDate) {
        long diffInMillies = Math.abs(checkOutDate.getTime() - checkInDate.getTime());
        return diffInMillies / (24 * 60 * 60 * 1000);
    }
}
