<%--
  Created by IntelliJ IDEA.
  User: youss
  Date: 5/10/2024
  Time: 6:05 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.io.*,java.util.*" %>
<%@ page import="javax.servlet.*,javax.servlet.http.*" %>

<html>
<head>
 <%
        String username = request.getParameter("username");
        String password = request.getParameter("password");
     if (username == null) {
         out.println("Username is required. Please enter a username.");
     }

        String filePath = "D:/Wannas/Refrences/1x/registration_data.txt"; // Change this to your file path

        boolean loggedIn = false;
        BufferedReader reader = null;

        try {
            reader = new BufferedReader(new FileReader(filePath));
            String line;
            while ((line = reader.readLine()) != null) {
                String[] userData = line.split(",");
                String storedUsername = userData[0];
                String storedPassword = userData[1];

                if (username.equals(storedUsername) && password.equals(storedPassword)) {
                    session.setAttribute("loggedInUser", username);
                    loggedIn = true;
                    break;
                }
            }
        } catch (IOException e) {
            e.printStackTrace();
            out.println("An error occurred while logging in: " + e.getMessage());
        } finally {
            if (reader != null) {
                try {
                    reader.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }

        if (loggedIn) {
            response.sendRedirect("welcome.jsp");
        } else {
            out.println("Invalid username or password. Please try again.");
        }
    %>


</head>
<body>

</body>
</html>
