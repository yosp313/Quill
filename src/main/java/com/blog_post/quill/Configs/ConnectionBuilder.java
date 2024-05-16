package com.blog_post.quill.Configs;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionBuilder {
    private String url;
    private String username;
    private String password;

    public ConnectionBuilder setUrl(String url) {
        this.url = url;
        return this;
    }

    public ConnectionBuilder setUsername(String username) {
        this.username = username;
        return this;
    }

    public ConnectionBuilder setPassword(String password) {
        this.password = password;
        return this;
    }

    public Connection build() throws SQLException {
        return DriverManager.getConnection(url, username, password);
    }
}