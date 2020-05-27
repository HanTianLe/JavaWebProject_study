<%@ page import="java.util.List" %>
<%@ page import="com.hantianle.entity.User" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.hantianle.entity.Address" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
  <head>
    <title>index</title>
  </head>
  <body>
  <h1>这是我的第一个JavaWeb项目</h1>

  <%-- JSP声明，定义Java方法。--%>
  <%!
    public String test(){
      return "Hello World!";
    }
  %>

  <%-- JSP脚本，执行Java逻辑代码。--%>
  <%
    String str = test();
  %>

  <%-- JSP表达式，把Java对象直接输出到HTML页面中。--%>
  <%=str%>


  <%
    List<User> list = new ArrayList<>();
    list.add(new User("张三",23,new Address(1,"小区")));
    list.add(new User("李四",24,new Address(2,"小区")));
    list.add(new User("王五",25,new Address(3,"小区")));
    list.add(new User("赵六",26,new Address(4,"小区")));
  %>
<table>
  <tr>
    <th>姓名</th>
    <th>年龄</th>
  </tr>

  <%
    for (int i = 0;i<list.size();i++){
  %>

  <tr>
    <td>
      <%=list.get(i).getName()%>
    </td>
    <td>
      <%=list.get(i).getAge()%>
    </td>
  </tr>

  <%
    }
  %>

</table>
  </body>
</html>


