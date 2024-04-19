<%--
  Created by IntelliJ IDEA.
  User: 29905
  Date: 2024/4/17
  Time: 19:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>欢迎您，尊敬的用户</title>
</head>
<body>
<h1>
    欢迎登录！！！
</h1>
<table bgcolor = "#e0ffff">
    <tr>
        <td>
            <button type="button" onclick="location.href='/LibraryManagerSystem_war_exploded/jsp/bookinfo_for_user.jsp';">
                查看图书
            </button>
        </td>
    </tr>
</table>
<table bgcolor = "#e0ffff">
    <tr>
        <td>
            <button type="button" onclick="location.href='/LibraryManagerSystem_war_exploded/jsp/userBorrowBook.jsp';">
                借书
            </button>
        </td>
    </tr>
</table>
<table bgcolor = "#e0ffff">
    <tr>
        <td>
        <button type="button" onclick="location.href='/LibraryManagerSystem_war_exploded/jsp/userBorrowlist.jsp?user_id=${sessionScope.user.user_id}';">
            查看借书记录
        </button>
        </td>
    </tr>
</table>
</body>
</html>
