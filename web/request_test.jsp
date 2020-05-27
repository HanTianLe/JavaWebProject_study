<%--
request 常⽤⽅法：
    1、String getParameter(String key) ：获取客户端传来的参数。

    2、void setAttribute(String key,Object value) ：通过键值对的形式保存数据。

    3、Object getAttribute(String key) ：通过 key 取出 value。
       [这个key和value就是上面void setAttribute(String key,Object value) ：里面的key和value，具体看例子。]

    4、RequestDispatcher getRequestDispatcher(String path) ：返回⼀个 RequestDispatcher 对象，该对象的 forward ⽅法⽤于请求转发。

    5、String[] getParameterValues() ：获取客户端传来的多个同名参数。

    6、void setCharacterEncoding(String charset) ：指定每个请求的编码。
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <title>request_test</title>
</head>
<body>
<h1>这是request_test的jsp文件！</h1>

    <%
        // 获取客户端传来的参数。
        // 访问时网站如：http://localhost:8080/request_test.jsp?id=3 （id可以等于别的数字。）
        String id = request.getParameter("id");
        Integer num = Integer.parseInt(id);
        num++;
        // 通过键值对的形式保存数据，将数据存入到request中。
        request.setAttribute("number",num);
        // 将请求转发给request_test2.jsp。
        request.getRequestDispatcher("request_test2.jsp").forward(request,response);
    %>

    <%=id%>

</body>
</html>

