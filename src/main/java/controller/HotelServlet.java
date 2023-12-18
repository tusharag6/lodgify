package controller;
import dao.HotelDAO;
import pojo.Hotel;
import connection.ConnectionProvider;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.util.List;

@WebServlet("/hotel")
public class HotelServlet extends HttpServlet {

    private HotelDAO hotelDAO;

    @Override
    public void init() throws ServletException {
        super.init();
        Connection connection = ConnectionProvider.getConnection();
        hotelDAO = new HotelDAO(connection);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Handle create or update hotel requests
        String action = request.getParameter("action");

        if ("create".equals(action)) {
            createHotel(request, response);
        } else if ("update".equals(action)) {
            updateHotel(request, response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Handle read or delete hotel requests
        String action = request.getParameter("action");

        if ("list".equals(action)) {
            listHotels(request, response);
        } else if ("delete".equals(action)) {
            deleteHotel(request, response);
        }
    }

    private void createHotel(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Get parameters from the request
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
        boolean success = hotelDAO.addHotel(newHotel);

        if (success) {
            response.sendRedirect("hotel?action=list");
        } else {
            // Handle error
            response.getWriter().println("Failed to create a new hotel.");
        }
    }

    private void updateHotel(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Get parameters from the request
        int hotelId = Integer.parseInt(request.getParameter("hotelId"));
        String hotelName = request.getParameter("hotelName");
        String hotelAddress = request.getParameter("hotelAddress");
        double hotelRating = Double.parseDouble(request.getParameter("hotelRating"));
        String hotelAmenities = request.getParameter("hotelAmenities");
        int roomPrice = Integer.parseInt(request.getParameter("roomPrice"));

        // Create a Hotel object with updated information
        Hotel updatedHotel = new Hotel(hotelId, hotelName, hotelAddress, hotelRating, hotelAmenities, roomPrice);

        // Update the hotel in the database
        boolean success = hotelDAO.updateHotel(updatedHotel);

        if (success) {
            response.sendRedirect("hotel?action=list");
        } else {
            // Handle error
            response.getWriter().println("Failed to update the hotel.");
        }
    }

    private void listHotels(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Retrieve the list of hotels from the database
        List<Hotel> hotels = hotelDAO.getAllHotels();

        // Set the hotels as an attribute in the request
        request.setAttribute("hotels", hotels);

        // Forward the request to the JSP page to display the list of hotels
        request.getRequestDispatcher("hotel-list.jsp").forward(request, response);
    }

    private void editHotel(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Get the hotel ID from the request
        int hotelId = Integer.parseInt(request.getParameter("hotelId"));

        // Retrieve the hotel with the specified ID from the database
        Hotel hotel = hotelDAO.getSingleHotel(hotelId);

        // Set the hotel as an attribute in the request
        request.setAttribute("hotel", hotel);

        // Forward the request to the JSP page to display the edit form
        request.getRequestDispatcher("hotel-form.jsp").forward(request, response);
    }

    private void deleteHotel(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Get the hotel ID from the request
        int hotelId = Integer.parseInt(request.getParameter("hotelId"));

        // Delete the hotel with the specified ID from the database
        boolean success = hotelDAO.deleteHotel(hotelId);

        if (success) {
            response.sendRedirect("hotel?action=list");
        } else {
            // Handle error
            response.getWriter().println("Failed to delete the hotel.");
        }
    }
}
