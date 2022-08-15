package com.example.webbanhangver1.model;

public class Blog {
    private int blogID;
    private String title;
    private String author;
    private String date;
    private String demo;
    private String content;
    private String image;

    public Blog(int blogID, String title, String author, String date, String demo, String content,String image) {
        this.blogID = blogID;
        this.title = title;
        this.author = author;
        this.date = date;
        this.demo = demo;
        this.content = content;
        this.image = image;
    }

    public int getBlogID() {
        return blogID;
    }

    public void setBlogID(int blogID) {
        this.blogID = blogID;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getDemo() {
        return demo;
    }

    public void setDemo(String demo) {
        this.demo = demo;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    @Override
    public String toString() {
        return "Blog{" +
                "blogID=" + blogID +
                ", title='" + title + '\'' +
                ", author='" + author + '\'' +
                ", date='" + date + '\'' +
                ", demo='" + demo + '\'' +
                ", content='" + content + '\'' +
                ", image ='" + image+
                '}';
    }
}
