<%--
    指定作用域进行查找：
        pageContext：${pageScope.变量名}
        request：    ${requestScope.变量名}
        session：    ${sessionScope.变量名}
        application：${applicationScope.变量名}
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>el4</title>
</head>
<body>
    <%
        pageContext.setAttribute("name","page");
        request.setAttribute("name","request");
        session.setAttribute("name","session");
        application.setAttribute("name","application");
    %>
    ${pageScope.name}            <br>
    ${requestScope.name}         <br>
    ${sessionScope.name}         <br>
    ${applicationScope.name}
</body>
</html>

