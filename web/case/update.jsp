<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>case_update</title>
</head>
<body>
    <form action="/case" method="post">
        编号：<input type="text" name="id" value="${user.id}" readonly/><br> <%--readonly是只读的意思。--%>
        姓名：<input type="text" name="name" value="${user.name}"/><br>
        成绩：<input type="text" name="score" value="${user.score}"/><br>
        <input type="submit" value="修改">
    </form>
</body>
</html>

