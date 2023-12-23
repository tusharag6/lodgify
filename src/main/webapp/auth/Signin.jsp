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
        <header>Login</header>
        <form action="${pageContext.request.contextPath}/login" method="Post" id="login">
            <div class="field input_field">
                <label for="email"></label><input type="text" placeholder="Email" id="email" name="email">
                <div class="err_msg"></div>
            </div>
            <div class="field input_field">
                <label for="password"></label>
                <input type="password" name="password" id="password" placeholder="Password">
                <div class="err_msg"></div>
            </div>
            <div class="link">
                <a href="#" class="forgot_password"  >Forgot Password?</a>
            </div>
            <div class="field button">
                <button type="submit" >Login</button>
            </div>
            <div class="link">
                <span>Don't have an account?<a href="${pageContext.request.contextPath}/auth/Signup.jsp" class="sign in">Sign Up</a></span>
            </div>
        </form>
    </div>
</div>
<script src="${pageContext.request.contextPath}/auth/login.js"></script>
</body>
</html>
