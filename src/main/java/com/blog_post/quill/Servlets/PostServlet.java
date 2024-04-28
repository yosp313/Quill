package com.blog_post.quill.Servlets;

import com.blog_post.quill.Services.PostService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

@WebServlet("/blogs")
public class PostServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String title = req.getParameter("title");
        String content = req.getParameter("content");
        String user_id = req.getParameter("user_id");

        System.out.println(title + " " + content + " " + user_id);

        PostService postService = new PostService();

        try {
            postService.postBlog(title, content, user_id);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        resp.setStatus(HttpServletResponse.SC_CREATED);
    }
}
