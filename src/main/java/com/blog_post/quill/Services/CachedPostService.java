package com.blog_post.quill.Services;

import com.blog_post.quill.Interfaces.BlogPostDAO;
import com.blog_post.quill.Models.Post;

import java.sql.SQLException;
import java.time.Duration;
import java.time.Instant;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.stream.Collectors;

public class CachedPostService implements BlogPostDAO {
    BlogPostDAO blogService;
    Map<Integer, Post> blogCache;
    private Duration ttl;

    public CachedPostService(BlogPostDAO blogService, Duration ttl) {
        this.blogService = blogService;
        this.ttl = ttl;
        this.blogCache = new HashMap<Integer, Post>();
    }

    @Override
    public List<Post> getAllBlogs() throws SQLException {
        cleanupExpiredEntries();

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

    private synchronized void cleanupExpiredEntries() {
        long currentTimeMillis = System.currentTimeMillis();
        long ttlMillis = ttl.toMillis();
        blogCache.entrySet().removeIf(entry -> {
            long postTimestampMillis = entry.getValue().getTimestamp().toEpochMilli();
            return (currentTimeMillis - postTimestampMillis) > ttlMillis;
        });
    }

}



