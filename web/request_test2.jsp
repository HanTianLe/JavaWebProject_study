<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>request_test2</title>
</head>
<body>
<h1>这是request_test2的jsp文件！</h1>

    <%
        // 通过 key 取出 value。
        // key 和 value 分别就是request_test.jsp里request.setAttribute("number",num);里面的 number 和 num。
        Integer numbers = (Integer) request.getAttribute("number");
    %>

    <%=numbers%>

</body>
</html>

