
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>cookie_welcome</title>
</head>
<body>
    <%
        Cookie[] cookies = request.getCookies();
        for (Cookie cookie:cookies){
            if (cookie.getName().equals("name")){
                out.write("欢迎回来~"+cookie.getValue());
            }
        }
    %>
    <a href="/cookie_logout">退出登录</a>
</body>
</html>

