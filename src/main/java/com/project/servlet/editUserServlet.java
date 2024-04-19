package com.project.servlet;

import com.project.dao.UserDao;
import com.project.domain.users;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
@WebServlet("/editUser")
public class editUserServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html");
        Integer uid = Integer.valueOf(req.getParameter("uid"));
        String userPassword = req.getParameter("user_password");
        String userName = req.getParameter("user_name");
        String userSex = req.getParameter("user_sex");
        users user = new users();
        user.setUser_id(uid);
        user.setUser_password(userPassword);
        user.setUser_name(userName);
        user.setUser_sex(userSex);
        UserDao dao = new UserDao();
        int n =dao.updateUser(user);
        if(n>0){
            resp.sendRedirect("/LibraryManagerSystem_war_exploded/jsp/userinfo.jsp");
        }else{
            resp.sendRedirect("error.jsp");
        }
    }
}
