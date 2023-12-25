<%@ page import="pojo.User" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <title>JSP - Hello World</title>
</head>
<body>
<h1><%
      HttpSession ses = request.getSession();
      User user = (User) ses.getAttribute("user");
      out.print(user.getUserName());
    %>
</h1>
<br/>
</body>
</html>