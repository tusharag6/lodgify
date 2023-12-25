package controller.hotel;
import dao.HotelDAO;
import jakarta.servlet.RequestDispatcher;
import pojo.Hotel;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/HotelRegistrationServlet")

public class HotelRegistrationServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Retrieve data from the registration form
        String hotelName = request.getParameter("hotelName");
        String hotelAddress = request.getParameter("hotelAddress");
        double hotelRating = Double.parseDouble(request.getParameter("hotelRating"));
        String hotelAmenities = request.getParameter("hotelAmenities");
        int roomPrice = Integer.parseInt(request.getParameter("roomPrice"));
        System.out.println(hotelName);

        // Create a new Hotel object
        Hotel newHotel = new Hotel();
        newHotel.setHotelName(hotelName);
        newHotel.setHotelAddress(hotelAddress);
        newHotel.setHotelRating(hotelRating);
        newHotel.setHotelAmenities(hotelAmenities);
        newHotel.setRoomPrice(roomPrice);

        // Add the hotel to the database
        try {
            HotelDAO.addHotel(newHotel);
            RequestDispatcher rd = request.getRequestDispatcher("./admin/hotels.jsp?success=true");
            rd.forward(request,response);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}