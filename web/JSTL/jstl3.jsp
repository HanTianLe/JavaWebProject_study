<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%--
    条件标签：if 、choose
    迭代标签：forEach
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>jstl3</title>
</head>
<body>
    <h1>JSTL3界面</h1>
    <c:set var="num1" value="1"></c:set>
    <c:set var="num2" value="2"></c:set>
    <c:if test="${num1>num2}">false</c:if>
    <c:if test="${num1<num2}">true</c:if>
    <hr>


    <c:choose>
        <c:when test="${num1>num2}">false</c:when>
        <c:otherwise>true</c:otherwise>
    </c:choose>
    <hr>


    <%
        List<String> list = new ArrayList<>();
        list.add("a");list.add("b");list.add("c");
        list.add("d");list.add("e");list.add("f");
        list.add("g");list.add("h");list.add("i");
        request.setAttribute("lists",list);
    %>
    <%--begin="2" end="4"从标签2开始，到标签4结束。下面显示为：cde (几乎不用)--%>
    <c:forEach items="${lists}" var="str" begin="2" end="4">
        ${str}<br>
    </c:forEach>
    <hr>
    <%--step默认值为1。步数为2，则从第1个跳到第3个，再从第3个跳到第5个，以此类推。
    下面显示为：acegi (几乎不用)--%>
    <c:forEach items="${lists}" var="str" step="2">
        ${str}
    </c:forEach>
    <hr>
    <%--varStatus="sta"创建记录信息变量：sta，然后通过sta可以获取功能,如排序count、下标index。--%>
    <c:forEach items="${lists}" var="str" varStatus="sta">
        ${sta.count}、${str}<br>
    </c:forEach>
    <hr>
    <c:forEach items="${lists}" var="str" varStatus="skr">
        ${skr.index}、${str}<br>
    </c:forEach>
</body>
</html>

