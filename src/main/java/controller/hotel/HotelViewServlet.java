package controller.hotel;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import dao.HotelDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import pojo.Hotel;

@WebServlet("/HotelViewServlet")
public class HotelViewServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out=response.getWriter();
        out.println("<a href='index.html'>Add New Hotel</a>");
        out.println("<h1>Hotels List</h1>");

        List<Hotel> list= HotelDAO.getAllHotels();

        out.print("<table border='1' width='100%'");
        out.print("<tr><th>Name</th><th>Action</th></tr>");
        for(Hotel e:list){
            out.print("<tr><td>"+e.getHotelName()+"</td>" +
                    "<td><a href='HotelEditServlet?id="+e.getHotelId()+"'>edit </a><a href='HotelDeleteServlet?id="+e.getHotelId()+"'>delete</a></td></tr>");
        }
        out.print("</table>");

        out.close();
    }
}