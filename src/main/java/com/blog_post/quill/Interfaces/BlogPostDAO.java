package com.blog_post.quill.Interfaces;

import com.blog_post.quill.Models.Post;

import java.sql.SQLException;
import java.util.List;

public interface BlogPostDAO {
    List<Post> getAllBlogs() throws SQLException;
}