package com.project.dao;

import com.project.domain.Manager;

public class ManagerDao extends BasicDao<Manager>{
    public Manager findLogin(Integer id){
        String sql = "select * from managers where id=?";
        return querySingle(sql,Manager.class,id);
    }
}
