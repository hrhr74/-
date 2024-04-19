<%--
  Created by IntelliJ IDEA.
  User: 29905
  Date: 2024/4/17
  Time: 19:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>借书</title>
</head>
<body>
<h1>欢迎借书</h1>
<form method = "post" action = "/LibraryManagerSystem_war_exploded/userBorrow">
    图书编号:<input type = "text" name = "book_id"/><br/>
    图书名称：<input type = "text" name ="book_name"/><br/>
    您的账号：<input type = "text" name ="user_id"/><br/>
    您的名字：<input type = "text" name ="user_name"/><br/>
    <input type = "submit" name = "btnSubmit" value="提交"/>
    <input type ="button" name ="btnBack" value ="返回" onclick ="javascript:window.history.back();"/>
</form>
</body>
</html>
