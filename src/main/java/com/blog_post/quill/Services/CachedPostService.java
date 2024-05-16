package com.blog_post.quill.Services;

import com.blog_post.quill.Interfaces.BlogPostDAO;
import com.blog_post.quill.Interfaces.Observer;
import com.blog_post.quill.Models.Post;

import java.sql.SQLException;
import java.time.Duration;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.stream.Collectors;

public class CachedPostService implements BlogPostDAO, Observer {
    BlogPostDAO blogService;
    Map<Integer, Post> blogCache;
    final ScheduledExecutorService scheduler = Executors.newScheduledThreadPool(1);

    public CachedPostService(BlogPostDAO blogService) {
        this.blogService = blogService;
        this.blogCache = new HashMap<Integer, Post>();

        scheduler.scheduleAtFixedRate(() -> {
            try {
                getAllBlogs();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }, 0, 30, TimeUnit.MINUTES);
    }

    @Override
    public void update() {
        updateCache();
        System.out.println("Cache updated!");
    }

    @Override
    public List<Post> getAllBlogs() throws SQLException {

        if (blogCache.isEmpty()) {
            try {
                List<Post> posts = blogService.getAllBlogs();
                blogCache.putAll(posts.stream().collect(Collectors.toMap(Post::getId, blog -> blog)));
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        return new ArrayList<>(blogCache.values());
    }

    public void updateCache() {
        try {
            List<Post> posts = blogService.getAllBlogs();
            blogCache.clear();
            blogCache.putAll(posts.stream().collect(Collectors.toMap(Post::getId, blog -> blog)));
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

}
