<%--
 Cookie 是服务端在 HTTP 响应中附带传给浏览器的⼀个⼩⽂本⽂件，⼀旦浏览器保存了某个 Cookie，
        在之后的请求和响应过程中，会将此 Cookie 来回传递，这样就可以通过 Cookie 这个载体完成客户端
        和服务端的数据交互。

    Cookie 常⽤的⽅法:
        void setMaxAge(int age) 设置 Cookie 的有效时间，单位为秒。
        int getMaxAge() 获取 Cookie 的有效时间。
        String getName() 获取 Cookie 的 name。
        String getValue() 获取 Cookie 的 value。
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>cookie</title>
</head>
<body>
    <%
        // 创建 Cookie，响应客户端。（存）
        Cookie cookie = new Cookie("name","Tom");
        // 设置 Cookie 的有效时间。(10秒)
        cookie.setMaxAge(10);
        response.addCookie(cookie);

        out.write("创建cookie成功~");
    %>

</body>
</html>

