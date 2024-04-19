<%@ page import="com.project.dao.UserDao" %>
<%@ page import="com.project.domain.users" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: 29905
  Date: 2024/4/17
  Time: 19:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>查询用户</title>
</head>
<body>
<%
    UserDao dao = new UserDao();
    Integer user_id = Integer.valueOf(request.getParameter("user_id"));
    List<users> list = dao.LisrById(user_id);
%>
<input type = "button" id = "btnQuery" value = "查询" onclick = "javascript:window.location.href ='/LibraryManagerSystem_war_exploded/jsp/queryBook.jsp?user_id='
+document.getElementById('user_id').value;"/>
<br>
<table border = "1" bdcolor ="#e0ffff">
    <tr>
        <th>账号</th>
        <th>密码</th>
        <th>用户名</th>
        <th>性别</th>
        <th>删除</th>
    </tr>
    <%
        for(users user:list){
    %>
    <tr>
        <td><a href ="/LibraryManagerSystem_war_exploded/jsp/editBook.jsp?uid=<%=user.getUser_id()%>"><%=user.getUser_id()%>
        </a>
        </td>
        <td>
            <%= user.getUser_password()%>
        </td>
        <td>
            <%= user.getUser_name()%>
        </td>
        <td>
            <%= user.getUser_sex()%>
        </td>
        <td>
            <a href = "/LibraryManagerSystem_war_exploded/jsp/deleteUser.jsp?uid=<%= user.getUser_id()%>" onlick="return confirm('确定删除此书？')">删除
            </a>
        </td>
    </tr>
    <%}%>
</table>
</body>
</html>
