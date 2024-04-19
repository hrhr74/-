<%@ page import="java.io.PrintWriter" %><%--
  Created by IntelliJ IDEA.
  User: 29905
  Date: 2024/4/17
  Time: 22:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录到</title>
</head>
<body>
<%! String errorMsg;%>
<form action = "/LibraryManagerSystem_war_exploded/LoginServlet" method ="post">
    <label>用户名:</label><input type ="text" name ="id"/><br/>
    <label>密码:</label><input type = "text" name ="password"/><br/>
    <input type = "submit" value ="登录"/><br/>
    <span>
        <% if(request.getAttribute("errorMsg")!=null) {
    PrintWriter ou = response.getWriter();
    ou.print(request.getAttribute("errorMsg").toString());
}
%>
    </span>
</form>
</body>
</html>
