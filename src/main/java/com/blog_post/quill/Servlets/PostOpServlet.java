package com.blog_post.quill.Servlets;

import com.blog_post.quill.Services.CachedPostService;
import com.blog_post.quill.Services.PostService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/postop")
public class PostOpServlet extends HttpServlet {
    static PostService postService;
    static CachedPostService cachedPostService;

    public PostOpServlet() {
        this.postService = new PostService();
        this.cachedPostService = new CachedPostService(new PostService());

        postService.registerObserver(cachedPostService);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String postId = req.getParameter("postId");

        try{
            postService.deletePost(postId);

            req.getRequestDispatcher("/myblogs").forward(req, resp);
        }catch (SQLException e){
            e.printStackTrace();
        }
    }
}
