package com.blog_post.quill.Servlets;

import com.blog_post.quill.Models.User;
import com.blog_post.quill.Services.UserService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.*;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/profile")
public class ProfileServlet extends HttpServlet {
    UserService userService;

    public ProfileServlet(){
        userService = new UserService();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();

        String userEmail = (String) session.getAttribute("userEmail");

        if(userEmail == null){
            req.getRequestDispatcher("/login").forward(req, resp);
        }

        try{
            User user = userService.GetUser(userEmail);

            req.setAttribute("user", user);
            req.getRequestDispatcher("Profile.jsp").forward(req, resp);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }


    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();

        String userEmail = (String) session.getAttribute("userEmail");

        String password = req.getParameter("password");
        String username = req.getParameter("username");

        try{
            User user = userService.GetUser(userEmail);

            if(password.length() >= 8 ){
                user.setPassword(password);
            }else {
                req.setAttribute("error", "Password should be at least 8 characters");
            }

            if(username.length() >= 4 ){
                user.setUsername(username);
            }else {
                req.setAttribute("error", "Username should be at least 4 characters");
            }

            userService.updateUser(user);

            req.getRequestDispatcher("/profile").forward(req, resp);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
