<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Hotel</title>
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
            width: 95%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #555;
            border-radius: 5px;
            background-color: #14141f;
            color: white;
        }

        input[type="submit"] {
            background: #bfd788;
            color: black;
            font-size: 1.2rem;
            border: none;
            border-radius: 5px;
            padding: 10px 30px;
            cursor: pointer;
            margin-top: 10px;
        }
    </style>
</head>
<body>
<div class="form-container">
    <h2>Hotel Registration Form</h2>
    <form action="${pageContext.request.contextPath}/HotelRegistrationServlet" method="post">
        <label for="hotelName">Name</label>
        <input type="text" id="hotelName" name="hotelName" required><br>

        <label for="hotelAddress">Address</label>
        <input type="text" id="hotelAddress" name="hotelAddress" required><br>

        <label for="hotelRating">Rating</label>
        <input type="text" id="hotelRating" name="hotelRating" required><br>

        <label for="hotelAmenities">Amenities</label>
        <input type="text" id="hotelAmenities" name="hotelAmenities" required><br>

        <label for="roomPrice">Room Price</label>
        <input type="text" id="roomPrice" name="roomPrice" required><br>

        <input type="submit" value="Submit">
    </form>
</div>
</body>
</html>
