<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
                <button>
                    <i class="fa-regular fa-square-plus" style="margin-right: 5px; border-radius: 50px"></i> Add Booking
                </button>
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
                    <th>Total Price</th>
                    <th>Confirmed</th>
                    <th>Action</th> <!-- New Action column -->
                    <!-- Add more columns as needed -->
                </tr>
                </thead>
                <tbody>
                <%-- Add booking items dynamically based on your data --%>
                <tr class="booking-item">
                    <td>1</td>
                    <td>1</td>
                    <td>2023-01-01</td>
                    <td>2023-01-05</td>
                    <td>2</td>
                    <td>500.00</td>
                    <td>true</td>
                    <td>
                        <i class="fas fa-edit" title="Edit" style="margin-right: 10px"></i>
                        <i class="fas fa-trash-alt" title="Delete"></i>
                    </td>
                </tr>
                <%-- Add more booking items as needed --%>
                </tbody>
            </table>
        </div>
    </div>
</div>
</body>
</html>
