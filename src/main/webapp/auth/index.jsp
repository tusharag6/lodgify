<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <title>JSP - Hello World</title>
</head>
<body>
<h1><%
      HttpSession ses = request.getSession(false);
      String name= (String) ses.getAttribute("name");
      out.print(name);
    %>
</h1>
<br/>
</body>
</html>