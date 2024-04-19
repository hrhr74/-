<%@ page import="com.project.dao.BookDao" %>
<%@ page import="com.project.domain.Book" %><%--
  Created by IntelliJ IDEA.
  User: 29905
  Date: 2024/4/18
  Time: 8:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>编辑图书</title>
</head>
<body>
<% Integer id = Integer.valueOf(request.getParameter("uid"));
    BookDao dao = new BookDao();
    Book book = dao.findById(id);
    %>
<form method = "post" action ="/LibraryManagerSystem_war_exploded/editBook?uid=<%=id%>">
    id:<label><%=book.getId()%></label><br/>
    书名:<input type ="tsext" name="book_name" value ="<%=book.getBook_name()%>"/><br/>
    出版社:<input type ="tsext" name="publisher" value ="<%=book.getPublisher()%>"/><br/>
    价格:<input type ="tsext" name="price" value ="<%=book.getPrice()%>"/><br/>
    <input type = "submit" name = "btnSubmit" value ="提交"/>
    <input type = "button" name ="btnBack" value="返回" onclick ="javascript:window.history.back();"/>
</form>
</body>
</html>
