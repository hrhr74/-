package com.project.test;

import com.project.dao.BookDao;
import com.project.domain.Book;
import com.project.utils.DruidUtils;
import org.junit.Test;

import java.io.InputStream;
import java.util.List;

public class TestDao {
    @Test
    public void testBookDao(){
        BookDao b = new BookDao();
        Book book = b.querySingle("select*from books where id =?",Book.class,2);
        System.out.println(book);
        List<Book> books1 = b.ListAllBook();
        for(Book book1: books1){
            System.out.println(book1);
        }
    }
    @Test

    public void test(){
        InputStream in = DruidUtils.class.getResourceAsStream("/db_druid.properties");
        System.out.println("InputStream is null? " + (in == null));
        System.out.println("Current ClassLoader: " + DruidUtils.class.getClassLoader());

    }
}
