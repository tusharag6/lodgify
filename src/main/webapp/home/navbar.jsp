<%--<%@ page contentType="text/html" pageEncoding="UTF-8" %>--%>
<%
    boolean isLoggedIn = (session != null && session.getAttribute("user") != null);
%>
<nav class="navbar navbar-expand-lg navbar-light px-4 px-lg-5 py-3 py-lg-0">
    <a href="" class="navbar-brand p-0">
        <h1 class="text-primary m-0"><i class="fa fa-map-marker-alt me-3"></i>Lodgify</h1>
        <!-- <img src="img/logo.png" alt="Logo"> -->
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
        <a href="${pageContext.request.contextPath}/BookingHistoryServlet" class="btn btn-primary rounded-pill py-2 px-4">Account</a>
        <% } %>
    </div>
</nav>

