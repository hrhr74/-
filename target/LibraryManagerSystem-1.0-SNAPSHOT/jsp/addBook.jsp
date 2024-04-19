<%--
  Created by IntelliJ IDEA.
  User: 29905
  Date: 2024/4/18
  Time: 8:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加图书</title>
</head>
<body>
<form method = "post" action = "/LibraryManagerSystem_war_exploded/addBook">
    图书编号:<input type = "text" name = "id"/><br/>
    图书名称：<input type = "text" name ="book_name"/><br/>
    出版社：<input type = "text" name ="publisher"/><br/>
    价格：<input type = "text" name ="price"/><br/>
    <input type = "submit" name = "btnSubmit" value="提交"/>
    <input type ="button" name ="btnBack" value ="返回" onclick ="javascript:window.history.back();"/>
</form>
</body>
</html>
