package com.project.domain;

public class Manager {
    private Integer id;
    private String password;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    public String toString() {
        return "Manager{" +
                "id=" + id +
                ", password=" + password +
                '}';
    }
}
