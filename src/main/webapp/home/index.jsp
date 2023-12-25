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

  <div class="container-fluid bg-primary py-5 mb-5 hero-header" style="background: linear-gradient(rgba(20, 20, 31, .7), rgba(20, 20, 31, .7)), url(${pageContext.request.contextPath}/home/assets/img/bg-hero2.jpg); background-position: center center; background-repeat: no-repeat; background-size: cover">
    <div class="container py-5">
      <div class="row justify-content-center py-5">
        <div class="col-lg-10 pt-lg-5 mt-lg-5 text-center">
          <h1 class="display-3 text-white mb-3 animated slideInDown">Enjoy Your Vacation With Us</h1>
          <p class="fs-4 text-white mb-4 animated slideInDown">Discover a world of bliss and excitement with us. Your dream vacation is just a click away – explore our website now for an unforgettable escape.</p>
          <div class="position-relative w-75 mx-auto animated slideInDown">
            <form action="${pageContext.request.contextPath}/SearchServlet" method="get">
              <input class="form-control border-0 rounded-pill w-100 py-3 ps-4 pe-5" type="text" name="searchTerm" placeholder="Eg: Thailand">
              <a href="${pageContext.request.contextPath}/home/page.jsp"><button type="submit" class="btn btn-primary rounded-pill py-2 px-4 position-absolute top-0 end-0 me-2" style="margin-top: 7px;">Search</button></a>
            </form>
          </div>
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
      <div class="col-lg-6 wow fadeInUp" data-wow-delay="0.1s" style="min-height: 400px;">
        <div class="position-relative h-100">
          <img class="img-fluid position-absolute w-100 h-100" src="${pageContext.request.contextPath}/home/assets/img/about.jpg" alt="" style="object-fit: cover;">
        </div>
      </div>
      <div class="col-lg-6 wow fadeInUp" data-wow-delay="0.3s">
        <h6 class="section-title bg-white text-start text-primary pe-3">About Us</h6>
        <h1 class="mb-4">Welcome to <span class="text-primary">Lodgify</span></h1>
        <p class="mb-4">
          Welcome to Lodgify – Your Gateway to Unforgettable Stays! Explore a world of comfort and convenience as we redefine hospitality. Whether you're a traveler seeking the perfect getaway or a host looking to elevate your property, our website is your one-stop destination for exceptional experiences</p>
        <p class="mb-4">Browse through our curated selection of accommodations, discover travel inspiration, and unlock the secrets to seamless hosting. Your journey to memorable stays begins here at Lodgify – where every click opens the door to a world of unparalleled hospitality. Start exploring now</p>
        <div class="row gy-2 gx-4 mb-4">
          <div class="col-sm-6">
            <p class="mb-0"><i class="fa fa-arrow-right text-primary me-2"></i>First Class Stay</p>
          </div>
          <div class="col-sm-6">
            <p class="mb-0"><i class="fa fa-arrow-right text-primary me-2"></i>Handpicked Hotels</p>
          </div>
          <div class="col-sm-6">
            <p class="mb-0"><i class="fa fa-arrow-right text-primary me-2"></i>5 Star Accommodations</p>
          </div>
          <div class="col-sm-6">
            <p class="mb-0"><i class="fa fa-arrow-right text-primary me-2"></i>Best Customer Satisfaction</p>
          </div>
          <div class="col-sm-6">
            <p class="mb-0"><i class="fa fa-arrow-right text-primary me-2"></i>150 Premium Hotels</p>
          </div>
          <div class="col-sm-6">
            <p class="mb-0"><i class="fa fa-arrow-right text-primary me-2"></i>24/7 Service</p>
          </div>
        </div>
        <a class="btn btn-primary py-3 px-5 mt-2" href="">Read More</a>
      </div>
    </div>
  </div>
</div>
<!-- About End -->


<!-- Service Start -->
<div class="container-xxl py-5">
  <div class="container">
    <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
      <h6 class="section-title bg-white text-center text-primary px-3">Services</h6>
      <h1 class="mb-5">Our Services</h1>
    </div>
    <div class="row g-4">
      <div class="col-lg-3 col-sm-6 wow fadeInUp" data-wow-delay="0.1s">
        <div class="service-item rounded pt-3">
          <div class="p-4">
            <i class="fa fa-3x fa-globe text-primary mb-4"></i>
            <h5>WorldWide Hotels</h5>
            <p>Discover the world with our extensive collection of hotels, offering global comfort and luxury at your fingertips.</p>
          </div>
        </div>
      </div>
      <div class="col-lg-3 col-sm-6 wow fadeInUp" data-wow-delay="0.3s">
        <div class="service-item rounded pt-3">
          <div class="p-4">
            <i class="fa fa-3x fa-hotel text-primary mb-4"></i>
            <h5>Hotel Reservation</h5>
            <p>Book your perfect stay ensuring a world of comfort awaits wherever your travels take you.</p>
          </div>
        </div>
      </div>
      <div class="col-lg-3 col-sm-6 wow fadeInUp" data-wow-delay="0.5s">
        <div class="service-item rounded pt-3">
          <div class="p-4">
            <i class="fa fa-3x fa-user text-primary mb-4"></i>
            <h5>Travel Guides</h5>
            <p>Embark on unforgettable journeys your passport to discovering the world's hidden gems .</p>
          </div>
        </div>
      </div>
      <div class="col-lg-3 col-sm-6 wow fadeInUp" data-wow-delay="0.7s">
        <div class="service-item rounded pt-3">
          <div class="p-4">
            <i class="fa fa-3x fa-cog text-primary mb-4"></i>
            <h5>24/7 Management</h5>
            <p>Experience peace of mind with our 24/7 management services, ensuring seamless support .</p>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- Service End -->


<!-- Destination Start -->
<div class="container-xxl py-5 destination">
  <div class="container">
    <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
      <h6 class="section-title bg-white text-center text-primary px-3">Hotels</h6>
      <h1 class="mb-5">Popular Hotels</h1>
    </div>
    <div class="row g-3">
      <div class="col-lg-7 col-md-6">
        <div class="row g-3">
          <div class="col-lg-12 col-md-12 wow zoomIn" data-wow-delay="0.1s">
            <a class="position-relative d-block overflow-hidden" href="${pageContext.request.contextPath}/SearchServlet?searchTerm=mumbai">
              <img class="img-fluid" src="${pageContext.request.contextPath}/home/assets/img/destination-1.jpg" alt="">
              <div class="bg-white text-danger fw-bold position-absolute top-0 start-0 m-3 py-1 px-2">30% OFF</div>
              <div class="bg-white text-primary fw-bold position-absolute bottom-0 end-0 m-3 py-1 px-2">Mumbai</div>
            </a>
          </div>
          <div class="col-lg-6 col-md-12 wow zoomIn" data-wow-delay="0.3s">
            <a class="position-relative d-block overflow-hidden" href="${pageContext.request.contextPath}/SearchServlet?searchTerm=delhi">
              <img class="img-fluid" src="${pageContext.request.contextPath}/home/assets/img/destination-2.jpg" alt="">
              <div class="bg-white text-danger fw-bold position-absolute top-0 start-0 m-3 py-1 px-2">25% OFF</div>
              <div class="bg-white text-primary fw-bold position-absolute bottom-0 end-0 m-3 py-1 px-2">Delhi</div>
            </a>
          </div>
          <div class="col-lg-6 col-md-12 wow zoomIn" data-wow-delay="0.5s">
            <a class="position-relative d-block overflow-hidden" href="${pageContext.request.contextPath}/SearchServlet?searchTerm=kolkata">
              <img class="img-fluid" src="${pageContext.request.contextPath}/home/assets/img/destination-3.jpg" alt="">
              <div class="bg-white text-danger fw-bold position-absolute top-0 start-0 m-3 py-1 px-2">35% OFF</div>
              <div class="bg-white text-primary fw-bold position-absolute bottom-0 end-0 m-3 py-1 px-2">Kolkata</div>
            </a>
          </div>
        </div>
      </div>
      <div class="col-lg-5 col-md-6 wow zoomIn" data-wow-delay="0.7s" style="min-height: 350px;">
        <a class="position-relative d-block h-100 overflow-hidden" href="${pageContext.request.contextPath}/SearchServlet?searchTerm=chennai">
          <img class="img-fluid position-absolute w-100 h-100" src="${pageContext.request.contextPath}/home/assets/img/destination-4.jpg" alt="" style="object-fit: cover;">
          <div class="bg-white text-danger fw-bold position-absolute top-0 start-0 m-3 py-1 px-2">20% OFF</div>
          <div class="bg-white text-primary fw-bold position-absolute bottom-0 end-0 m-3 py-1 px-2">Chennai</div>
        </a>
      </div>
    </div>
  </div>
</div>
<!-- Destination Start -->


<!-- Package Start -->
<div class="container-xxl py-5">
  <div class="container">
    <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
      <h6 class="section-title bg-white text-center text-primary px-3">Packages</h6>
      <h1 class="mb-5">Awesome Packages</h1>
    </div>
    <div class="row g-4 justify-content-center">
      <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
        <div class="package-item">
          <div class="overflow-hidden">
            <img class="img-fluid" src="${pageContext.request.contextPath}/home/assets/img/package-1.jpg" alt="">
          </div>
          <div class="d-flex border-bottom">
            <small class="flex-fill text-center border-end py-2"><i class="fa fa-map-marker-alt text-primary me-2"></i>Thailand</small>
            <small class="flex-fill text-center border-end py-2"><i class="fa fa-calendar-alt text-primary me-2"></i>3 days</small>
            <small class="flex-fill text-center py-2"><i class="fa fa-user text-primary me-2"></i>2 Person</small>
          </div>
          <div class="text-center p-4">
            <h3 class="mb-0">$149.00</h3>
            <div class="mb-3">
              <small class="fa fa-star text-primary"></small>
              <small class="fa fa-star text-primary"></small>
              <small class="fa fa-star text-primary"></small>
              <small class="fa fa-star text-primary"></small>
              <small class="fa fa-star text-primary"></small>
            </div>
            <p>Explore our curated packages, each designed to turn moments into memories. Unwind, indulge, and let us craft the perfect experience for you.</p>
            <div class="d-flex justify-content-center mb-2">
              <a href="#" class="btn btn-sm btn-primary px-3 border-end" style="border-radius: 30px 0 0 30px;">Read More</a>
              <a href="#" class="btn btn-sm btn-primary px-3" style="border-radius: 0 30px 30px 0;">Book Now</a>
            </div>
          </div>
        </div>
      </div>
      <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
        <div class="package-item">
          <div class="overflow-hidden">
            <img class="img-fluid" src="${pageContext.request.contextPath}/home/assets/img/package-2.jpg" alt="">
          </div>
          <div class="d-flex border-bottom">
            <small class="flex-fill text-center border-end py-2"><i class="fa fa-map-marker-alt text-primary me-2"></i>Indonesia</small>
            <small class="flex-fill text-center border-end py-2"><i class="fa fa-calendar-alt text-primary me-2"></i>3 days</small>
            <small class="flex-fill text-center py-2"><i class="fa fa-user text-primary me-2"></i>2 Person</small>
          </div>
          <div class="text-center p-4">
            <h3 class="mb-0">$139.00</h3>
            <div class="mb-3">
              <small class="fa fa-star text-primary"></small>
              <small class="fa fa-star text-primary"></small>
              <small class="fa fa-star text-primary"></small>
              <small class="fa fa-star text-primary"></small>
              <small class="fa fa-star text-primary"></small>
            </div>
            <p>Explore our curated packages, each designed to turn moments into memories. Unwind, indulge, and let us craft the perfect experience for you.</p>
            <div class="d-flex justify-content-center mb-2">
              <a href="#" class="btn btn-sm btn-primary px-3 border-end" style="border-radius: 30px 0 0 30px;">Read More</a>
              <a href="#" class="btn btn-sm btn-primary px-3" style="border-radius: 0 30px 30px 0;">Book Now</a>
            </div>
          </div>
        </div>
      </div>
      <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.5s">
        <div class="package-item">
          <div class="overflow-hidden">
            <img class="img-fluid" src="${pageContext.request.contextPath}/home/assets/img/package-3.jpg" alt="">
          </div>
          <div class="d-flex border-bottom">
            <small class="flex-fill text-center border-end py-2"><i class="fa fa-map-marker-alt text-primary me-2"></i>Malaysia</small>
            <small class="flex-fill text-center border-end py-2"><i class="fa fa-calendar-alt text-primary me-2"></i>3 days</small>
            <small class="flex-fill text-center py-2"><i class="fa fa-user text-primary me-2"></i>2 Person</small>
          </div>
          <div class="text-center p-4">
            <h3 class="mb-0">$189.00</h3>
            <div class="mb-3">
              <small class="fa fa-star text-primary"></small>
              <small class="fa fa-star text-primary"></small>
              <small class="fa fa-star text-primary"></small>
              <small class="fa fa-star text-primary"></small>
              <small class="fa fa-star text-primary"></small>
            </div>
            <p>Explore our curated packages, each designed to turn moments into memories. Unwind, indulge, and let us craft the perfect experience for you.</p>
            <div class="d-flex justify-content-center mb-2">
              <a href="#" class="btn btn-sm btn-primary px-3 border-end" style="border-radius: 30px 0 0 30px;">Read More</a>
              <a href="#" class="btn btn-sm btn-primary px-3" style="border-radius: 0 30px 30px 0;">Book Now</a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- Package End -->

<!-- Testimonial Start -->
<div class="container-xxl py-5 wow fadeInUp" data-wow-delay="0.1s">
  <div class="container">
    <div class="text-center">
      <h6 class="section-title bg-white text-center text-primary px-3">Testimonial</h6>
      <h1 class="mb-5">Our Clients Say!!!</h1>
    </div>

    <!-- Bootstrap Carousel -->
    <div id="testimonialCarousel" class="carousel slide" data-ride="carousel" data-interval="2000">
      <div class="carousel-inner">
        <div class="carousel-item active">
          <div class="testimonial-item bg-white text-center border p-4">
            <img class="bg-white rounded-circle shadow p-1 mx-auto mb-3" src="${pageContext.request.contextPath}/home/assets/img/testimonial-1.jpg" style="width: 80px; height: 80px;">
            <h5 class="mb-0">John Doe</h5>
            <p>New York, USA</p>
            <p class="mb-0"> From the warm hospitality to the attention to detail, every moment exceeded our expectations. Thank you for making our trip truly memorable </p>
          </div>
        </div>
        <div class="carousel-item">
          <div class="testimonial-item bg-white text-center border p-4">
            <img class="bg-white rounded-circle shadow p-1 mx-auto mb-3" src="${pageContext.request.contextPath}/home/assets/img/testimonial-2.jpg" style="width: 80px; height: 80px;">
            <h5 class="mb-0">Jane Smith</h5>
            <p>Los Angeles, USA</p>
            <p class="mt-2 mb-0">Another testimonial content goes here.</p>
          </div>
        </div>

        <div class="carousel-item">
          <div class="testimonial-item bg-white text-center border p-4">
            <img class="bg-white rounded-circle shadow p-1 mx-auto mb-3" src="${pageContext.request.contextPath}/home/assets/img/testimonial-3.jpg" style="width: 80px; height: 80px;">
            <h5 class="mb-0">Alice Johnson</h5>
            <p>Chicago, USA</p>
            <p class="mt-2 mb-0">Yet another testimonial content goes here.</p>
          </div>
        </div>

        <!-- Add more carousel items as needed -->
        <div class="carousel-item">
          <div class="testimonial-item bg-white text-center border p-4">
            <img class="bg-white rounded-circle shadow p-1 mx-auto mb-3" src="${pageContext.request.contextPath}/home/assets/img/testimonial-2.jpg" style="width: 80px; height: 80px;">
            <h5 class="mb-0">John Doe</h5>
            <p>New York, USA</p>
            <p class="mt-2 mb-0"> From the warm hospitality to the attention to detail, every moment exceeded our expectations. Thank you for making our trip truly memorable</p>
          </div>
        </div>
      </div>

      <!-- Carousel Controls -->
      <a class="carousel-control-prev" href="#testimonialCarousel" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="carousel-control-next" href="#testimonialCarousel" role="button" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
    </div>
  </div>
</div>
<!-- Testimonial End -->


<!-- Footer Start -->
<%@ include file="footer.jsp" %>
<!-- Footer End -->


<!-- Back to Top -->
<a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>



<!-- Template Javascript -->
<script src="${pageContext.request.contextPath}/home/assets/JS/main.js"></script>


</body>

</html>