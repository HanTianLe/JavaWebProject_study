<%--
JSP内置对象 9 个
  1、request：表示⼀次请求，HttpServletRequest。
  2、response：表示⼀次响应，HttpServletResponse。
  3、pageContext：⻚⾯上下⽂，获取⻚⾯信息，PageContext。
  4、session：表示⼀次会话，保存⽤户信息，HttpSession。
  5、application：表示当前 Web 应⽤，全局对象，保存所有⽤户共享信息，ServletContext。
  6、config：当前 JSP 对应的 Servlet 的 ServletConfig 对象，获取当前 Servlet 的信息。
  7、out：向浏览器输出数据，JspWriter。
  8、page：当前 JSP 对应的 Servlet 对象，Servlet。
  9、exception：表示 JSP ⻚⾯发⽣的异常，Exception。

  常⽤的是 request、response、session、application、pageContext
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>index2</title>
</head>
<body>
    <%
        //向浏览器输出数据,如：hello world~
        out.write("hello world~");
    %>
</body>
</html>
