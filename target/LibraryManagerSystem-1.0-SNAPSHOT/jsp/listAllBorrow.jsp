<%@ page import="com.project.domain.borrow" %>
<%@ page import="java.util.List" %>
<%@ page import="com.project.dao.BorrowDao" %><%--
  Created by IntelliJ IDEA.
  User: 29905
  Date: 2024/4/18
  Time: 21:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>全部借阅记录</title>
</head>
<body>
<%
  BorrowDao dao = new BorrowDao();
  List<borrow> list = dao.listAllBorrow();
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
</body>
</html>
