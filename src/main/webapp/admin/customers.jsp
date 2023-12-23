<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@300;400;500;600;700;800&display=swap" rel="stylesheet">
    <title>Customer Management Admin Panel</title>
    <style>
        <%@ include file="assets/css/sidebar.css"%>
        <%@ include file="assets/css/customer.css"%>
    </style>
    <script src="https://kit.fontawesome.com/ac01cc78a8.js" crossorigin="anonymous"></script>
</head>
<body>
<div class="container">
    <%@ include file="sidebar.jsp" %>
    <div class="content">
        <div class="header">
            <h1>Customer Management</h1>
            <div class="crud-buttons">
                <button>
                    <i class="fa-regular fa-square-plus" style="margin-right: 5px; border-radius: 50px"></i> Add Customer
                </button>
            </div>
        </div>
        <div class="table-card">
            <table class="customer-table">
                <thead>
                <tr>
                    <th>Customer ID</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Phone</th>
                    <th>Address</th>
                    <th>Membership Level</th>
                    <th>Action</th> <!-- New Action column -->
                    <!-- Add more columns as needed -->
                </tr>
                </thead>
                <tbody>
                <%-- Add customer items dynamically based on your data --%>
                <tr class="customer-item">
                    <td>1</td>
                    <td>John Doe</td>
                    <td>john@example.com</td>
                    <td>(555) 123-4567</td>
                    <td>123 Main St, City</td>
                    <td>Gold</td>
                    <td>
                        <i class="fas fa-edit" title="Edit" style="margin-right: 10px"></i>
                        <i class="fas fa-trash-alt" title="Delete"></i>
                    </td>
                </tr>
                <%-- Add more customer items as needed --%>
                </tbody>
            </table>
        </div>
    </div>
</div>
</body>
</html>
