<%--
response 常⽤⽅法：
    sendRedirect(String path) 重定向，完成⻚⾯之间的跳转。

    转发 getRequestDispatcher 和重定向 sendRedirect 的区别：
        转发: 是将同⼀个请求传给下⼀个⻚⾯，重定向是创建⼀个新的请求传给下⼀个⻚⾯，之前的请求结束⽣命周期。
        转发：同⼀个请求在服务器之间传递，地址栏不变，也叫服务器跳转。
        重定向：由客户端发送⼀次新的请求来访问跳转后的⽬标资源，地址栏改变，也叫客户端跳转。

    如果两个⻚⾯之间需要通过 request 来传值，则必须使⽤转发，不能使⽤重定向。
    ⽤户登录，如果⽤户名和密码正确，则跳转到⾸⻚（转发），并且展示⽤户名，否则重新回到登陆⻚⾯（重定向）。
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>response_forward</title>
</head>
<body>
    <h1>Forward</h1>
    <%
        request.setAttribute("name","Tom");
        // 转发
        // request.getRequestDispatcher("response_target.jsp").forward(request,response);
        /** 重定向*/
        response.sendRedirect("response_target.jsp");
    %>
</body>
</html>

