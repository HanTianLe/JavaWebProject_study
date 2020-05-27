<%--
    JSP:
        1、input 的 type 设置为 file。
        2、form 表单的 method 设置 post 。如果用 get 请求会将⽂件名传给服务端，⽽不是⽂件本身。
        3、form 表单的 enctype 设置 multipart/form-data，以⼆进制的形式传输数据。
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>upload</title>
</head>
<body>
    <form action="/upload" enctype="multipart/form-data" method="post">
        <input name="desc" type="text"/><br/>
        <input name="text" type="file"/><br/>
        <input type="submit" value="上传"/>
    </form>
</body>
</html>

