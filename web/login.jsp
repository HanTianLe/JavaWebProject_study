<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>login</title>
    <style>
        div{
            position: absolute;
            top: 0;
            right: 0;
            bottom: 0;
            left: 0;
            width: 240px;
            height: 200px;
            margin: auto ;
        }
    </style>
</head>
<body>
    <div>
        <%-- servlet3里面 --%>
        <form action="/login" method="post">
            <table>
                <%--<tr>表示行， <td>表示列。--%>
              <tr>
                  <td><input type="text" name="username" placeholder="用户名"/></td>
              </tr>

              <tr>
                  <td><input type="password" name="password" placeholder="密码"/></td>
              </tr>

              <tr>
                  <td>
                      &nbsp;&nbsp;&nbsp;
                      <input type="submit" value="登录"/>
                      &nbsp;&nbsp;&nbsp;&nbsp;
                      <input type="submit" value="注册"/>
                  </td>
              </tr>

            </table>
        </form>
    </div>
</body>
</html>

