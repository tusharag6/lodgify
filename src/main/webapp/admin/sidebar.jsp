<%--
  Created by IntelliJ IDEA.
  User: tusha
  Date: 22-12-2023
  Time: 20:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="sidebar">
    <div>
        <div class="brand">
            <img src="${pageContext.request.contextPath}/admin/assets/images/logo.png">
            <span>Lodgify</span>
        </div>
    <ul>
        <li><i class="fa-solid fa-house"></i>
            <a href="${pageContext.request.contextPath}/admin/home.jsp">Home</a>
        </li>
        <li><i class="fa-solid fa-hotel"></i>
            <a href="${pageContext.request.contextPath}/HotelViewServlet">Hotels</a>
        </li>
        <li><i class="fa-solid fa-book"></i>
            <a href="${pageContext.request.contextPath}/BookingViewServlet">Bookings</a>
        </li>
        <li><i class="fa-solid fa-user"></i>
            <a href="${pageContext.request.contextPath}/admin/customers.jsp">Customers</a>
        </li>
    </ul>
    </div>
    <div class="sidebar-b">
        <a href="#" class="goto-main" style="color: white; padding-left: 15px">Lodgify Home</a>
        <a href="#" class="logout" style="color: black; padding-left: 15px">
            <i class="fa-solid fa-right-from-bracket" style="margin-right: 5px"></i>
            Logout
        </a>
    </div>

</div>
