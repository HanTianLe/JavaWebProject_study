<%--
  Created by IntelliJ IDEA.
  User: Hantianle
  Date: 2020/2/12 012
  Time: 10:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>application2</title>
</head>
<body>
    <h1>Application2界面</h1>
    <%
        String name = (String) application.getAttribute("name");
    %>
    <%=name%>
</body>
</html>
