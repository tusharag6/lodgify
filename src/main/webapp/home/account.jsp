<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    if (session.getAttribute("userName") == null) {
        response.sendRedirect(request.getContextPath()+"/home/index.jsp");
    }
    boolean isLoggedIn = (session != null && session.getAttribute("user") != null);
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
</head>

<body>
<!-- Navbar & Hero Start -->
<div class="container-fluid position-relative p-0">
    <nav class="navbar navbar-expand-lg navbar-light px-4 px-lg-5 py-3 py-lg-0">
        <a href="" class="navbar-brand p-0">
            <h1 class="text-primary m-0"><i class="fa fa-map-marker-alt me-3"></i>Lodgify</h1>
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
            <span class="fa fa-bars"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
            <div class="navbar-nav ms-auto py-0">
                <a href="${pageContext.request.contextPath}/home/index.jsp" class="nav-item nav-link">Home</a>
                <a href="${pageContext.request.contextPath}/home/about.jsp" class="nav-item nav-link">About</a>
                <a href="${pageContext.request.contextPath}/home/destination.jsp" class="nav-item nav-link">Destination</a>
                <a href="${pageContext.request.contextPath}/home/contact.jsp" class="nav-item nav-link">Contact</a>
            </div>
            <% if (!isLoggedIn) { %>
            <a href="${pageContext.request.contextPath}/auth/Signup.jsp" class="btn btn-primary rounded-pill py-2 px-4">Register</a>
            <% } else { %>
            <a href="${pageContext.request.contextPath}/logout" class="btn btn-primary rounded-pill py-2 px-4">Logout</a>
            <% } %>
        </div>
    </nav>

    <div class="container-fluid bg-primary py-5 mb-5 hero-header" style="background: linear-gradient(rgba(20, 20, 31, .7), rgba(20, 20, 31, .7)), url(${pageContext.request.contextPath}/home/assets/img/bg-hero2.jpg); background-position: center center; background-repeat: no-repeat; background-size: cover">
        <div class="container py-5">
            <div class="row justify-content-center py-5">
                <div class="col-lg-10 pt-lg-5 mt-lg-5 text-center">
                    <h1 class="display-3 text-white mb-3 animated slideInDown">Your Account</h1>
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb justify-content-center">
                            <li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/home/index.jsp">Home</a></li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Navbar & Hero End -->

<!-- Package Start -->
<div class="container-xxl py-5">
    <div class="container">
        <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
            <h6 class="section-title bg-white text-center text-primary px-3 mb-5">Your Booking History</h6>
        </div>
        <div class="row g-4 justify-content-center">
            <c:forEach var="order" items="${history}">
                <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                    <div class="package-item">
                        <div class="overflow-hidden">
                            <img class="img-fluid" src="${order.getHotelPhotoUrl()}" alt="">
                        </div>
                        <div class="d-flex border-bottom">
                            <small class="flex-fill text-center border-end py-2"><i class="fa fa-map-marker-alt text-primary me-2"></i>${order.getNumberOfRooms()} Rooms</small>
                            <small class="flex-fill text-center border-end py-2"><i class="fa fa-calendar-alt text-primary me-2"></i>${order.getCheckInDate()}</small>
                            <small class="flex-fill text-center py-2"><i class="fa fa-user text-primary me-2"></i>${order.getNumberOfGuests()} Person</small>
                        </div>
                        <div class="text-center p-4">
                            <h3 class="mb-0">${order.getHotelName()}</h3>
                            <div class="mb-3">
                                <small class="text-primary">₹${order.getTotalPrice()}</small>
                            </div>
                            <p></p>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
</div>
<!-- Package End -->

<!-- Footer Start -->
<%@ include file="footer.jsp" %>
<!-- Footer End -->


<!-- Back to Top -->
<a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>



<!-- Template Javascript -->
<script src="${pageContext.request.contextPath}/home/assets/JS/main.js"></script>


</body>

</html>