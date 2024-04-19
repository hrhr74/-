<%@ page import="com.project.domain.Book" %>
<%@ page import="com.project.dao.BookDao" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: 29905
  Date: 2024/4/17
  Time: 19:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户图书界面</title>
</head>
<body>
<h1>
    尊敬的用户，欢迎您查阅我们的图书!
</h1>
<%  BookDao dao = new BookDao();
    List<Book> list = dao.ListAllBook();%>
图书id:
<input type = "test" id = "book_name" name = "book_name"/>
<input type = "button" id = "btnQuery" value = "查询" onclick = "javascript:window.location.href =
'/LibraryManagerSystem_war_exploded/jsp/queryBook_for_user.jsp?book_name='
+document.getElementById('book_name').value;"/>
<br>
<table border = "1" bdcolor ="#e0ffff">
    <tr>
        <th>编号</th>
        <th>图书名字</th>
        <th>出版社</th>
        <th>价格</th>
    </tr>
    <%
        for(Book book :list){
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
