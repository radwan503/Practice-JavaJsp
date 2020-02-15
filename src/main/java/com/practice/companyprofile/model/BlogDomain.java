package com.practice.companyprofile.model;

/**
 * Created by RadwanAnik on 2/15/2020.
 */
public class BlogDomain {


    private int id;
    private String blogSectionTitle;
    private String blogPostTitle;
    private String blogPostDetails;
    private String blogPostTime;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getBlogSectionTitle() {
        return blogSectionTitle;
    }

    public void setBlogSectionTitle(String blogSectionTitle) {
        this.blogSectionTitle = blogSectionTitle;
    }

    public String getBlogPostTitle() {
        return blogPostTitle;
    }

    public void setBlogPostTitle(String blogPostTitle) {
        this.blogPostTitle = blogPostTitle;
    }

    public String getBlogPostDetails() {
        return blogPostDetails;
    }

    public void setBlogPostDetails(String blogPostDetails) {
        this.blogPostDetails = blogPostDetails;
    }

    public String getBlogPostTime() {
        return blogPostTime;
    }

    public void setBlogPostTime(String blogPostTime) {
        this.blogPostTime = blogPostTime;
    }
}
