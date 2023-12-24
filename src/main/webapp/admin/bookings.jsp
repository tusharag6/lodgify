<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@300;400;500;600;700;800&display=swap" rel="stylesheet">
    <title>Booking Management Admin Panel</title>
    <style>
        <%@ include file="assets/css/sidebar.css"%>
        <%@ include file="assets/css/booking.css"%>
    </style>
    <script src="https://kit.fontawesome.com/ac01cc78a8.js" crossorigin="anonymous"></script>
</head>
<body>
<div class="container">
    <%@ include file="sidebar.jsp" %>
    <div class="content">
        <div class="header">
            <h1>Booking Management</h1>
            <div class="crud-buttons">
                <a href="${pageContext.request.contextPath}/admin/add-booking.jsp">
                    <i class="fa-regular fa-square-plus" style="margin-right: 5px; border-radius: 50px"></i> Add Booking
                </a>
            </div>
        </div>
        <div class="table-card">
            <table class="booking-table">
                <thead>
                <tr>
                    <th>Booking ID</th>
                    <th>Hotel ID</th>
                    <th>Check-In Date</th>
                    <th>Check-Out Date</th>
                    <th>Number of Guests</th>
                    <th>Number of Rooms</th>
                    <th>Total Price</th>
                    <th>Confirmed</th>
                    <th>Action</th>
                    <!-- Add more columns as needed -->
                </tr>
                </thead>
                <tbody>
                <c:forEach var="booking" items="${bookings}">
                    <tr class="booking-item">
                        <td>${booking.bookingId}</td>
                        <td>${booking.hotelId}</td>
                        <td>${booking.checkInDate}</td>
                        <td>${booking.checkOutDate}</td>
                        <td>${booking.numberOfGuests}</td>
                        <td>${booking.numberOfRooms}</td>
                        <td>${booking.totalPrice}</td>
                        <td>${booking.confirmed}</td>
                        <td>
                            <a href="BookingEditServlet?id=${booking.bookingId}">
                                <i class="fas fa-edit" title="Edit" style="margin-right: 10px; color: white"></i>
                            </a>
                            <a href="BookingDeleteServlet?id=${booking.bookingId}">
                                <i class="fas fa-trash-alt" title="Delete" style="color: white"></i>
                            </a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>
</body>
</html>
