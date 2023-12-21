package controller.hotel;
import java.io.IOException;
import java.io.PrintWriter;

import dao.HotelDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import pojo.Hotel;

@WebServlet("/HotelEditServlet")
public class HotelEditServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out=response.getWriter();
        out.println("<h1>Update Hotel</h1>");
        String hid=request.getParameter("id");
        int id=Integer.parseInt(hid);

        Hotel hotel= HotelDAO.getSingleHotel(id);
        System.out.println(hotel.getHotelName());

        out.print("<form action='HotelEditServlet2' method='post'>");
        out.print("<table>");
        out.print("<tr><td></td><td><input type='hidden' name='id' value='"+hotel.getHotelId()+"'/></td></tr>");
        out.print("<tr><td>Name:</td><td><input type='text' name='hotelName' id='hotelName' value='"+hotel.getHotelName()+"'/></td></tr>");
        out.print("<tr><td>Address:</td><td><input type='text' name='hotelAddress' id='hotelAddress' value='"+hotel.getHotelAddress()+"'/></td></tr>");
        out.print("<tr><td>Ratings:</td><td><input type='text' name='hotelRatings' id='hotelRatings' value='"+hotel.getHotelRating()+"'/></td></tr>");
        out.print("<tr><td>Amenities:</td><td><input type='text' name='hotelAmenities' id='hotelAmenities' value='"+hotel.getHotelAmenities()+"'/></td></tr>");
        out.print("<tr><td>Room Price:</td><td><input type='text' name='roomPrice' id='roomPrice' value='"+hotel.getRoomPrice()+"'/></td></tr>");
        out.print("<tr><td colspan='2'><input type='submit' value='Edit & Save '/></td></tr>");
        out.print("</table>");
        out.print("</form>");

        out.close();
    }
}


