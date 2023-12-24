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

@WebServlet("/HotelEditServlet2")
public class HotelEditServlet2 extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out=response.getWriter();

        String hid=request.getParameter("hotelId");
        int id=Integer.parseInt(hid);
        String name=request.getParameter("hotelName");
        String address=request.getParameter("hotelAddress");
        String ratings=request.getParameter("hotelRatings");
        String amenities=request.getParameter("hotelAmenities");
        String roomPrice=request.getParameter("roomPrice");


        Hotel hotel=new Hotel();
        hotel.setHotelId(id);
        hotel.setHotelName(name);
        hotel.setHotelAddress(address);
        hotel.setHotelRating(Double.parseDouble(ratings));
        hotel.setHotelAmenities(amenities);
        hotel.setRoomPrice(Integer.parseInt(roomPrice));

        boolean status= HotelDAO.updateHotel(hotel);
        if(status){
            response.sendRedirect("HotelViewServlet");
        }else{
            out.println("Sorry! unable to update record");
        }

        out.close();
    }

}