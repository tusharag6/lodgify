<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%
    if (!session.getAttribute("userName").toString().equals("codedawgs")) {
        response.sendRedirect(request.getContextPath()+"/home/index.jsp");
    }
%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@300;400;500;600;700;800&display=swap" rel="stylesheet">
    <title>Edit Booking</title>
    <style>
        body {
            background: #14141f;
            font-family: 'Nunito', sans-serif;
            color: white;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .form-container {
            background: #292934;
            border-radius: 8px;
            padding: 20px;
            width: 400px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        label {
            display: block;
            margin-bottom: 8px;
        }

        input, select {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #555;
            border-radius: 5px;
            background-color: #14141f;
            color: white;
        }

        button {
            background: #bfd788;
            color: black;
            font-size: 1.2rem;
            border: none;
            border-radius: 5px;
            padding: 10px 30px;
            cursor: pointer;
            margin: 20px 0 0 185px;
        }
    </style>
</head>
<body>
<div class="form-container">
    <h1>Edit Booking</h1>
    <form action="BookingEditServlet2" method="post">
        <label for="bookingId">Booking ID</label>
        <input type="text" id="bookingId" name="bookingId" value="${booking.bookingId}" readonly>

        <label for="hotelId">Hotel ID</label>
        <input type="text" id="hotelId" name="hotelId" value="${booking.hotelId}" readonly>

        <label for="userId">User ID</label>
        <input type="text" id="userId" name="userId" value="${booking.userId}" readonly>

        <label for="checkInDate">Check-In Date</label>
        <input type="date" id="checkInDate" name="checkInDate" value="${booking.checkInDate}" required>

        <label for="checkOutDate">Check-Out Date</label>
        <input type="date" id="checkOutDate" name="checkOutDate" value="${booking.checkOutDate}" required>

        <label for="numberOfGuests">Number of Guests</label>
        <input type="number" id="numberOfGuests" name="numberOfGuests" value="${booking.numberOfGuests}" required>

        <label for="numberOfRooms">Number of Rooms</label>
        <input type="number" id="numberOfRooms" name="numberOfRooms" value="${booking.numberOfRooms}" required>

        <label for="totalPrice">Total Price</label>
        <input type="number" id="totalPrice" name="totalPrice" value="${booking.totalPrice}" required>

        <label for="isConfirmed">Confirmed</label>
        <select id="isConfirmed" name="isConfirmed" required>
            <option value="true" selected>Yes</option>
            <option value="false">No</option>
        </select>

        <button type="submit">Update Booking</button>
    </form>
</div>
</body>
</html>
