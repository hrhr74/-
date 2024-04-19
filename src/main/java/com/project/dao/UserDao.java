package com.project.dao;

import com.project.domain.users;

import java.util.List;

public class UserDao extends BasicDao<users>{
    public int addUser(users user ){
        String userPassword = user.getUser_password();
        String userName = user.getUser_name();
        String userSex = user.getUser_sex();
        String sql = "insert into users values(null,?,?,?)";
        return update(sql,userPassword,userName,userSex);
    }
    public int deleteUser(Integer userId){
        String sql = "delete from users where user_id =?";
        return update(sql,userId);
    }
    public int updateUser(users user){
        Integer userId = user.getUser_id();
        String userPassword = user.getUser_password();
        String userNmae = user.getUser_name();
        String userSex = user.getUser_sex();
        String sql = "update users set user_password=?,user_name =?,user_sex =? where user_id = ?";
        return update(sql,userPassword,userNmae,userSex,userId);
    }
    public users findById(Integer userId){
        String sql = "select * from users where user_id =?";
        return querySingle(sql,users.class,userId);
    }
    public users findLogin(Integer userId){
        String sql = "select*from users where user_id = ?";
        return querySingle(sql,users.class,userId);
    }
    public List<users> ListAllUser(){
        String sql = "select*from users";
        return queryMulti(sql,users.class);
}
public List<users> ListById(Integer id){
    String sql = "select*from users where user_id = ?";
    return queryMulti(sql,users.class,id);
}
    
}
