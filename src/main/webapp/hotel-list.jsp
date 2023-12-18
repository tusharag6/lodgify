<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Hotel List</title>
</head>
<body>
<h2>Hotel List</h2>
<table border="1">
    <thead>
    <tr>
        <th>Name</th>
        <th>Address</th>
        <th>Rating</th>
        <th>Amenities</th>
        <th>Room Price</th>
        <th>Action</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="hotel" items="${hotels}">
        <tr>
            <td>${hotel.hotelName}</td>
            <td>${hotel.hotelAddress}</td>
            <td>${hotel.hotelRating}</td>
            <td>${hotel.hotelAmenities}</td>
            <td>${hotel.roomPrice}</td>
            <td>
                <a href="hotel?action=edit&hotelId=${hotel.hotelId}">Edit</a>
                |
                <a href="hotel?action=delete&hotelId=${hotel.hotelId}">Delete</a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<br>
<a href="hotel?action=create">Add a New Hotel</a>
</body>
</html>
