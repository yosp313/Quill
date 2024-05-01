package com.blog_post.quill.Services;

import com.blog_post.quill.Configs.DB;
import com.blog_post.quill.Models.User;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class UserService {
    private static String sqlQuery;
    private static DB db = new DB();



    public User GetUser(String email) throws SQLException {
        sqlQuery = "SELECT * FROM users WHERE email = ?";



        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
        }catch (ClassNotFoundException e){
            throw new RuntimeException(e);
        }

        Connection conn = db.ConfDB();
        PreparedStatement stmt = conn.prepareStatement(sqlQuery);

        stmt.setString(1, email);

        ResultSet rs = stmt.executeQuery();

        if(rs.next()){
            int userId = rs.getInt("id");
            String Email = rs.getString("email");
            String userName = rs.getString("username");
            String password = rs.getString("password");

            return new User(userId, Email, userName, password);
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
        Connection connection = db.ConfDB();
        PreparedStatement statement = connection.prepareStatement(sqlQuery);

        statement.setString(1, Email);
        statement.setString(2, userName);
        statement.setString(3, Password);

        statement.executeUpdate();

        statement.close();
        connection.close();
    }
}
