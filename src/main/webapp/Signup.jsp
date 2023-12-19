<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hotel Management System</title>
    <link rel="stylesheet" href="./assets/auth_style.css">
    <script src="auth.js"></script>
</head>
<body>
<div class="form">
    <div class="form_content">
        <header>Sign Up</header>
        <form action="save-controller" method="Post" onsubmit="validate(event)">
            <div class="field input_field">
                <input type="text" placeholder="Name" name="name" id="name">
            </div>
            <div class="field input_field">
                <input  type="text" placeholder="Email" name="email" id="email">
            </div>
            <div class="field input_field">
                <input type="password" name="password" id="password" placeholder="password">
            </div>
            <div class="field button">
                <button type="submit">Sign Up</button>
            </div>
            <div class="link">
                <span>Already have an account?<a href="Signin.jsp" class="sign in">Sign in</a></span>
            </div>
        </form>
    </div>
</div>

</body>
</html>
