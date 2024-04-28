package com.blog_post.quill.Servlets;

import com.blog_post.quill.Services.UserService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/Register")
public class UserServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email= request.getParameter("email");
        String userName= request.getParameter("userName");
        String password= request.getParameter("password");
        String confirmPassword= request.getParameter("confirmPassword");

        System.out.println(email);
        System.out.println(userName);
        System.out.println(password);
        System.out.println(confirmPassword);

        if(userName.isEmpty() || email.isEmpty() || password.isEmpty() || confirmPassword.isEmpty())
        {
            request.setAttribute("error", "Please fill all the fields");
            doGet(request, response);
        }else {
            if (!password.equals(confirmPassword)) {
                request.setAttribute("error", "Passwords do not match");
                doGet(request, response);
            }else{
                System.out.println("account has been created");
                UserService userService = new UserService();
                
                try {
                    userService.postUser(email, userName, password);
                } catch (SQLException e) {
                    throw new RuntimeException(e);
                }
            }
        }
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        getServletContext().getRequestDispatcher("/RegistrationTest.jsp").forward(request, response);

    }
}

