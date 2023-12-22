<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/admin/assets/css/sidebar.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/admin/assets/css/hotel.css" />
    <title>Hotel Management Admin Panel</title>
</head>
<body>
<div class="container">
    <%@ include file="sidebar.jsp" %>
    <div class="content">
        <h1>Hotel List</h1>
        <table class="hotel-table">
            <thead>
            <tr>
                <th>Hotel ID</th>
                <th>Hotel Name</th>
                <th>Location</th>
                <th>Rating</th>
                <th>Action</th> <!-- New Action column -->
                <!-- Add more columns as needed -->
            </tr>
            </thead>
            <tbody>
                <tr class="hotel-item">
                    <td>1</td>
                    <td>Test</td>
                    <td>BBS</td>
                    <td>5</td>
                </tr>
            </tbody>
        </table>
    </div>
</div>
</body>
</html>
