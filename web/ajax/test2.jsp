<%--

--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>test2</title>
    <script type="text/javascript" src="../js/jquery-3.3.1.min.js"></script>
    <script type="text/javascript">
        $(function () {
            var btn = $("#btn");
            btn.click(function () {
                $.ajax({
                    url: '/ajax2_test',
                    type:'post',
                    dataType:'json',
                    success:function (data) {
                        $("#id").val(data.id);
                        $("#name").val(data.name);
                        $("#score").val(data.score);
                    }
                });
            });
        })
    </script>
</head>
<body>
    <input id="id" type="text" placeholder="编号"/><br/>
    <input id="name" type="text" placeholder="姓名"/><br/>
    <input id="score" type="text" placeholder="成绩"/><br/>
    <input id="btn" type="button" value="提交"/>
</body>
</html>

