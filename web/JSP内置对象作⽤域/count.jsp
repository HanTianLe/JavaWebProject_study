<%--
        ⽹站访问量统计
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>count</title>
</head>
<body>
    <%
        Integer count = (Integer) application.getAttribute("count");
        if (count == null){
            count = 1;
            application.setAttribute("count",count);
        }else {
            count++;
            application.setAttribute("count",count);
        }
    %>
    <h1>您是当前的第<%=count%>位访客。</h1>
</body>
</html>
