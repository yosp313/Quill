package com.blog_post.quill.Models;

import java.time.Instant;

public class Post {
    int id;
    String title;
    String content;
    String user_id;
    Instant timeStamp;

    public Post(String title, String content, String userId) {
        this.title = title;
        this.content = content;
        this.user_id = userId;
    }

    public Post() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getUser_id() {
        return user_id;
    }

    public void setUser_id(String user_id) {
        this.user_id = user_id;
    }

    public Instant getTimestamp() {
        return timeStamp;
    }
}
