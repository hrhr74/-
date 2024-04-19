package com.project.domain;

public class borrow {
    private Integer book_id;
    private String book_name;
    private Integer user_id;
    private String user_name;

    public Integer getBook_id() {
        return book_id;
    }

    public void setBook_id(Integer book_id) {
        this.book_id = book_id;
    }

    public String getBook_name() {
        return book_name;
    }

    public void setBook_name(String book_name) {
        this.book_name = book_name;
    }

    public Integer getUser_id() {
        return user_id;
    }

    public void setUser_id(Integer user_id) {
        this.user_id = user_id;
    }

    public String getUser_name() {
        return user_name;
    }

    public void setUser_name(String user_name) {
        this.user_name = user_name;
    }

    @Override
    public String toString() {
        return "borrow{" +
                "book_id=" + book_id +
                ", book_name='" + book_name + '\'' +
                ", user_id=" + user_id +
                ", user_name=" + user_name +
                '}';
    }
}
