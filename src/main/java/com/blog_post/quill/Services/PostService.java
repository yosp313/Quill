package com.blog_post.quill.Services;

import com.blog_post.quill.Configs.DB;
import com.blog_post.quill.Models.Post;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class PostService {
    private static String sqlQuery;
    private static DB db = new DB();


    public List<Post> getAllBlogs() throws SQLException {
        List<Post> posts = new ArrayList<>();
        sqlQuery = "SELECT * FROM posts";

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }

        Connection connection = db.ConfDB();
        Statement statement = connection.createStatement();
        ResultSet resultSet = statement.executeQuery(sqlQuery);

        while (resultSet.next()) {
            String title = resultSet.getString("title");
            String content = resultSet.getString("content");
            String userId = resultSet.getString("user_id");
            posts.add(new Post(title, content, userId));
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

        Connection connection = db.ConfDB();
        Statement statement = connection.createStatement();
        ResultSet resultSet = statement.executeQuery(sqlQuery);

        if (resultSet.next()) {
            String title = resultSet.getString("title");
            String content = resultSet.getString("content");
            String author = resultSet.getString("user_id");

            return new Post(title, content, author);
        }

        resultSet.close();
        statement.close();
        connection.close();

        return new Post();

    }

    public void postBlog(String title, String content, Integer authorId) throws SQLException {
        sqlQuery = "INSERT INTO posts (title, content, user_id)\n" +
                "SELECT ?, ?, id FROM users WHERE id = ? LIMIT 1;";

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }


        Connection connection = db.ConfDB();
        PreparedStatement statement = connection.prepareStatement(sqlQuery);

        statement.setString(1, title);
        statement.setString(2, content);
        statement.setInt(3, authorId);

        statement.executeUpdate();

        statement.close();
        connection.close();
    }

    public void deletePost(String postId) throws SQLException {
        sqlQuery = "DELETE FROM posts WHERE id=?";

        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
        }catch (ClassNotFoundException e){
            throw new RuntimeException(e);
        }

        Connection connection = db.ConfDB();
        PreparedStatement statement = connection.prepareStatement(sqlQuery);

        statement.setString(1, postId);

        statement.executeUpdate();

        statement.close();
        connection.close();
    }

    public void updatePost(Post post) throws SQLException {
        sqlQuery = "UPDATE posts SET title = ?, content = ?, user_id = ? WHERE id = ?";

        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
        }catch (ClassNotFoundException e){
            throw new RuntimeException(e);
        }

        Connection connection = db.ConfDB();
        PreparedStatement statement = connection.prepareStatement(sqlQuery);

        Integer postId = post.getId();

        statement.setString(1, post.getTitle());
        statement.setString(2, post.getContent());
        statement.setString(3, post.getUser_id());
        statement.setString(4, postId.toString());

        statement.executeUpdate();

        statement.close();
        connection.close();
    }


}
