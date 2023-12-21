package controller.hotel;
import dao.HotelDAO;
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
        boolean success = HotelDAO.addHotel(newHotel);

        if (success) {
            // Send a response to the client
            response.setContentType("text/html");
            PrintWriter out = response.getWriter();
            out.println("<html>" +
                    "<body>" +
                    "<h2>Registration Successful</h2><br/>" +
                    "<a href='HotelViewServlet'>view Hotels</a>" +
                    "</body>" +
                    "</html>");
        } else {
            // Handle error
            response.getWriter().println("Failed to create a new hotel.");
        }


    }
}