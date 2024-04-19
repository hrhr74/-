package com.project.servlet;

import com.project.dao.ManagerDao;
import com.project.dao.UserDao;
import com.project.domain.Manager;
import com.project.domain.users;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Integer id = Integer.valueOf(req.getParameter("id"));
        String password = req.getParameter("password");
        UserDao userDao = new UserDao();
        users user = userDao.findLogin(id);
        ManagerDao mDao = new ManagerDao();
        Manager m = mDao.findLogin(id);
        RequestDispatcher dispatcher = null;
        if(user!=null && password.equals(user.getUser_password())){
            HttpSession session = req.getSession();
            session.setAttribute("user",user);
            dispatcher =
                    req.getRequestDispatcher("/jsp/UserWindow.jsp");
        }else if(m!=null && password.equals(m.getPassword())){
            HttpSession session = req.getSession();
            session.setAttribute("m",m);
            dispatcher =
                    req.getRequestDispatcher("/jsp/managerWindow.jsp");
        }else{
            req.setAttribute("errorMsg","用户名或密码错误");
            dispatcher = req.getRequestDispatcher("/login.jsp");
        }
        dispatcher.forward(req, resp);
        // 在登录成功后
        HttpSession oldSession = req.getSession(false); // 获取当前会话（不创建新会话）
       HttpSession newSession = req.getSession(true);
       newSession.setMaxInactiveInterval(100000000); // 单位：秒
    }
}
