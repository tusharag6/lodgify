<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/admin/assets/css/sidebar.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/admin/assets/css/home.css" />
    <title>Hotel Management Admin Panel</title>
</head>
<body>
<div class="container">
    <%@ include file="sidebar.jsp" %>
    <div class="content">
        <h1>Welcome Admin</h1>
        <div class="metrics-container">
            <div class="metric-card">
                <div class="metric-content">
                    <img src="assets/images/hotel.png" class="metric-icon"/>
                    <div class="metric-text">
                        <span class="metric-text-number">12</span>
                        <span class="metric-text-title">Total Hotels</span>
                    </div>
                </div>
            </div>

            <div class="metric-card">
                <div class="metric-content">
                    <img src="assets/images/customer.png" class="metric-icon"/>
                    <div class="metric-text">
                        <span class="metric-text-number">500</span>
                        <span class="metric-text-title">Total Customers</span>
                    </div>
                </div>
            </div>

            <div class="metric-card">
                <div class="metric-content">
                    <img src="assets/images/double-bed.png" class="metric-icon"/>
                    <div class="metric-text">
                        <span class="metric-text-number">1000</span>
                        <span class="metric-text-title">Total Bookings</span>
                    </div>
                </div>
            </div>

            <div class="metric-card">
                <div class="metric-content">
                    <img src="assets/images/money.png" class="metric-icon"/>
                    <div class="metric-text">
                        <span class="metric-text-number">$250,000</span>
                        <span class="metric-text-title">Total Revenue</span>
                    </div>
                </div>
            </div>

            <div class="metric-card">
                <div class="metric-content">
                    <img src="assets/images/average.png" class="metric-icon"/>
                    <div class="metric-text">
                        <span class="metric-text-number">$150</span>
                        <span class="metric-text-title">Average Daily Rate</span>
                    </div>
                </div>
            </div>
        </div>
        <h1>Recent New Bookings</h1>
        <div class="recent-bookings-container">
            <div class="booking-item">
                <p><strong>Booking ID:</strong> 1234</p>
                <p><strong>Customer Name:</strong> John Doe</p>
                <p><strong>Check-in Date:</strong> 2023-01-01</p>
            </div>
            <div class="booking-item">
                <p><strong>Booking ID:</strong> 1234</p>
                <p><strong>Customer Name:</strong> John Doe</p>
                <p><strong>Check-in Date:</strong> 2023-01-01</p>
            </div>
            <div class="booking-item">
                <p><strong>Booking ID:</strong> 1234</p>
                <p><strong>Customer Name:</strong> John Doe</p>
                <p><strong>Check-in Date:</strong> 2023-01-01</p>
            </div>
        </div>
        <h1>Recent New Hotel Registrations</h1>
        <div class="recent-hotels-container">
            <div class="hotel-item">
                <p><strong>Hotel ID:</strong> H567</p>
                <p><strong>Hotel Name:</strong> Grand Hotel</p>
                <p><strong>Location:</strong> City, Country</p>
            </div>
        </div>
    </div>
</div>
</body>
</html>
