<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%--
    EL执行表达式：
        &&  ||  !  <  >  <=  <=  ==

    逻辑与 &&  and     全1为1
    逻辑或 ||  or      有1说1

    && 对应 and
    || 对应 or
    ! 对应 not
    == 对应 eq
    != 对应 ne
    < 对应 lt
    > 对应 gt
    <= 对应 le
    >= 对应 ge
    empty ：1、变量为null。
            2、长度为0的String。
            3、size为0的集合。
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>el6</title>
</head>
<body>
    <%
        pageContext.setAttribute("num1",10);
        pageContext.setAttribute("num2",40);
        pageContext.setAttribute("str1",true);
        pageContext.setAttribute("str2",false);
        String str = "hello man";
        pageContext.setAttribute("str3",str);
        List<String> list = new ArrayList<>();
        pageContext.setAttribute("str4",list);
    %>
    ${num1 > num2}      <br>    <%--false--%>
    ${str1 && str2}     <br>    <%--false--%>
    ${str1 and str2}    <br>    <%--false--%>
    ${str1 || str2}     <br>    <%--true--%>
    ${str1 or str2}     <br>    <%--true--%>
    ${empty num3}       <br>    <%--true--%>
    ${empty str3}       <br>    <%--false--%>
    ${not empty str3}   <br>    <%--true--%>
    ${empty str4}       <br>    <%--true--%>
</body>
</html>

