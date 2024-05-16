package com.blog_post.quill.Configs;

import java.sql.Connection;
import java.sql.SQLException;

public class DB {
    private static final String CONNECTION_STRING = "jdbc:mysql://localhost:3306/quill";
    private static final String USERNAME = "root";
    private static final String PASSWORD = "Root1234";

    public Connection ConfDB() throws SQLException {
        return new ConnectionBuilder().setUrl(CONNECTION_STRING).setUsername(USERNAME).setPassword(PASSWORD).build();
    }
}
