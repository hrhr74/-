package com.project.servlet;

import com.project.domain.Manager;
import com.project.domain.users;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
@WebFilter("/jsp/*")
public class MyFilter implements Filter {
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        HttpServletRequest request = (HttpServletRequest)servletRequest;
        HttpServletResponse response = (HttpServletResponse)servletResponse;
        HttpSession session = request.getSession();
        users user = (users)session.getAttribute("user");
        Manager m = (Manager)session.getAttribute("m");
        if(m==null && user==null){
            response.sendRedirect(request.getContextPath()+"/login.jsp");
        }
        if (user != null || m != null) {
            // 用户或管理员已登录，继续执行过滤链（即放行请求）
            filterChain.doFilter(servletRequest, servletResponse);
            return;
        }
    }

    @Override
    public void destroy() {

    }
}
