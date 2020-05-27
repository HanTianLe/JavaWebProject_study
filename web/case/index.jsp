<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>case_index</title>
</head>
<body>
    <table>
        <tr>
            <th>编号</th>
            <th>姓名</th>
            <th>成绩</th>
            <th>操作</th>
        </tr>

        <c:forEach items="${maps}" var="user">
            <tr>
                <td>${user.id}</td>
                <td>${user.name}</td>
                <td>${user.score}</td>
                <td>
                    <a href="/case?method=delete&id=${user.id}">删除</a>
                    <a href="/case?method=findById&id=${user.id}">修改</a>
                </td>
            </tr>
        </c:forEach>
    </table>
    <a href="/case?method=add">添加</a>
</body>
</html>

