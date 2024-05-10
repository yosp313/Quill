<%@ page import="com.blog_post.quill.Models.Post" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: youssef ayman
  Date: 4/29/2024
  Time: 6:10 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<button><a href="postForm.jsp">New Post</a></button>
<ul>
    <% List<Post> blogs = (List<Post>) request.getAttribute("posts"); %>
    <% for (Post blog : blogs) {%>
    <li>
        <h2><%= blog.getTitle() %></h2>
        <p><%= blog.getContent() %></p>
    </li>
    <%}%>
</ul>
</body>
</html>
