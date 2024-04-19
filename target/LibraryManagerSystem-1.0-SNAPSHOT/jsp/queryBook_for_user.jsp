<%@ page import="com.project.domain.Book" %>
<%@ page import="com.project.dao.BookDao" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: 29905
  Date: 2024/4/17
  Time: 19:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户查询图书</title>
</head>
<body>
<%
    BookDao dao = new BookDao();
    String book_name = request.getParameter("book_name");
    List<Book> books = dao.ListAllByName(book_name);
%>
书名
<input type = "button" id = "btnQuery" value = "查询" onclick = "javascript:window.location.href ='/LibraryManagerSystem_war_exploded/jsp/queryBook_for_user.jsp?id='
+document.getElementById('id').value;"/>
<br>
<table border = "1" bdcolor ="#e0ffff">
    <tr>
        <th>编号</th>
        <th>图书名字</th>
        <th>出版社</th>
        <th>价格</th>
    </tr>
    <%
        for(Book book:books){
    %>
    <tr>
        <td><a href ="/LibraryManagerSystem_war_exploded/jsp/editBook.jsp?uid=<%=book.getId()%>"><%=book.getId()%>
        </a>
        </td>
        <td>
            <%= book.getBook_name()%>
        </td>
        <td>
            <%= book.getPublisher()%>
        </td>
        <td>
            <%= book.getPrice()%>
        </td>
    </tr>
    <%}%>
</table>
</body>
</html>
