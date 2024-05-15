package com.blog_post.quill.Servlets;

import com.blog_post.quill.Models.Post;
import com.blog_post.quill.Services.PostService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.SQLException;


@WebServlet("/singlePost")
public class SinglePostServlet extends HttpServlet {
    private static PostService postService;

    public SinglePostServlet() {
        this.postService = new PostService();
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String postId = req.getParameter("postId");
        Post post;

        try{
            post = postService.getBlog(postId);

            if(post.getContent() == null){
                req.setAttribute("message", "No Blogs Found");
            }else {
                req.setAttribute("post", post);
            }

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        req.getRequestDispatcher("BigPage.jsp").forward(req, resp);
    }
}
