<%--
request 作⽤域：在⼀次请求内有效。
request: 对应的内置对象是 request。
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>request</title>
</head>
<body>
    <h1>Request界面</h1>
    <%
        // 用request内置对象：request （存）。
        request.setAttribute("name","Tom");
        // 如果访问request.jsp，name是可以传到request2.jsp里面的。
        // 如果直接访问request2.jsp，就相当于二次请求。那么里面的name值则为null。
        // 因为request的作⽤域：只在⼀次请求内有效。
        request.getRequestDispatcher("request2.jsp").forward(request,response);
    %>
</body>
</html>
