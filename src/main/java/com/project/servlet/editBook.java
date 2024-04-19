package com.project.servlet;

import com.project.dao.BookDao;
import com.project.domain.Book;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
@WebServlet("/editBook")
public class editBook extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html");
        Integer id = Integer.valueOf(req.getParameter("uid"));
        String bookName = req.getParameter("book_name");
        String publisher = req.getParameter("publisher");
        Double price = Double.valueOf(req.getParameter("price"));
        Book book = new Book();
        book.setId(id);
        book.setBook_name(bookName);
        book.setPublisher(publisher);
        book.setPrice(price);
        BookDao dao =new BookDao();
        int n =dao.updateBook(book);
        if(n>0){
            resp.sendRedirect("/LibraryManagerSystem_war_exploded/jsp/bookinfo.jsp");
        }else{
            resp.sendRedirect("error.jsp");
        }
    }
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }
}
