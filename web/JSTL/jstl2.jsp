<%@ page import="com.hantianle.entity.User" %>
<%@ page import="com.hantianle.entity.Address" %>
<%--
JSTL 优点：
    1、提供了统⼀的标签
    2、可以⽤于编写各种动态功能

    核⼼标签库常⽤标签：set、out、remove、catch

    set：向域对象中添加数据。      (存)
    out：输出域对象中的数据。      (取)
    remove：删除域对象中的数据。   (删)
    catch：捕获异常。           (抛异常)
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>jstl2</title>
</head>
<body>
    <h1>JSTL2界面</h1>
    <%--scope表示选择存入4个作用域：page、request、session、application--%>
    <c:set var="name" value="tom" scope="request"></c:set>
    ${requestScope.name}
    <hr>
    <%
        // 存
        User user = new User("赵六",44,new Address(3,"天国"));
        request.setAttribute("user",user);
    %>
    <%--改前输出。--%>
    ${user.name}
    <hr>
    <%--修改。--%>
    <c:set target="${user}" property="name" value="赵七"></c:set>
    <%--改后输出。--%>
    ${user.name}
    <hr>

    <%--这样没写scope，默认是scope="page"。默认是存储在page里面的。--%>
    <c:set var="name2" value="jerry"></c:set>
    <%--如果name2的值不存在，那么default里面的"不存在name2"就会显示在浏览器中。--%>
    <c:out value="${name2}" default="不存在name2"></c:out>
    <hr>
    <c:out value="${name0}" default="不存在name0,未定义"></c:out>
    <hr>


    <%--删除域对象中的数据。--%>
    <c:remove var="name2" scope="page"></c:remove>
    <%--输出域对象中的数据。--%>
    <c:out value="${name2}" default="不存在name2"></c:out>
    <hr>


    <%--将<% %>里面的错误信息存入error。再通过${error}将错误信息展示出来。--%>
    <c:catch var="error">
        <%
            int a = 10/0;
        %>
    </c:catch>
    ${error}


</body>
</html>

