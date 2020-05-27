<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>el3</title>
</head>
<body>
    <%
        // ${name} 所取得的name，下面的优先级为：pageContext > request > session > application
        pageContext.setAttribute("name","page");
        request.setAttribute("name","request");
        session.setAttribute("name","session");
        application.setAttribute("name","application");
    %>
    <h1>
        取得的name为：${name}
    </h1>

</body>
</html>
