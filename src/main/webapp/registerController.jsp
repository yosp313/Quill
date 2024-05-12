<%--
  Created by IntelliJ IDEA.
  User: youss
  Date: 5/10/2024
  Time: 6:11 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.io.*,java.util.*" %>
<%@ page import="javax.servlet.*,javax.servlet.http.*" %>
<html>
<head>


    <%
        // Get username and password from the form
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        // Define the file path where registration data will be stored
        String filePath = "D:/Wannas/Refrences/1x/registration_data.txt"; // Change this to your desired file path

        try {
            // Open the file in append mode
            FileWriter fileWriter = new FileWriter(filePath, true);
            PrintWriter printWriter = new PrintWriter(fileWriter);

            // Write the username and password to the file
            printWriter.println(username + "," + password);

            // Close the file
            printWriter.close();

            out.println("Registration successful! You can now login.");
        } catch (IOException e) {
            e.printStackTrace();
            out.println("An error occurred while registering. Please try again later.");
        }
    %>

</head>
<body>

</body>
</html>
