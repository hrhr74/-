package com.project.dao;

import com.project.utils.DruidUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

public class BasicDao <T>{
    private  QueryRunner qr = new QueryRunner();
    //增删改查
    public  int update(String sql, Object... params){
        Connection conn = null;
        try {
            conn = DruidUtils.getConnection();
            return qr.update(conn,sql,params);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }finally{
            DruidUtils.close(null,null,conn);
        }
    }
    //多条查询
    public  List<T> queryMulti(String sql ,Class<T> clazz,Object... params){
        Connection conn = null;
        try {
            conn = DruidUtils.getConnection();
            return qr.query(conn,sql,new BeanListHandler<T>(clazz),params);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }finally{
            DruidUtils.close(null,null,conn);
        }
    }
    public  T querySingle(String sql,Class<T> clazz,Object... params){
        Connection conn = null;
        try {
            conn = DruidUtils.getConnection();
            return qr.query(conn,sql,new BeanHandler<T>(clazz),params);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }finally{
            DruidUtils.close(null,null,conn);
        }
    }
    public Object queryScalar(String sql,Object... params){
        Connection conn = null;
        try {
            conn = DruidUtils.getConnection();
            return qr.query(conn,sql,new ScalarHandler(),params);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }finally{
            DruidUtils.close(null,null,conn);
        }
    }
}
