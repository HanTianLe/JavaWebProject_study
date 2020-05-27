<%--

--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>test</title>
    <script type="text/javascript" src="../js/jquery-3.3.1.min.js"></script>
    <script type="text/javascript">
        $(function () {
            var btn = $("#btn");
            btn.click(function () {
                $.ajax({
                   // 请求的后端服务地址。
                   url: '/ajax1_test',
                /**
                 * 请求失败的回调函数的测试。
                 * url: '/ajax2_test',
                 */
                // 请求⽅式，默认 get。
                    type:'post',
                    // 请求参数。
                    data:'id=1',
                    // 服务器返回的数据类型，text/json。
                    dataType:'text',
                    // 请求成功的回调函数。
                    success:function (data) {
                        var text = $("#text");
                        text.before("<span style='color: red'>"+data+"</span><br/>");
                    },
                    // 请求失败的回调函数。
                    error:function () {
                        alert("服务器维护中。。。。。");
                    },
                    // 请求完成的回调函数（⽆论成功或者失败，都会调⽤）。
                    complete:function () {
                       alert("请求完成~");
                    }
                });
            });
        })
    </script>
</head>
<body>
    ${str}
        <input id="text" type="text"/><br/>
        <input id="btn" type="button" value="提交"/>
</body>
</html>

