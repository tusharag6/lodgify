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
        String hid=request.getParameter("id");
        int id=Integer.parseInt(hid);
        Hotel hotel= HotelDAO.getSingleHotel(id);
        hotel.setHotelId(id);
        request.setAttribute("hotel", hotel);
//        request.setAttribute("id", hid);
        request.getRequestDispatcher("./admin/edit-hotel.jsp").forward(request, response);
    }
}


