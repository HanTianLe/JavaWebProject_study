<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>case_add</title>
</head>
<body>
    <form action="/case" method="post">
        编号：<input type="text" name="id"/><br>
        姓名：<input type="text" name="name"/><br>
        成绩：<input type="text" name="score"/><br>
        <input type="submit" value="添加">
    </form>
</body>
</html>

