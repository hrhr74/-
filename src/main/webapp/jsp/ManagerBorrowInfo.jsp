<%--
  Created by IntelliJ IDEA.
  User: 29905
  Date: 2024/4/17
  Time: 16:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page import ="com.project.domain.borrow" %>
<%@ page import="com.project.dao.BorrowDao" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>管理员查看借阅记录界面</title>
</head>
<body>
<h1>欢迎管理员查看借阅记录</h1>
<%  BorrowDao dao = new BorrowDao();
    List<borrow> list = dao.listAllBorrow();%>
图书id:
<input type = "test" id = "book_id" name = "book_id"/>
<input type = "button" id = "btnQuery" value = "查询" onclick = "javascript:window.location.href = '/LibraryManagerSystem_war_exploded/jsp/queryBorrowByBookId.jsp'
+'?book_id='+document.getElementById('book_id').value;"/>
<br>
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
<br>
</body>
</html>
