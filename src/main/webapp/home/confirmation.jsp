<%@ page import="pojo.Hotel" %>
<%@ page import="pojo.Booking" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    Hotel hotel = (Hotel) session.getAttribute("hotel");
    Booking booking = (Booking) session.getAttribute("booking");

    // Format check-in and check-out dates
    SimpleDateFormat dateFormat = new SimpleDateFormat("dd MMM");
    String checkInDateFormatted = dateFormat.format(booking.getCheckInDate());
    String checkOutDateFormatted = dateFormat.format(booking.getCheckOutDate());

    // Other details
    String hotelName = hotel.getHotelName();
    double totalPrice = booking.getTotalPrice();
    int numberOfGuests = booking.getNumberOfGuests();
    int numberOfRooms = booking.getNumberOfRooms();
%>

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

<%--    <script>--%>
<%--        // Detect page reload and redirect to index.jsp--%>
<%--        if (performance.navigation.type === 1) {--%>
<%--            window.location.href = "${pageContext.request.contextPath}/home/index.jsp";--%>
<%--        }--%>
<%--    </script>--%>
</head>

<body>
<!-- Spinner Start -->
<!--<div id="spinner" class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">-->
<!--    <div class="spinner-border text-primary" style="width: 3rem; height: 3rem;" role="status">-->
<!--        <span class="sr-only">Loading...</span>-->
<!--    </div>-->
<!--</div>-->
<!-- Spinner End -->
<!-- Navbar & Hero Start -->
<div class="container-fluid position-relative p-0">
    <%@ include file="navbar.jsp" %>

    <div class="container-fluid bg-primary py-5 mb-5 hero-header" style="background: linear-gradient(rgba(20, 20, 31, .7), rgba(20, 20, 31, .7)), url(https://t4.ftcdn.net/jpg/03/29/44/25/360_F_329442520_bs9DE1vhchdtXtbsJXcwGQTpjZd5NzDo.jpg); background-position: center center; background-repeat: no-repeat; background-size: cover">
        <div class="container py-5">
            <div class="row justify-content-center py-5">
                <div class="col-lg-10 pt-lg-5 mt-lg-5 text-center">
                    <h1 class="display-3 animated slideInDown text-primary">Confirmation Page</h1>
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb justify-content-center">
                            <li class="breadcrumb-item"><a href="#">Home</a></li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Navbar & Hero End -->


<!-- About Start -->
<div class="container-xxl py-5">
    <div class="container">
        <div class="row g-5">
            <div class="col-lg-6 wow fadeInUp pt-4" data-wow-delay="0.3s">
                <h6 class="section-title bg-white text-start text-primary pe-3">Booking Confirmation</h6>
                <h1 class="mb-4">Thank You for Choosing <span class="text-primary"><br><%= hotelName%></span></h1>
                <p class="mb-4">We extend our sincere appreciation for your discerning choice to lodge with us. <br> </p>
                <p class="mb-4">Your reservation, encompassing <span class="text-primary"><%= numberOfRooms %> rooms</span> for <span class="text-primary"><%= numberOfGuests %> guests</span>, stands confirmed. </p>
                <p class="mb-4">The comprehensive cost of your accommodation is <span class="text-primary">₹<%= totalPrice %></span>, spanning from <%= checkInDateFormatted %> to <%= checkOutDateFormatted %>.</p>
            </div>
            <div class="col-lg-6 wow fadeInUp" data-wow-delay="0.1s" style="min-height: 400px;">
                <div class="position-relative h-100">
                    <img class="img-fluid position-absolute w-100 h-100" src="https://static.theceomagazine.net/wp-content/uploads/2018/08/20092335/jade-mountain.jpg" alt="" style="object-fit: cover;">
                </div>
            </div>
        </div>
    </div>
</div>
<!-- About End -->

<!-- Footer Start -->
<%@ include file="footer.jsp" %>
<!-- Footer End -->


<!-- Back to Top -->
<a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>



<!-- Template Javascript -->
<script src="${pageContext.request.contextPath}/home/assets/JS/main.js"></script>
</body>

</html>