package com.blog_post.quill.Servlets;

import com.blog_post.quill.Models.Post;
import com.blog_post.quill.Services.PostService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;

@WebServlet("/blogs")
public class PostServlet extends HttpServlet {
    private static PostService postService = new PostService();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String title = req.getParameter("title");
        String content = req.getParameter("content");

        HttpSession session = req.getSession();

        Integer user_id = (Integer) session.getAttribute("userId");

        System.out.println(title + " " + content + " " + user_id);




        try {
            postService.postBlog(title, content, user_id);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        req.setAttribute("message", "Blog Created Successfully!");

        req.getRequestDispatcher("/posts.jsp").forward(req, resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        try {
            List<Post> posts = postService.getAllBlogs();

            req.setAttribute("posts", posts);

            req.getRequestDispatcher("/posts.jsp").forward(req, resp);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //
    }

    @Override
    protected void doPut(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //
    }
}
