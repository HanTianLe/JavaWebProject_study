<%--
session 作⽤域：在⼀次会话内有效。

session ：对应的内置对象是 session。

--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>session</title>
</head>
<body>
    <h1>Session界面</h1>
    <%
        session.setAttribute("name","Tom");
        // 重定向
        response.sendRedirect("session2.jsp");
        // 转发 (转发和重定向都可以。)
        //request.getRequestDispatcher("session2.jsp").forward(request,response);
    %>
</body>
</html>
