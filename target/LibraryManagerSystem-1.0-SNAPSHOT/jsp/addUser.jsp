<%--
  Created by IntelliJ IDEA.
  User: 29905
  Date: 2024/4/18
  Time: 15:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户添加</title>
</head>
<body>
<form method = "post" action = "/LibraryManagerSystem_war_exploded/addUser">
    密码：<input type = "text" name ="user_password"/><br/>
    用户名称：<input type = "text" name ="user_name"/><br/>
    性别：<input type = "text" name ="user_sex"/><br/>
    <input type = "submit" name = "btnSubmit" value="提交"/>
    <input type ="button" name ="btnBack" value ="返回" onclick ="javascript:window.history.back();"/>
</form>
</body>
</html>
