<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>filter_login</title>
</head>
<body>
    <form action="/filter_loginServlet" method="post">
        <input type="text" name="name" placeholder="姓名"/>   <br/>
        <input type="password" name="password" placeholder="密码"/>   <br/>
        <input type="submit" value="提交">
    </form>
</body>
</html>

