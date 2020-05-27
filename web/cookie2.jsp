<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>cookie2</title>
</head>
<body>
    <%
            // 读取 Cookie（取）
            Cookie[] cookies = request.getCookies();
            for (Cookie cookie:cookies){
                // 获取 Cookie 的 name 和 value。
                out.write(cookie.getName()+":"+cookie.getValue()+"<br/>");
            }
    %>
</body>
</html>

