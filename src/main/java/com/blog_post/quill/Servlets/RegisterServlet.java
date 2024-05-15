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

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email= request.getParameter("email");
        String userName= request.getParameter("userName");
        String password= request.getParameter("password");
        String confirmPassword= request.getParameter("confirmPassword");


        if(userName.isEmpty() || email.isEmpty() || password.isEmpty() || confirmPassword.isEmpty())
        {
            request.setAttribute("error", "Please fill all the fields");
            doGet(request, response);
        }else {
            if (!password.equals(confirmPassword)) {
                request.setAttribute("error", "Passwords do not match");
                doGet(request, response);
            }else{
                UserService userService = new UserService();
                try {
                   User user = userService.GetUser(email);
                   String userEmail = user.getEmail();
                    if (userEmail == null) {
                        try {
                            userService.postUser(email, userName, password);
                            response.sendRedirect("login");
                        } catch (SQLException e) {
                            throw new RuntimeException(e);
                        }
                    }
                } catch (SQLException e) {
                    throw new RuntimeException(e);
                }
            }
        }
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        getServletContext().getRequestDispatcher("/Registration.jsp").forward(request, response);

    }
}



