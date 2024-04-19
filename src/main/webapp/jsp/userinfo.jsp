<%@ page import="com.project.domain.users"%>
<%@ page import="com.project.dao.UserDao" %>
<%@ page import="java.util.List" %>
<%--
  Created by IntelliJ IDEA.
  User: 29905
  Date: 2024/4/17
  Time: 16:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户管理</title>
</head>
<body>
<%  UserDao dao = new UserDao();
    List<users> list = dao.ListAllUser();%>
用户id:
<input type = "test" id = "user_id" name = "user_id"/>
<input type = "button" id = "btnQuery" value = "查询" onclick = "javascript:window.location.href = '/LibraryManagerSystem_war_exploded/jsp/queryUser.jsp?user_id='
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
        <td><a href ="/LibraryManagerSystem_war_exploded/jsp/editUser.jsp?uid=<%=user.getUser_id()%>"><%=user.getUser_id()%>
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
            <a href = "/LibraryManagerSystem_war_exploded/deleteUser?uid=<%= user.getUser_id()%>" onclick="return confirm('确定删除此书？')">删除
            </a>
        </td>
    </tr>
    <%}%>
</table>
<br>
<table bgcolor = "#e0ffff">
    <tr>
        <td>
            <button type="button" onclick="location.href='/LibraryManagerSystem_war_exploded/jsp/addUser.jsp';">
                添加用户
            </button>
        </td>
    </tr>
</table>
</body>
</html>
