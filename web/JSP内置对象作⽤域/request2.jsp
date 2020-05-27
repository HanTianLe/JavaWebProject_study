<%--
  Created by IntelliJ IDEA.
  User: Hantianle
  Date: 2020/2/12 012
  Time: 9:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>request2</title>
</head>
<body>
    <h1>Request2界面</h1>
    <br>
    <%
        // 用内置对象request （取）。
        // 通过 key 获取 value 的值：name。
        String name = (String) request.getAttribute("name");
    %>
    <%=name%>
</body>
</html>
