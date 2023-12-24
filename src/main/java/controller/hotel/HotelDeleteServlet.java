package controller.hotel;

import java.io.IOException;

import dao.HotelDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet("/HotelDeleteServlet")
public class HotelDeleteServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String hid=request.getParameter("id");
        int id=Integer.parseInt(hid);
        HotelDAO.deleteHotel(id);
        response.sendRedirect("HotelViewServlet");
    }
}