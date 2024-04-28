package com.blog_post.quill.Services;

import com.blog_post.quill.Models.User;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class UserService {
    private static final String CONNECTION_STRING = "jdbc:mysql://localhost:3306/quill";
    private static final String USERNAME = "root";
    private static final String PASSWORD = "Root1234";
    private static String sqlQuery;



    public User GetUser(String id) throws SQLException {
        sqlQuery = "SELECT * FROM users WHERE id = ?";


        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
        }catch (ClassNotFoundException e){
            throw new RuntimeException(e);
        }

        Connection conn = DriverManager.getConnection(CONNECTION_STRING, USERNAME, PASSWORD);
        PreparedStatement stmt = conn.prepareStatement(sqlQuery);

        stmt.setString(1, id);

        ResultSet rs = stmt.executeQuery();

        if(rs.next()){
            int userId = rs.getInt("id");
            String email = rs.getString("email");
            String userName = rs.getString("username");
            String password = rs.getString("password");

            return new User(userId, email, userName, password);
        }

        return new User();
    }

    public void postUser(String Email, String userName, String Password) throws SQLException {
        sqlQuery = "INSERT INTO users (email, username, password) VALUES (?, ?, ?)";

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
        Connection connection = DriverManager.getConnection(CONNECTION_STRING, USERNAME, PASSWORD);
        PreparedStatement statement = connection.prepareStatement(sqlQuery);

        statement.setString(1, Email);
        statement.setString(2, userName);
        statement.setString(3, Password);

        statement.executeUpdate();

        statement.close();
        connection.close();
    }
}
