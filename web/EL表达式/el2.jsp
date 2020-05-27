<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>el2</title>
</head>
<body>
    <h1>el2界面</h1>
    <%
        String name = (String) request.getAttribute("name");
    %>
    <%=name%>
    <br>
    <%--比上面的简洁的多，这就是EL表达式。--%>
    ${name}

</body>
</html>
