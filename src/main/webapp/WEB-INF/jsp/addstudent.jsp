<%--
  Created by IntelliJ IDEA.
  User: 86187
  Date: 2022/1/4
  Time: 13:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="/jquery.min.js"></script>
    <!-- 引入 layui.css -->
    <link rel="stylesheet" href="/layui_kuangjia/css/layui.css">
    <!-- 引入 layui.js -->
    <script src="/layui_kuangjia/layui.js"></script>
    <script src="/layer/layer/layer.js"></script>
    <style>
        body{
            text-align: center;
        }
    </style>
</head>

<body>
<form class="layui-form" action="${pageContext.request.contextPath}/student/add" method="post" >
    <div class="layui-form-item">
        <label class="layui-form-label">学号</label>
        <div class="layui-input-inline">
            <input type="text" name="studentid" lay-verify="required" placeholder="请输入" autocomplete="off" class="layui-input" id="studentid">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">姓名</label>
        <div class="layui-input-inline">
            <input type="text" name="name" lay-verify="required" placeholder="请输入" autocomplete="off" class="layui-input" id="name">
        </div>
    </div>
    <div class="layui-form-item" pane="">
        <label class="layui-form-label">性别</label>
        <div class="layui-input-block" id="div">
            <input type="radio" name="gender" value="男" title="男"  >
            <input type="radio" name="gender" value="女" title="女" >
        </div>
    </div>
    <div class="layui-form-item">
        <div class="layui-input-block">
            <button type="submit" class="layui-btn" lay-submit="" lay-filter="demo1" id="btn">立即提交</button>
        </div>
    </div>
</form>

</body>



</html>
