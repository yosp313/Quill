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
import java.util.Objects;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String email = request.getParameter("email");
        String password = request.getParameter("password");

        if (email.isEmpty() || password.isEmpty()) {
            request.setAttribute("error", "Username or password is empty");
            doGet(request, response);
        }else {
            UserService userService = new UserService();
            try {
                User user = userService.GetUser(email);

                String userEmail = user.getEmail();
                String userPassword = user.getPassword();
                Integer userId = user.getId();


                if (Objects.equals(userEmail, email) && Objects.equals(userPassword, password)) {
                    response.sendRedirect("/?id=" + userId);
                }

            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
        }
    }


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        getServletContext().getRequestDispatcher("/Login.jsp").forward(request, response);
    }

}
