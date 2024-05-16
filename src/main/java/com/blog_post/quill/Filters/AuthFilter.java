package com.blog_post.quill.Filters;


import jakarta.servlet.*;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebFilter(urlPatterns = {"/blogs", "/logout", "/myblogs", "/profile", "/edit-form"})
public class AuthFilter implements Filter {
    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        HttpServletRequest httpRequest = (HttpServletRequest) request;
        HttpServletResponse httpResponse = (HttpServletResponse) response;

        // Check for a valid HTTP session (without creating a new one)
        HttpSession session = httpRequest.getSession();

        var userSession = session.getAttribute("userId");

        if (userSession == null) {
            // Redirect to login page or handle invalid session case
            httpRequest.getRequestDispatcher("/login").forward(httpRequest, httpResponse);
            System.out.println("session is null");
            return;  // Stop processing further filters/servlets
        }

        // Session is valid, proceed with the request chain
        chain.doFilter(request, response);
    }
}
