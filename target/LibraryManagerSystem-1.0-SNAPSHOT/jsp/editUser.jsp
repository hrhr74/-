<%@ page import="com.project.dao.UserDao" %>
<%@ page import="com.project.domain.users" %><%--
  Created by IntelliJ IDEA.
  User: 29905
  Date: 2024/4/18
  Time: 15:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>编辑用户</title>
</head>
<body>
<% Integer id = Integer.valueOf(request.getParameter("uid"));
    UserDao dao = new UserDao();
    users user = dao.findById(id);
%>
<form method = "post" action ="/LibraryManagerSystem_war_exploded/editUser?uid=<%=id%>">
    id:<label><%=user.getUser_id()%></label><br/>
    密码:<input type ="tsext" name="user_password" value ="<%=user.getUser_password()%>"/><br/>
    用户名:<input type ="tsext" name="user_name" value ="<%=user.getUser_name()%>"/><br/>
    性别:<input type ="tsext" name="user_sex" value ="<%=user.getUser_sex()%>"/><br/>
    <input type = "submit" name = "btnSubmit" value ="提交"/>
    <input type = "button" name ="btnBack" value="返回" onclick ="javascript:window.history.back();"/>
</form>
</body>
</html>
