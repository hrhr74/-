package com.project.utils;

import com.alibaba.druid.pool.DruidDataSourceFactory;

import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.ServletContext;
import javax.sql.DataSource;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;

public class Druidutils1 {
        private static ServletContext context;
        private static DataSource ds = null;


        // 添加静态初始化块，在应用启动时获取ServletContext
        static {
            Properties p = new Properties();
            try {
                p.load(new FileInputStream("src\\main\\webapp\\WEB-INF\\db_druid.properties"));
                ds = DruidDataSourceFactory.createDataSource(p);
                InitialContext ic = new InitialContext();
                context = (ServletContext) ic.lookup("java:comp/env/context");
            } catch (NamingException | FileNotFoundException e) {
                e.printStackTrace();
            } catch (IOException e) {
                throw new RuntimeException(e);
            } catch (Exception e) {
                throw new RuntimeException(e);
            }
        }

        // 使用ServletContext获取文件路径
        private static String getPropFilePath() {
            return context.getRealPath("/WEB-INF/db_druid.properties");
        }

        // ... 其他代码 ...
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
