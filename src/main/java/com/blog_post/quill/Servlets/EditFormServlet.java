package com.blog_post.quill.Servlets;

import com.blog_post.quill.Models.Post;
import com.blog_post.quill.Services.PostService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/edit-form")
public class EditFormServlet extends HttpServlet {
    PostService postService;

    public EditFormServlet() {
        postService = new PostService();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Post post;

        String postId = req.getParameter("postId");

        try{
            post = postService.getBlog(postId);

            req.setAttribute("post", post);
            req.getRequestDispatcher("/EditForm.jsp").forward(req, resp);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }


    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Post post;

        String postId = req.getParameter("postId");
        String postTitle = req.getParameter("postTitle");
        String postContent = req.getParameter("postContent");

        try{
            post = postService.getBlog(postId);
            post.setTitle(postTitle);
            post.setContent(postContent);
            postService.updatePost(post);

            req.getRequestDispatcher("/myblogs").forward(req, resp);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
