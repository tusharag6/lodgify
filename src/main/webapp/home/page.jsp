<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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

    <div class="container-fluid bg-primary py-5 mb-5 hero-header" style="background: linear-gradient(rgba(20, 20, 31, .7), rgba(20, 20, 31, .7)), url(${pageContext.request.contextPath}/home/assets/img/bg-hero5.jpg); background-position: center center; background-repeat: no-repeat; background-size: cover">
        <div class="container py-5">
            <div class="row justify-content-center py-5">
                <div class="col-lg-10 pt-lg-5 mt-lg-5 text-center">
                    <h1 class="display-3 text-white animated slideInDown">Search Results</h1>
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
            <h6 class="section-title bg-white text-center text-primary px-3">Available Hotels</h6>
            <h1 class="mb-5">Popular Results</h1>
        </div>


        <!-- Hotel Listings Start -->
        <div class="container py-5">
            <div class="row">

                <!-- Iterate over the list of hotels and display them -->
                <c:forEach var="hotel" items="${hotels}">
                    <div class="col-md-4 mb-4">
                        <div class="card">
                            <img src="${hotel.getHotelPhotoUrl()}" class="card-img-top" alt="${hotel.hotelName} Image">
                            <div class="card-body">
                                <h5 class="card-title">${hotel.hotelName}</h5>
                                <p class="card-text">${hotel.hotelAddress}</p>
                                <p class="card-text">Rating: ${hotel.hotelRating}</p>
                                <p class="card-text">Amenities: ${hotel.hotelAmenities}</p>
                                <p class="card-text">Price: ₹${hotel.roomPrice} per night</p>
                                <a href="${pageContext.request.contextPath}/HotelSingleViewServlet?hotelId=${hotel.hotelId}"><button class="btn btn-primary">Book Now</button></a>
                            </div>
                        </div>
                    </div>
                </c:forEach>

            </div>
        </div>        <!-- Hotel Listings End -->



    </div>
</div>
<!-- Destination Start -->


<!-- Footer Start -->
<%@ include file="footer.jsp" %>
<!-- Footer End -->


<!-- Back to Top -->
<a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>


<%--<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>--%>
<script src="${pageContext.request.contextPath}/home/assets/JS/main.js"></script>
</body>

</html>