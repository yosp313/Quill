package com.blog_post.quill.Servlets;

import com.blog_post.quill.Models.User;
import com.blog_post.quill.Services.UserService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.SQLException;

@WebServlet ("/DeleteAcc")
public class DeleteAccServlet extends HttpServlet {
    @Override
    protected void dodelete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Cookie[] cookies = request.getCookies();
        Cookie userCookie = null;
        if (cookies != null) {
            for (Cookie cookie : cookies){
                if (cookie.getName().equals("email")){
                    userCookie = cookie;
                }
            }
        }
        String userEmail = userCookie.getValue();
        UserService userService = new UserService();

        try{
            User user = userService.GetUser(userEmail);
            String password = user.getPassword();
            String passwordChecker = request.getParameter("password");
            if (passwordChecker.equals(password)){
                userService.deleteUser(userEmail);
            }

        }
        catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        getServletContext().getRequestDispatcher("/MainPage.jsp").forward(request, response);
    }
}
