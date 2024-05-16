package com.blog_post.quill.Servlets;

import com.blog_post.quill.Interfaces.BlogPostDAO;
import com.blog_post.quill.Models.Post;
import com.blog_post.quill.Services.CachedPostService;
import com.blog_post.quill.Services.PostService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.time.Duration;
import java.util.List;

@WebServlet("/blogs")
public class PostServlet extends HttpServlet {
    private static PostService postService;
    private static BlogPostDAO cacheDao;
    Duration ttl = Duration.ofMinutes(1);

    public PostServlet(){
        this.cacheDao = new CachedPostService(new PostService(), ttl);
        this.postService = new PostService();
    }

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

        resp.sendRedirect("/blogs");
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();

        var userSession = session.getAttribute("userId");

        if(userSession == null){
            req.getRequestDispatcher("/login").forward(req, resp);
        }

        List<Post> posts;

        try {
            posts = postService.getAllBlogs();

            if(posts.isEmpty()){
                req.setAttribute("message", "No Blogs Found");
            }else {
                req.setAttribute("posts", posts);
            }

            req.getRequestDispatcher("/Home.jsp").forward(req, resp);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }


    }
}
