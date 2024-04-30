<%--
  Created by IntelliJ IDEA.
  User: hussenarafa
  Date: 28/04/2024
  Time: 3:54 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <form action="/register" method="post">
        <label>E-Mail</label>
        <input type="email" name="email" id="mail">
        <br>
        <label>User Name</label>
        <input type="text" name="userName" id="Name">
        <br>
        <label>Password</label>
        <input type="password" name="password" id="pass">
        <br>
        <label>Confirm Password</label>
        <input type="Password" name="confirmPassword" id="confirmPass">
        <br>
        <p>${error}</p>
        <br>
        <button type="submit">Register</button>
    </form>
</body>
</html>
