<%--
  Created by IntelliJ IDEA.
  User: TAN
  Date: 2021/3/9
  Time: 16:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>RESTful测试</title>
<%--    导入jquery的AJAX进行JSON的数据交互--%>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.11.3.min.js"></script>
    <script type="text/javascript">
        function search() {
            //获取输入的查询编号
            var id = $("#number").val();
            $.ajax({
               url:"${pageContext.request.contextPath}/user/"+id,
               type:"GET",
                //定义回调响应的数据格式为JSON字符串，该属性可以省略。
                dataType:"json",
                success:function (data) {
                            if (data.username !=null){
                                alert("您查询的用户是："+data.username);
                            }else {
                                alert("没有找到id为："+id+"的用户！")
                            }
                }
            });
        }
    </script>
</head>
<body>
<form>
    编号：<input type="text" name="number" id="number">
    <input type="button" value="搜索" onclick="search()">
</form>
</body>
</html>
