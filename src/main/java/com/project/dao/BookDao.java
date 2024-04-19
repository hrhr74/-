package com.project.dao;

import com.project.domain.Book;

import java.util.List;

public class BookDao extends BasicDao<Book>{
    public int addBook(Book book){
        Integer id  = book.getId();
        String book_name = book.getBook_name();
        String publisher = book.getPublisher();
        Double price = book.getPrice();
        String sql = "insert into books values(?,?,?,?)";
        return update(sql,id,book_name,publisher,price);
    }
    public int deleteBook(Integer id){
        String sql = "delete from books where id = ?";
        return update(sql,id);
    }
    public int updateBook(Book book){
        Integer id = book.getId();
        String bookName = book.getBook_name();
        String publisher = book.getPublisher();
        Double price = book.getPrice();
        String sql = "update books set book_name =?,publisher = ?,price = ? where id =?";
        return update(sql,bookName,publisher,price,id);
    }
    public Book findByName(String key) {
        String sql = "select*from books where book_name = ?";
        return querySingle(sql,Book.class,key);
    }
    public Book findById(Integer id) {
        String sql = "select*from books where id = ?";
        return querySingle(sql,Book.class,id);
    }
    public List<Book> ListAllByName(String name){
        String sql = "select*from books where book_name = ?";
        return queryMulti(sql,Book.class,name);
    }
    public List<Book> ListAllBook(){
        String sql = "select * from books";
        return queryMulti(sql, Book.class);
    }
}
