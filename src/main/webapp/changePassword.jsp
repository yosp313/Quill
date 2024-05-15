<%--
  Created by IntelliJ IDEA.
  User: hussenarafa
  Date: 02/05/2024
  Time: 1:43 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
<form action="/changePassword" method="post">
    <input type="hidden" name="_method" value="put">
    <label>Email</label>
    <input type="email" name="email" id="mail">
    <br>
    <label>Password</label>
    <input type="password" name="newPassword" id="nPassword">
    <br>
    <button type="submit">Change</button>
</body>
</html>
