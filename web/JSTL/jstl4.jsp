<%@ page import="java.util.Date" %>
<%--
格式化标签库:
    formatDate      :对日期格式化。
    formatNumber    :对数字格式化。
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--注意这里是fmt--%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>jstl4</title>
</head>
<body>
    <h1>JSTL4界面</h1>
    <%
        // 存入日期。
        request.setAttribute("date",new Date());
    %>
    <%--小时，HH大写表示24小时制，hh小写表示12小时制。月，MM用大写，是为了和分mm区分。--%>
    <fmt:formatDate value="${date}" pattern="yyyy-MM-dd HH:mm:ss"></fmt:formatDate>     <hr>
    <%--整数位从小数点向左起2位，小数位从小数点向右起3位。--%>
    <fmt:formatNumber value="1234.4321" maxIntegerDigits="2" maxFractionDigits="3"></fmt:formatNumber>
</body>
</html>

