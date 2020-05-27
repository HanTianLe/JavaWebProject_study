<%--
函数标签库:      （用的较少，了解就行）
    contains()          判断是否包含xxx。
    startsWith()        判断是否以某一个字符/字符串开头。
    endsWith()          判断是否以某一个字符/字符串结尾。
    indexOf()           判断某一个字符/字符串在字符串中的位置。
    replace("A","B")    将A，替换成B。
    substring()         截取。
    split()             分割。
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--注意这里是functions--%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>
    <title>jstl5</title>
</head>
<body>
    <h1>JSTL5界面</h1>
    <%
        request.setAttribute("info","Java,C");
    %>
    ${fn:contains(info,"Python")}   <br>    <%--判断info里面是否包含python。info里面的是：Java,C 。所以结果为false--%>
    ${fn:startsWith(info,"Java")}   <br>
    ${fn:endsWith(info,"C")}        <br>
    ${fn:indexOf(info, "va")}       <br/>   <%--判断va在Java,C中的位置。--%>
    ${fn:replace(info, "C","Python")}<br/>  <%--将C替换成Python。--%>
    ${fn:substring(info, 2, 3)}     <br/>   <%--从2截取到3，不包含3.按照下标的顺序。--%>
    ${fn:split(info, ",")[0]}-${fn:split(info, ",")[1]} <%--按照逗号进行分割(分割成2个。然后用下标取出。)--%>

</body>
</html>

