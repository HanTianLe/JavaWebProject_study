<%--
        page 作⽤域：只在当前⻚⾯有效。

        对应的内置对象是： pageContext。
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>page</title>
</head>
<body>
    <h1>Page页面</h1>
    <%
        // 用page内置对象：pageContext （存）。
        pageContext.setAttribute("name","Tom");
        // 转发。(可以发现，传到page2.jsp的name值为null，所以page只在当前⻚⾯有效。)
        // 既然转发为null，那么重定向response也一定为null。
        request.getRequestDispatcher("page2.jsp").forward(request,response);
    %>

</body>
</html>
