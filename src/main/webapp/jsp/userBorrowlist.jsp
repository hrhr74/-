<%@ page import="com.project.dao.BorrowDao" %>
<%@ page import="com.project.domain.borrow" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: 29905
  Date: 2024/4/17
  Time: 17:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户借书记录</title>
</head>
<body>
<%  Integer user_id = Integer.valueOf(request.getParameter("user_id"));
    BorrowDao dao = new BorrowDao();
    List<borrow> list = dao.findAllByUserId(user_id);
    ;%>
<table border = "1" bdcolor ="#e0ffff">
    <tr>
        <th>图书编号</th>
        <th>图书名字</th>
        <th>用户编号</th>
        <th>用户名称</th>
    </tr>
    <%
        for(borrow borrow :list){
    %>
    <tr>
        <td><%=borrow.getBook_id()%>
        </td>
        <td>
            <%= borrow.getBook_name()%>
        </td>
        <td>
            <%= borrow.getUser_id()%>
        </td>
        <td>
            <%= borrow.getUser_name()%>
        </td>
    </tr>
    <%}%>
</table>
</body>
</html>
