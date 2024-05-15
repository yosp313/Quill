package com.blog_post.quill.Servlets;

import com.blog_post.quill.Models.User;
import com.blog_post.quill.Services.UserService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;
import java.sql.SQLException;

@WebServlet ("/change-user-name")
    public class changeUserName extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();

        String userEmail = (String) session.getAttribute("userEmail");

        String newUserName = request.getParameter("newUserName");

        UserService userService = new UserService();

        try {
            User user = userService.GetUser(userEmail);
            user.setUsername(newUserName);

            userService.updateUser(user);

        }catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        getServletContext().getRequestDispatcher("/changeUserName.jsp").forward(request, response);
    }
}
