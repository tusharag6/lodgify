<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    if (session.getAttribute("userName") != "codedawgs") {
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
    <title>Edit Hotel</title>
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

        input {
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
    <h1>Edit Hotel</h1>
    <form action="HotelEditServlet2" method="post">
        <label for="hotelId">Hotel ID</label>
        <input type="text" id="hotelId" name="hotelId" value="${hotel.hotelId}" readonly>

        <label for="hotelName">Hotel Name</label>
        <input type="text" id="hotelName" name="hotelName" value="${hotel.hotelName}" required>

        <label for="hotelDescription">Hotel Description</label>
        <input type="text" id="hotelDescription" name="hotelDescription" value="${hotel.hotelDescription}" required>

        <label for="hotelPhotoUrl">Hotel Photo</label>
        <input type="text" id="hotelPhotoUrl" name="hotelPhotoUrl" value="${hotel.hotelPhotourl}" required>

        <label for="hotelRoomPhotoUrl">Room Photo</label>
        <input type="text" id="hotelRoomPhotoUrl" name="hotelRoomPhotoUrl" value="${hotel.hotelRoomPhotoUrl}" required>

        <label for="hotelAddress">Hotel Address</label>
        <input type="text" id="hotelAddress" name="hotelAddress" value="${hotel.hotelAddress}" required>

        <label for="hotelRatings">Hotel Ratings</label>
        <input type="text" id="hotelRatings" name="hotelRatings" value="${hotel.hotelRating}" required>

        <label for="hotelAmenities">Hotel Amenities</label>
        <input type="text" id="hotelAmenities" name="hotelAmenities" value="${hotel.hotelAmenities}" required>

        <label for="roomPrice">Room Price</label>
        <input type="text" id="roomPrice" name="roomPrice" value="${hotel.roomPrice}" required>

        <button type="submit">Edit & Save Hotel</button>
    </form>
</div>
</body>
</html>
