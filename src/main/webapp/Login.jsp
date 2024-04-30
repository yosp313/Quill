<%--
  Created by IntelliJ IDEA.
  User: hussenarafa
  Date: 30/04/2024
  Time: 5:29 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
</head>
<body>
    <form action="/login" method="post">
        <label>Email</label>
        <input type="text" name="email" id="mail">
        <br>
        <label>Password</label>
        <input type="password" name="password" id="pass">
        <br>
        <p>${error}</p>
        <br>
        <button type="submit">Login</button>
    </form>
</body>
</html>
