<%--
    Expression Language 表达式语⾔，替代 JSP ⻚⾯中数据访问时的复杂编码，可以⾮常便捷地取出域对
    象（pageContext、request、session、application）中保存的数据，前提是⼀定要先 setAttribute，
    EL 就相当于在简化 getAttribute 。

    格式：${变量名}       变量名就是 setAttribute 对应的 key 值。

    EL 对于 4 种域对象的默认查找顺序： pageContext > request > session > application
    按照上述的顺序进⾏查找，找到⽴即返回，如果在 application 中也⽆法找到，则返回 null

--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>el</title>
</head>
<body>
    <h1>el界面</h1>
    <%
        request.setAttribute("name","Tom");
        // 转发。
        request.getRequestDispatcher("el2.jsp").forward(request,response);
    %>
</body>
</html>
