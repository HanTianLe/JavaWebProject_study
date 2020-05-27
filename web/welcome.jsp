
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>welcome</title>
</head>
<body>
    <h1>welcome</h1>
    <%--
    因为LoginServlet里面的username是用session存储的，所以这边需要用session取。
    如果LoginServlet里面的username是用request存储的，那么就用request取。
    欢迎回来<%=request.getAttribute("username")%>
    --%>

    <%--  通过键获取对应的数据 --%>
    欢迎回来<%=session.getAttribute("username")%>
    <br>
    <%-- servlet3里面 --%>
    <a href="/logout">退出登录</a>

</body>
</html>

