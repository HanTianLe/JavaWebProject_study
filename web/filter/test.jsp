<%--
    用于 CharacterServlet 和 filter_Character 使用。
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>test</title>
</head>
<body>
    <form action="/characterServlet"method="post">
        <input type="text" name="name" placeholder="姓名"/>
        <input type="submit" value="提交">
    </form>
</body>
</html>

