<%--
  Created by IntelliJ IDEA.
  User: youssef ayman
  Date: 5/10/2024
  Time: 5:45 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<form action="/blogs" method="post">
    <input placeholder="title" name="title"/>
    <input placeholder="content" name="content"/>
    <button type="submit">Submit</button>
</form>

${message}

</body>
</html>
