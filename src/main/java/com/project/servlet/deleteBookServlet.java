package com.project.servlet;

import com.project.dao.BookDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/deleteBook")
public class deleteBookServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html");
        Integer uid = Integer.valueOf(req.getParameter("uid"));
        BookDao dao = new BookDao();
        int n = dao.deleteBook(uid);
        if(n>0){
            resp.sendRedirect("/LibraryManagerSystem_war_exploded/jsp/userinfo.jsp");
        }else{
            resp.sendRedirect("error.jsp");
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp);
    }
}
