<%--
application 作⽤域：对应整个 WEB 应⽤的。（相当于Tomcat。）

application : 对应的内置对象是 application。
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>application</title>
</head>
<body>
    <h1>Application界面</h1>
    <%
        application.setAttribute("name","Tom");
        // 重定向
        response.sendRedirect("application2.jsp");
        // 转发 (转发和重定向都可以。)
        // request.getRequestDispatcher("application2.jsp").forward(request,response);
    %>
</body>
</html>

