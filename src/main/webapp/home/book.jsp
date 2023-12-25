        <%@ page import="pojo.User" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>Lodgify</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    <!-- Favicon -->
    <link href="assets/img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600&family=Nunito:wght@600;700;800&display=swap" rel="stylesheet">

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Stylesheet -->
    <style>
        <%@ include file="assets/lib/animate/animate.min.css"%>
        <%@ include file="assets/css/bootsrap.min.css"%>
        <%@ include file="assets/css/style.css"%>
    </style>
</head>

<body>



<!-- Navbar & Hero Start -->
<div class="container-fluid position-relative p-0">
    <%@ include file="navbar.jsp" %>

    <div class="container-fluid bg-primary py-5 mb-5 hero-header" style="background: linear-gradient(rgba(20, 20, 31, .7), rgba(20, 20, 31, .7)), url(${hotel.getHotelPhotoUrl()}); background-position: center center; background-repeat: no-repeat; background-size: cover">
        <div class="container py-5">
            <div class="row justify-content-center py-5">
                <div class="col-lg-10 pt-lg-5 mt-lg-5 text-center">
                    <h1 class="display-3 text-white animated slideInDown">Complete Your Booking </h1>

                </div>
            </div>
        </div>
    </div>
</div>
<!-- Navbar & Hero End -->


<!-- Destination Start -->
<div class="container-xxl py-5 destination">
    <div class="container">
        <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
            <h6 class="section-title bg-white text-center text-primary px-3">Happy Booking</h6>
        </div>
    </div>
</div>
        <!-- Hotel Information -->
        <div class="row mt-5 px-5">
            <div class="col-md-6 mb-4">
                <div class="card">
                    <img src="${hotel.getHotelRoomPhotoUrl()}" class="card-img-top" alt="Hotel Image">
                </div>
            </div>
            <div class="col-md-6 pt-5">
                <div class="p-3 pt-0">
                    <h1 class="mb-4 text-primary">${hotel.getHotelName()}</h1>
                    <h5 class="mb-4 text-primary">₹${hotel.getRoomPrice()}</h5>
                    <p class="mb-4">${hotel.getHotelDescription()}</p>
                    <div class="row gy-2 gx-4 mb-4">
                        <c:forEach var="amenity" items="${amenitiesList}">
                            <div class="col-sm-6">
                                <p class="mb-0"><i class="fa fa-arrow-right text-primary me-2"></i>${amenity}</p>
                            </div>
                        </c:forEach>
                    </div>
                    <br>
                    <form action="${pageContext.request.contextPath}/ReservationServlet" method="post" class="card p-4">
                        <h5 class="mb-4">Booking a Room</h5>
                        <div class="row">
                            <div class="mb-3 col-md-6">
                            <label for="numberOfGuests" class="form-label">Number of Guests</label>
                                <input class="form-control w-100 ps-4 pe-5" name="numberOfGuests" id="numberOfGuests" type="text" placeholder="">
                            </div>
                        <div class="mb-3 col-md-6">
                            <label for="numberOfRooms" class="form-label">Number of Rooms</label>
                            <input class="form-control w-100 ps-4 pe-5" name="numberOfRooms" id="numberOfRooms" type="text" placeholder="">
                        </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6 mb-3">
                            <label for="checkInDate" class="form-label">Check-in Date</label>
                            <input type="date" class="form-control" id="checkInDate" name="checkInDate">
                        </div>
                        <div class="mb-3 col-md-6">
                            <label for="checkOutDate" class="form-label">Check-out Date</label>
                            <input type="date" class="form-control" id="checkOutDate" name="checkOutDate">
                        </div>
                        </div>
                        <div>
<%--                            <label for="hotelId">Hotel ID</label>--%>
                            <input type="hidden" id="hotelId" name="hotelId" value="${hotel.getHotelId()}">

    <%
        User user = (User) session.getAttribute("user");
        int userId = 0;
        if (user != null) {
            userId = user.getUserId();
        }
    %>
                            <input type="hidden" id="userId" name="userId" value="<%=userId%>">

<%--                            <label for="totalPrice">Total Price</label>--%>
                            <input type="hidden" id="totalPrice" name="totalPrice" value="${hotel.getRoomPrice()}">
<%--                            <label for="isConfirmed">Confirmed</label>--%>
                            <input type="hidden" id="isConfirmed" name="isConfirmed" value="true">
                        </div>
                        <br>
                        <button class="btn btn-primary" type="submit" value="Submit">Book</button>
                    </form>
                </div>
            </div>
        </div>
        <!-- End Hotel Information -->
    </div>
</div>
<!-- Destination Start -->

<!-- Destination Start -->


<!-- Footer Start -->
<%@ include file="footer.jsp" %>
<!-- Footer End -->


<!-- Back to Top -->
<a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>


<script src="${pageContext.request.contextPath}/home/assets/JS/main.js"></script>
</body>

</html>