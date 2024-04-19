package com.project.utils;

import com.alibaba.druid.pool.DruidDataSourceFactory;

import javax.sql.DataSource;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;

public class DruidUtils {
    private static DataSource ds = null;
    static{
        Properties p = new Properties();
        try {

//            InputStream in = DruidUtils.class.getResourceAsStream
//                    ("/WEB-INF/db_druid.properties");
            InputStream in = DruidUtils.class.getResourceAsStream("/db_druid.properties");
            p.load(in);
            //new FileInputStream("/WEB-INF/db_druid.properties")
            ds = DruidDataSourceFactory.createDataSource(p);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
    public static Connection getConnection() throws SQLException {
        return ds.getConnection();
    }
    public static void close(ResultSet rs, Statement stmt,Connection conn){
        try {
            if(rs!=null){
                rs.close();
            }
            if(stmt!=null){
                stmt.close();
            }
            if(conn!=null){
                conn.close();
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
