package com.blog_post.quill.Services;

import com.blog_post.quill.Models.User;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class UserService {
    private static final String ConnectionString = "mysql://localhost:3306/quill";
    private static final String UserName = "root";
    private static final String Password = "Root1234";
    private static String sqlQuery;



    public User GetUser(String id) throws SQLException {
        sqlQuery = "SELECT * FROM users WHERE id = ?";


        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
        }catch (ClassNotFoundException e){
            throw new RuntimeException(e);
        }

        Connection conn = DriverManager.getConnection(ConnectionString, UserName, Password);
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
}
