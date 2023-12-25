<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    if (session.getAttribute("userName") != "codedawgs") {
        response.sendRedirect(request.getContextPath()+"/home/index.jsp");
    }
%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@300;400;500;600;700;800&display=swap" rel="stylesheet">
    <title>Edit Customer</title>
    <style>
        body {
            background: #14141f;
            font-family: 'Nunito', sans-serif;
            color: white;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .form-container {
            background: #292934;
            border-radius: 8px;
            padding: 20px;
            width: 400px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        label {
            display: block;
            margin-bottom: 8px;
        }

        input {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #555;
            border-radius: 5px;
            background-color: #14141f;
            color: white;
        }

        button {
            background: #bfd788;
            color: black;
            font-size: 1.2rem;
            border: none;
            border-radius: 5px;
            padding: 10px 30px;
            cursor: pointer;
            margin: 20px 0 0 185px;
        }
    </style>
</head>
<body>
<div class="form-container">
    <h1>Edit Customer</h1>
    <form action="updateCustomer" method="post">
        <label for="customerId">Customer ID</label>
        <input type="text" id="customerId" name="customerId" value="1" readonly>

        <label for="name">Name</label>
        <input type="text" id="name" name="name" value="John Doe" required>

        <label for="email">Email</label>
        <input type="email" id="email" name="email" value="john@example.com" required>

        <label for="phone">Phone</label>
        <input type="tel" id="phone" name="phone" value="(555) 123-4567" required>

        <label for="address">Address</label>
        <input type="text" id="address" name="address" value="123 Main St, City" required>

        <button type="submit">Update Customer</button>
    </form>
</div>
</body>
</html>
