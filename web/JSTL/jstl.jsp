<%@ page import="com.hantianle.entity.User" %>
<%@ page import="java.util.List" %>
<%--
    JSP Standard Tag Library JSP 标准标签库，JSP 为开发者提供的⼀系列的标签，
    使⽤这些标签可以完成⼀些逻辑处理，⽐如循环遍历集合，让代码更加简洁，不再出现 JSP 脚本穿插的情况。

    实际开发中 EL 和 JSTL 结合起来使⽤，JSTL 侧重于逻辑处理，EL 负责展示数据。

    JSTL 的使⽤:
        1、需要导⼊ jar 包 (jstl.jar 和 standard.jar) 存放的位置 web/WEB-INF/lib
        2、在 JSP ⻚⾯开始的地⽅导⼊ JSTL 标签库
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--导入标签库--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>jstl</title>
</head>
<body>
    <h1>JSTL界面</h1>
    <table>
        <tr>
            <th>编号</th>
            <th>姓名</th>
            <th>年龄</th>
            <th>地址</th>
        </tr>

<%--
        <%
            List<User> list = (List<User>) request.getAttribute("list");
            for (User user:list){
                request.setAttribute("user",user);
        %>
        <tr>
            <td>${user.address.id}</td>
            <td>${user.name}</td>
            <td>${user.age}</td>
            <td>${user.address.value}</td>
        </tr>
        <%
            }
        %>
--%>

        <c:forEach items="${list}" var="user">
            <tr>
                <td>${user.address.id}</td>
                <td>${user.name}</td>
                <td>${user.age}</td>
                <td>${user.address.value}</td>
            </tr>
        </c:forEach>

    </table>
</body>
</html>

