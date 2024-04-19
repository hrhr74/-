package com.project.servlet;

import com.project.dao.BookDao;
import com.project.domain.Book;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
@WebServlet("/addBook")
public class addBookServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html");
        Integer uid = Integer.valueOf(req.getParameter("id"));
        String book_name = req.getParameter("book_name");
        String publisher = req.getParameter("publisher");
        Double price = Double.valueOf(req.getParameter("price"));
        Book book = new Book();
        book.setId(uid);
        book.setBook_name(book_name);
        book.setPublisher(publisher);
        book.setPrice(price);
        BookDao dao = new BookDao();
        int n =dao.addBook(book);
        if(n>0){
            resp.sendRedirect("/LibraryManagerSystem_war_exploded/jsp/UserWindow.jsp");
        }else{
            resp.sendRedirect("error.jsp");
        }
    }
}
