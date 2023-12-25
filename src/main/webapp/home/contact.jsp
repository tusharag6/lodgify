<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <title>Lodgify</title>
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta content="" name="keywords">
  <meta content="" name="description">

  <!-- Favicon -->
  <link href="assets/img/favicon.icon" rel="icon">

  <!-- Google Web Fonts -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600&family=Nunito:wght@600;700;800&display=swap" rel="stylesheet">

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

  <div class="container-fluid bg-primary py-5 mb-5 hero-header" style="background: linear-gradient(rgba(20, 20, 31, .7), rgba(20, 20, 31, .7)), url(${pageContext.request.contextPath}/home/assets/img/bg-hero4.jpg); background-position: center center; background-repeat: no-repeat; background-size: cover">
    <div class="container py-5">
      <div class="row justify-content-center py-5">
        <div class="col-lg-10 pt-lg-5 mt-lg-5 text-center">
          <h1 class="display-3 text-white animated slideInDown">Contact Us</h1>
          <nav aria-label="breadcrumb">
            <ol class="breadcrumb justify-content-center">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item text-white active" aria-current="page">Contact</li>
            </ol>
          </nav>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- Navbar & Hero End -->


<!-- Contact Start -->
<div class="container-xxl py-5">
  <div class="container">
    <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
      <h6 class="section-title bg-white text-center text-primary px-3">Contact Us</h6>
      <h1 class="mb-5">Contact For Any Query</h1>
    </div>
    <div class="row g-4">
      <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
        <h5>Get In Touch</h5>
        <p class="mb-4">Using the details mentioned below.</p>
        <div class="d-flex align-items-center mb-4">
          <div class="d-flex align-items-center justify-content-center flex-shrink-0 bg-primary" style="width: 50px; height: 50px;">
            <i class="fa fa-map-marker-alt text-white"></i>
          </div>
          <div class="ms-3">
            <h5 class="text-primary">Office</h5>
            <p class="mb-0">Bhubaneswar</p>
          </div>
        </div>
        <div class="d-flex align-items-center mb-4">
          <div class="d-flex align-items-center justify-content-center flex-shrink-0 bg-primary" style="width: 50px; height: 50px;">
            <i class="fa fa-phone-alt text-white"></i>
          </div>
          <div class="ms-3">
            <h5 class="text-primary">Mobile</h5>
            <p class="mb-0">+012 345 67890</p>
          </div>
        </div>
        <div class="d-flex align-items-center">
          <div class="d-flex align-items-center justify-content-center flex-shrink-0 bg-primary" style="width: 50px; height: 50px;">
            <i class="fa fa-envelope-open text-white"></i>
          </div>
          <div class="ms-3">
            <h5 class="text-primary">Email</h5>
            <p class="mb-0">info@example.com</p>
          </div>
        </div>
      </div>
      <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
        <iframe class="position-relative rounded w-100 h-100"
                src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d5984.176072167546!2d85.82454011530687!3d20.29605941907016!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3a19c183a7b41c0f%3A0x411e07f2da2693bb!2sBhubaneswar%2C%20Odisha!5e0!3m2!1sen!2sin!4v1603794481507!5m2!1sen!2sin"
                frameborder="0" style="min-height: 300px; border:0;" allowfullscreen="" aria-hidden="false"
                tabindex="0"></iframe>
      </div>
      <div class="col-lg-4 col-md-12 wow fadeInUp" data-wow-delay="0.5s">
        <form>
          <div class="row g-3">
            <div class="col-md-6">
              <div class="form-floating">
                <input type="text" class="form-control" id="name" placeholder="Your Name">
                <label for="name">Your Name</label>
              </div>
            </div>
            <div class="col-md-6">
              <div class="form-floating">
                <input type="email" class="form-control" id="email" placeholder="Your Email">
                <label for="email">Your Email</label>
              </div>
            </div>
            <div class="col-12">
              <div class="form-floating">
                <input type="text" class="form-control" id="subject" placeholder="Subject">
                <label for="subject">Subject</label>
              </div>
            </div>
            <div class="col-12">
              <div class="form-floating">
                <textarea class="form-control" placeholder="Leave a message here" id="message" style="height: 100px"></textarea>
                <label for="message">Message</label>
              </div>
            </div>
            <div class="col-12">
              <button class="btn btn-primary w-100 py-3" type="submit">Send Message</button>
            </div>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>
<!-- Contact End -->


<!-- Footer Start -->
<%@ include file="footer.jsp" %>
<!-- Footer End -->


<!-- Back to Top -->
<a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>


<!-- JavaScript Libraries -->

<!-- Template Javascript -->
<script src="${pageContext.request.contextPath}/home/assets/JS/main.js"></script>
</body>

</html>