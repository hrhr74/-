<%@ page import="com.project.domain.Book" %>
<%@ page import ="com.project.dao.BookDao" %>
<%@ page import="java.util.List" %>
<%@ page import="javax.servlet.ServletContext" %>
<%@ page import="com.project.utils.Druidutils1" %>
<%--
Created by IntelliJ IDEA.
User: 29905
Date: 2024/4/17
Time: 10:56
To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>图书信息</title>
</head>
<body>
<h1>图书信息</h1>
<% ServletContext context = request.getServletContext(); %>
<% String propFilePath = context.getRealPath("/WEB-INF/db_druid.properties"); %>
<%  BookDao dao = new BookDao();
    List<Book> list = dao.ListAllBook();%>
图书id:
<input type = "test" id = "book_name" name = "book_name"/>
<input type = "button" id = "btnQuery" value = "查询" onclick = "javascript:window.location.href =
'/LibraryManagerSystem_war_exploded/jsp/queryBook.jsp?book_name='
+document.getElementById('book_name').value;"/>
<br>
<table border = "1" bdcolor ="#e0ffff">
    <tr>
        <th>编号</th>
        <th>图书名字</th>
        <th>出版社</th>
        <th>价格</th>
        <th>删除</th>
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
        <td>
            <a href = "/LibraryManagerSystem_war_exploded/deleteBook?uid=<%= book.getId()%>" onclick="return confirm('确定删除此书？')">删除
            </a>
        </td>
    </tr>
    <%}%>
</table>
<br>
<table bgcolor = "#e0ffff">
    <tr>
        <td>
            <button type="button" onclick="location.href='addBook.jsp';">
                添加图书
            </button>
        </td>
    </tr>
</table>
</body>
</html>
