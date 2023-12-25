package controller.hotel;

import java.io.IOException;
import java.util.Arrays;
import java.util.List;

import dao.HotelDAO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import pojo.Hotel;

@WebServlet("/HotelSingleViewServlet")
public class HotelSingleViewServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            String hotelId = request.getParameter("hotelId");
            if (hotelId != null && !hotelId.isEmpty()) {
                Hotel singleHotel = HotelDAO.getSingleHotel(Integer.parseInt(hotelId));
                singleHotel.setHotelId(Integer.parseInt(hotelId));
                request.setAttribute("hotel", singleHotel);

                List<String> amenitiesList = Arrays.asList(singleHotel.getHotelAmenities().split(","));
                request.setAttribute("amenitiesList", amenitiesList);
            } else {
                // Handle the case when hotelId is null or empty
                // You may want to redirect the user to an error page or handle it accordingly
            }
            RequestDispatcher rd = request.getRequestDispatcher("./home/book.jsp");
            rd.forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
