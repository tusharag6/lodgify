<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hotel Management System</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/auth/assets/auth.css">
</head>
<body>
<div class="form">
    <div class="form_content">
        <header>Login</header>
        <form action="" method="Post">
            <div class="field input_field">
                <label>
                    <input  type="text" placeholder="Email" name="email" value=<%=request.getParameter("email") == null ? "" :request.getParameter("email")  %>>
                </label>
            </div>
            <div class="field input_field">
                <label for="password"></label>
                <input type="password" name="password" id="password" placeholder="Password">
            </div>
            <div class="link">
                <a href="#" class="forgot_password"  >Forgot Password?</a>
            </div>
            <div class="field button">
                <button type="submit" >Login</button>
            </div>
            <div class="link">
                <span>Don't have an account?<a href="Signup.jsp" class="sign in">Sign Up</a></span>
            </div>
        </form>
    </div>
</div>
<script src="auth.js"></script>
</body>
</html>
