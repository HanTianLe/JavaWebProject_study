<%--
Session：⽤户会话
    服务器⽆法识别每⼀次 HTTP 请求的出处（不知道来⾃于哪个终端），它只会接受到⼀个请求信号，所以就存在⼀个问题：
    将⽤户的响应发送给其他⼈，必须有⼀种技术来让服务器知道请求来⾃哪，这就是会话技术。

    会话：就是客户端和服务器之间发⽣的⼀系列连续的请求和响应的过程，打开浏览器进⾏操作到关闭浏览器的过程。
    会话状态：指服务器和浏览器在会话过程中产⽣的状态信息，借助于会话状态，服务器能够把属于同⼀次会话的⼀系列请求和响应关联起来。

    实现会话有两种⽅式：session 和 cookie

  session常用的方法：
            String getId()                              获取sessionID。
            void setMaxInactiveInterval(int interval)   设置session的失效时间，单位为秒。
            int getMaxInactiveInterval()                获取当前session的失效时间，单位为秒。
            void invalidate()                           设置session立即失效。
            void setAttribute(String key,Object value)  通过键值对的形式来存储数据。
            Object getAttribute(String key)             通过键获取对应的数据。
            void removeAttribute(String key)            通过键删除对应的数据。
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>session</title>
</head>
<body>
    <%
        // 获取sessionID。
        String sessionID = session.getId();
        // 获取当前session的失效时间。（默认1800秒。）
        int interval = session.getMaxInactiveInterval();
    %>

    <%=sessionID%>
<br>
    <%=interval%>

</body>
</html>

