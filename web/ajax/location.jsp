<%--

--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>location</title>
    <script type="text/javascript" src="../js/jquery-3.3.1.min.js"></script>
    <script type="text/javascript">
        $(function(){
            //修改省份
            $("#province").change(function () {
                var id = $(this).val();
                $.ajax({
                    url:"/location",
                    type:"POST",
                    data:"id="+id+"&type=province",
                    dataType:"JSON",
                    success:function(data){
                        var content = "";
                        var cities = data.cities;
                        for(var i=0;i<cities.length;i++){
                            content += "<option>"+cities[i]+"</option>";
                        }
                        $("#city").html(content);
                        content = "";
                        var areas = data.areas;
                        for(var i=0;i<areas.length;i++){
                            content += "<option>"+areas[i]+"</option>";
                        }
                        $("#area").html(content);
                    }
                });
            });
            //修改城市
            $("#city").change(function(){
                var id = $(this).val();
                $.ajax({
                    url:"/location",
                    type:"POST",
                    data:"id="+id+"&type=city",
                    dataType:"JSON",
                    success:function(data){
                        var content = "";
                        for(var i=0;i<data.length;i++){
                            content += "<option>"+data[i]+"</option>";
                        }
                        $("#area").html(content);
                    }
                });
            });
        });
    </script>
</head>
<body>
    省：<select id="province">
        <option value="陕⻄省">陕⻄省</option>
        <option value="河南省">河南省</option>
        <option value="江苏省">江苏省</option>
    </select>

    市：<select id="city">
        <option value="⻄安市">⻄安市</option>
        <option value="宝鸡市">宝鸡市</option>
        <option value="渭南市">渭南市</option>
    </select>

    区：<select id="area">
        <option>雁塔区</option>
        <option>莲湖区</option>
        <option>新城区</option>
    </select>
</body>
</html>

