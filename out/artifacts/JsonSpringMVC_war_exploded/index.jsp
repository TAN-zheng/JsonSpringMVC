<%--
  Created by IntelliJ IDEA.
  User: TAN
  Date: 2021/3/9
  Time: 14:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>JSON交互测试</title>
<%--    使用的是Jquery的AJAX进行的JSON数据提交和相应。--%>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.11.3.min.js"></script>
    <script type="text/javascript">
      function testJson() {
        var username=$("#username").val();
        var password=$("#password").val();
        $.ajax({
          //提交的目标Controller类。
          url:"${pageContext.request.contextPath }/testJson",
          //提交的方式
          type:"post",
          //提交的内容。data表示发送的数据。
          data:JSON.stringify({username:username,password:password}),
          //定义发送请求的数据格式为JSON字符串。
          contentType:"application/json;charset=UTF-8",
          //定义回调响应的数据格式为为JSON字符串，该属性可以省略。
          dataType:"json",
          success:function (data) {
                    if (data!=null){
                      alert("您输入的用户名为："+data.username+"密码为："+data.password)
                    }
          }
        });
      }
    </script>
  </head>
  <body>
  <form>
    用户名：<input type="text" name="username" id="username"><br/>
    密码：<input type="password" name="password" id="password"><br/>
    <input type="button" value="测试JSON交互" onclick="testJson()">
  </form>
  </body>
</html>
