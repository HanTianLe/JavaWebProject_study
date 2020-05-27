<%@ page import="java.util.Arrays" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>request_test3</title>
</head>
<body>
    <%
        // 指定每个请求的编码。(为utf-8)
        request.setCharacterEncoding("UTF-8");
        // 获取客户端传来的多个同名参数。
        // 访问时网站如：http://localhost:8080/request_test3.jsp?name=韩天乐&name=韩天喜&name=韩天琪
        String[] names = request.getParameterValues("name");
    %>

    <%=Arrays.toString(names)%>

</body>
</html>
