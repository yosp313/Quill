package com.blog_post.quill.Services;

import com.blog_post.quill.Models.Post;
import com.blog_post.quill.Models.User;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class PostService {
    private static final String ConnectionString = "mysql://localhost:3306/quill";
    private static final String UserName = "root";
    private static final String Password = "Root1234";
    private static String sqlQuery;


    public List<Post> getAllBlogs() throws SQLException {
        List<Post> posts = new ArrayList<>();
        sqlQuery = "SELECT * FROM posts";

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }

        Connection connection = DriverManager.getConnection(ConnectionString, UserName, Password);
        Statement statement = connection.createStatement();
        ResultSet resultSet = statement.executeQuery(sqlQuery);

        while (resultSet.next()) {
            String title = resultSet.getString("title");
            String content = resultSet.getString("content");
            posts.add(new Post(title, content));
        }
        resultSet.close();
        statement.close();
        connection.close();

        return posts;
    }

    public Post getBlog(String postId) throws SQLException {
        sqlQuery = "SELECT * FROM posts WHERE id=?";


        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }

        Connection connection = DriverManager.getConnection(ConnectionString, UserName, Password);
        Statement statement = connection.createStatement();
        ResultSet resultSet = statement.executeQuery(sqlQuery);

        while (resultSet.next()) {
            int id = Integer.parseInt(resultSet.getString("id"));
            String title = resultSet.getString("title");
            String content = resultSet.getString("content");
            String author = resultSet.getString("user_id");
            Post post = new Post(id, title, content, author);
            return post;
        }

        resultSet.close();
        statement.close();
        connection.close();


        return new Post();

    }

    public void postBlog(String title, String content) throws SQLException {
        Post post = new Post(title, content);
        sqlQuery = "INSERT INTO blogs  (title, content) VALUES (?, ?)";

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
        Connection connection = DriverManager.getConnection(ConnectionString, UserName, Password);
        PreparedStatement statement = connection.prepareStatement(sqlQuery);

        statement.setString(1, post.getTitle());
        statement.setString(2, post.getContent());

        statement.executeUpdate();

        statement.close();
        connection.close();
    }
}
