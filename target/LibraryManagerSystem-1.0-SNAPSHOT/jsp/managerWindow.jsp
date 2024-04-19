<%--
  Created by IntelliJ IDEA.
  User: 29905
  Date: 2024/4/17
  Time: 22:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>管理员，欢迎</title>
</head>
<body>
<h1>欢迎您，管理员</h1>
<table bgcolor = "#e0ffff">
    <tr>
        <td>
            <button type="button" onclick="location.href='/LibraryManagerSystem_war_exploded/jsp/bookinfo.jsp';">
                查看图书
            </button>
        </td>
    </tr>
</table>
<table bgcolor = "#e0ffff">
    <tr>
        <td>
            <button type="button" onclick="location.href='/LibraryManagerSystem_war_exploded/jsp/userinfo.jsp';">
                查看用户
            </button>
        </td>
    </tr>
</table>
<table bgcolor = "#e0ffff">
    <tr>
        <td>
            <button type="button" onclick="location.href='/LibraryManagerSystem_war_exploded/jsp/listAllBorrow.jsp';">
                查看借书记录
            </button>
        </td>
    </tr>
</table>
</body>
</html>
