<%--
  Created by IntelliJ IDEA.
  User: hussenarafa
  Date: 01/05/2024
  Time: 3:07 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
    <form action="/changeUserName" method="put">
        <label>Email</label>
        <input type="email" name="email" id="mail">
        <br>
        <label>New User Name</label>
        <input type="text" name="newUserName" id="nUserName">
        <br>
        <button type="submit">Change</button>
    </form>
</body>
</html>
