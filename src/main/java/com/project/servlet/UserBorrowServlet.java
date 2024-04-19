package com.project.servlet;

import com.project.dao.BorrowDao;
import com.project.domain.borrow;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/userBorrow")
public class UserBorrowServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html");
        Integer book_id = Integer.valueOf(req.getParameter("book_id"));
        String book_name = req.getParameter("book_name");
        Integer user_id = Integer.valueOf(req.getParameter("user_id"));
        String user_name = req.getParameter("user_name");
        borrow b = new borrow();
        b.setBook_id(book_id);
        b.setBook_name(book_name);
        b.setUser_id(user_id);
        b.setUser_name(user_name);
        BorrowDao dao = new BorrowDao();
        int n = dao.addBorrow(b);
        if(n>0){
            resp.sendRedirect("/LibraryManagerSystem_war_exploded/jsp/UserWindow.jsp");
        }else{
            resp.sendRedirect("error.jsp");
        }
    }
}
