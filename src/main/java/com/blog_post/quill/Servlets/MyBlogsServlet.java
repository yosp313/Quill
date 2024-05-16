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
import java.util.List;

@WebServlet("/myblogs")
public class MyBlogsServlet extends HttpServlet {
    PostService postService;

    public MyBlogsServlet() {
        this.postService = new PostService();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Post> posts;

        HttpSession session = req.getSession();
        var userSession = session.getAttribute("userId");

        if (userSession == null) {
            req.getRequestDispatcher("/login").forward(req, resp);
        }

        Integer userId = (Integer) userSession;

        try{
            posts = postService.getMyBlogs(userId);

            if(posts.size() <= 0){
                req.setAttribute("message", "You have not created any posts yet");
            }else {
                req.setAttribute("myPosts", posts);
            }


            req.getRequestDispatcher("MyBlogs.jsp").forward(req, resp);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
