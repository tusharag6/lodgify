<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hotel Management System</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/auth/assets/auth.css">
    <style>
        .input_field.success input {
            border-color: #09c372;
        }
        .input_field.error input {
            border-color: #ff3869;
        }
        .input_field .err_msg {
            color: #ff3869;
            font-size: 13px;
            font-weight: 300;
            height: 13px;
            margin-bottom: 12px;
        }
    </style>
</head>
<body>
<div class="form">
    <div class="form_content">
        <header>Sign Up</header>
        <form action="save-controller" method="Post" id="auth">
            <div class="field input_field">
                <label for="name"></label><input type="text" placeholder="Name" name="name" id="name">
                <div class="err_msg"></div>
            </div>
            <div class="field input_field">
                <label for="email"></label><input type="text" placeholder="Email" name="email" id="email">
                <div class="err_msg"></div>
            </div>
            <div class="field input_field">
                <label for="password"></label><input type="password" name="password" id="Password" placeholder="Password">
                <div class="err_msg"></div>
            </div>
            <div class="field button">
                <button type="submit">Sign Up</button>
            </div>
            <div class="link">
                <span>Already have an account?<a href="${pageContext.request.contextPath}/auth/index.jsp" class="sign in">Sign in</a></span>
            </div>
        </form>
    </div>
</div>
<script defer src="auth.js"></script>
</body>
</html>
