package controller.hotel;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import dao.HotelDAO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import pojo.Hotel;

@WebServlet("/SearchServlet")
public class SearchServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            String searchTerm = request.getParameter("searchTerm");
            List<Hotel> list = HotelDAO.findHotels(searchTerm);
            request.setAttribute("hotels", list);
            RequestDispatcher rd = request.getRequestDispatcher("./home/page.jsp");
            rd.forward(request,response);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}