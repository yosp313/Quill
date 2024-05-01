package com.blog_post.quill.Servlets;

import com.blog_post.quill.Models.User;
import com.blog_post.quill.Services.UserService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.SQLException;

@WebServlet ("/change-user-name")
    public class changeUserName extends HttpServlet {
    @Override
    protected void doPut(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String newUserName = request.getParameter("newUserName");
        if(email.isEmpty() || newUserName.isEmpty()){
            request.setAttribute("error", "email or New User Name cannot be empty");
        }else{
            UserService userService = new UserService();
            try {
                User user = userService.GetUser(email);

                user.setUsername(newUserName);

            }catch (SQLException e) {
            throw new RuntimeException(e);
            }
        }
    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        getServletContext().getRequestDispatcher("/changeUserName.jsp").forward(request, response);
    }
}
