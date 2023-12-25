<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    if (!session.getAttribute("userName").toString().equals("codedawgs")) {
        response.sendRedirect(request.getContextPath()+"/home/index.jsp");
    }
%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hotel Management Admin Panel</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@300;400;500;600;700;800&display=swap" rel="stylesheet">
    <style>
        <%@ include file="assets/css/home.css"%>
        <%@ include file="assets/css/sidebar.css"%>
    </style>
    <script src="https://kit.fontawesome.com/ac01cc78a8.js" crossorigin="anonymous"></script>
</head>
<body>
<div class="container">
    <%@ include file="sidebar.jsp" %>
    <div class="content">
        <h1>Welcome Admin</h1>
        <div class="metrics-container">
            <div class="metric-card">
                <div class="metric-content">
                    <img src="${pageContext.request.contextPath}/admin/assets/images/hotel.png" class="metric-icon"/>
                    <div class="metric-text">
                        <span class="metric-text-number">12</span>
                        <span class="metric-text-title">Total Hotels</span>
                    </div>
                </div>
            </div>

            <div class="metric-card">
                <div class="metric-content">
                    <img src="${pageContext.request.contextPath}/admin/assets/images/customer.png" class="metric-icon"/>
                    <div class="metric-text">
                        <span class="metric-text-number">500</span>
                        <span class="metric-text-title">Total Customers</span>
                    </div>
                </div>
            </div>

            <div class="metric-card">
                <div class="metric-content">
                    <img src="${pageContext.request.contextPath}/admin/assets/images/double-bed.png" class="metric-icon"/>
                    <div class="metric-text">
                        <span class="metric-text-number">1000</span>
                        <span class="metric-text-title">Total Bookings</span>
                    </div>
                </div>
            </div>

            <div class="metric-card">
                <div class="metric-content">
                    <img src="${pageContext.request.contextPath}/admin/assets/images/money.png" class="metric-icon"/>
                    <div class="metric-text">
                        <span class="metric-text-number">$250,000</span>
                        <span class="metric-text-title">Total Revenue</span>
                    </div>
                </div>
            </div>

            <div class="metric-card">
                <div class="metric-content">
                    <img src="${pageContext.request.contextPath}/admin/assets/images/average.png" class="metric-icon"/>
                    <div class="metric-text">
                        <span class="metric-text-number">$150</span>
                        <span class="metric-text-title">Average Daily Rate</span>
                    </div>
                </div>
            </div>
        </div>
        <div class="recent-booking">
            <div class="recent-booking-main-header">
                <span style="font-weight: bold;font-size: 1.6rem">Recent Bookings</span>
                <a href="${pageContext.request.contextPath}/admin/bookings.jsp" style="color: #ccdfa0">View All</a>
            </div>
        <div class="recent-bookings-container">
            <div class="booking-item">
                <img src="${pageContext.request.contextPath}/admin/assets/images/hotel-placeholder.jpg" class="booking-image"/>
                <div>
                    <div class="recent-bookings-header">
                        <span class="booking-customer">John Doe</span>
                        <div class="recent-bookings-subheader">
                            <span class="booking-hotel">Vistas</span>
                            <span class="booking-price" style="font-weight: bold">$2000</span>
                        </div>
                    </div>
                    <div class="booking-date">
                    <div>
                        <img src="${pageContext.request.contextPath}/admin/assets/images/check-in.png" class="booking-date-icon"/>
                        <span>20th Jan 2023</span>
                    </div>
                    <div>
                        <img src="${pageContext.request.contextPath}/admin/assets/images/check-out.png" class="booking-date-icon"/>
                        <span>25th Jan 2023</span>
                    </div>
                    </div>
                </div>
            </div>
            <div class="booking-item">
                <img src="${pageContext.request.contextPath}/admin/assets/images/hotel-placeholder.jpg" class="booking-image"/>
                <div>
                    <div class="recent-bookings-header">
                        <span class="booking-customer">John Doe</span>
                        <div class="recent-bookings-subheader">
                            <span class="booking-hotel">Vistas</span>
                            <span class="booking-price" style="font-weight: bold">$2000</span>
                        </div>
                    </div>
                    <div class="booking-date">
                        <div>
                            <img src="${pageContext.request.contextPath}/admin/assets/images/check-in.png" class="booking-date-icon"/>
                            <span>20th Jan 2023</span>
                        </div>
                        <div>
                            <img src="${pageContext.request.contextPath}/admin/assets/images/check-out.png" class="booking-date-icon"/>
                            <span>25th Jan 2023</span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="booking-item">
                <img src="${pageContext.request.contextPath}/admin/assets/images/hotel-placeholder.jpg" class="booking-image"/>
                <div>
                    <div class="recent-bookings-header">
                        <span class="booking-customer">John Doe</span>
                        <div class="recent-bookings-subheader">
                            <span class="booking-hotel">Vistas</span>
                            <span class="booking-price" style="font-weight: bold">$2000</span>
                        </div>
                    </div>
                    <div class="booking-date">
                        <div>
                            <img src="${pageContext.request.contextPath}/admin/assets/images/check-in.png" class="booking-date-icon"/>
                            <span>20th Jan 2023</span>
                        </div>
                        <div>
                            <img src="${pageContext.request.contextPath}/admin/assets/images/check-out.png" class="booking-date-icon"/>
                            <span>25th Jan 2023</span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="booking-item">
                <img src="${pageContext.request.contextPath}/admin/assets/images/hotel-placeholder.jpg" class="booking-image"/>
                <div>
                    <div class="recent-bookings-header">
                        <span class="booking-customer">John Doe</span>
                        <div class="recent-bookings-subheader">
                            <span class="booking-hotel">Vistas</span>
                            <span class="booking-price" style="font-weight: bold">$2000</span>
                        </div>
                    </div>
                    <div class="booking-date">
                        <div>
                            <img src="${pageContext.request.contextPath}/admin/assets/images/check-in.png" class="booking-date-icon"/>
                            <span>20th Jan 2023</span>
                        </div>
                        <div>
                            <img src="${pageContext.request.contextPath}/admin/assets/images/check-out.png" class="booking-date-icon"/>
                            <span>25th Jan 2023</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </div>
        <div class="recent-hotels-register">
            <div class="recent-hotels-main-header">
                <span style="font-weight: bold;font-size: 1.6rem">Newly Joined Hotel</span>
                <a href="${pageContext.request.contextPath}/admin/hotels.jsp" style="color: #ccdfa0">View All</a>
            </div>
            <div class="recent-hotels-container">
                <div class="hotel-item">
                    <img src="${pageContext.request.contextPath}/admin/assets/images/hotel-placeholder.jpg" class="booking-image"/>
                    <div>
                        <div class="hotel-details">
                            <div>
                                <img src="${pageContext.request.contextPath}/admin/assets/images/hotel2.png" class="booking-date-icon"/>
                                <span>Grand Siba</span>
                            </div>
                            <div>
                                <img src="${pageContext.request.contextPath}/admin/assets/images/map.png" class="booking-date-icon"/>
                                <span>Sambalpur</span>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
</div>
</body>
</html>
