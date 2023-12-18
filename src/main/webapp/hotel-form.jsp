<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Hotel Form</title>
</head>
<body>
<h2>Hotel Form</h2>
<form action="hotel" method="post">
    Hotel Name: <input type="text" name="hotelName" required><br>
    Hotel Address: <input type="text" name="hotelAddress" required><br>
    Hotel Rating: <input type="number" name="hotelRating" step="0.1" required><br>
    Hotel Amenities: <input type="text" name="hotelAmenities" required><br>
    Room Price: <input type="number" name="roomPrice" required><br>
    <input type="submit" value="Submit">
</form>
</body>
</html>
