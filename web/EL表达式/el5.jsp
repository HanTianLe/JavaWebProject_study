<%@ page import="com.hantianle.entity.User" %>
<%@ page import="com.hantianle.entity.Address" %>
<%--
        数据级联：
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>el5</title>
</head>
<body>
    <%
        User user = new User("张三",20,new Address(1,"小区"));
        // 控制台输出
        System.out.println(user.toString());
        // 将数据放入pageContext里面。
        pageContext.setAttribute("user",user);
    %>
    <h1>
        ${user}
    </h1>
<hr/>
    <table>
        <tr>
            <th>姓名</th>
            <th>年龄</th>
            <th>地址</th>
        </tr>
        <tr>
            <td>${user.name}</td>
            <td>${user.age}</td>
            <td>${user.address.value}</td>
        </tr>
    </table>
</body>
</html>

