<%@ page import="com.project.dao.BorrowDao" %>
<%@ page import="java.util.List" %>
<%@ page import="com.project.domain.borrow" %><%--
  Created by IntelliJ IDEA.
  User: 29905
  Date: 2024/4/17
  Time: 22:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>借阅记录</title>
</head>
<body>
<%
    BorrowDao dao = new BorrowDao();
    List<borrow> list = dao.listAllBorrow();
%>
<table border = "1" bdcolor ="#e0ffff">
    <tr>
        <th>图书编号</th>
        <th>图书名字</th>
        <th>用户号</th>
        <th>用户名称</th>
        <th></th>
    </tr>
    <%
        for(borrow b :list){
    %>
    <tr>
        <td>
            <%= b.getBook_id() %>
        </td>
        <td>
            <%= b.getBook_name()%>
        </td>
        <td>
            <%= b.getUser_id()%>
        </td>
        <td>
            <%= b.getUser_name()%>
        </td>
    </tr>
    <%}%>
</table>
</body>
</html>
