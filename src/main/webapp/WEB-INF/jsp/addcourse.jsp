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
<form class="layui-form" action="${pageContext.request.contextPath}/course/add" method="post" >
    <div class="layui-form-item">
        <label class="layui-form-label">课程号</label>
        <div class="layui-input-inline">
            <input type="text" name="courseid" lay-verify="required" placeholder="请输入" autocomplete="off" class="layui-input" id="studentid">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">课程名</label>
        <div class="layui-input-inline">
            <input type="text" name="coursename" lay-verify="required" placeholder="请输入" autocomplete="off" class="layui-input" id="name">
        </div>
    </div>
    <div class="layui-form-item" pane="">
        <label class="layui-form-label">类别</label>
        <div class="layui-input-block" id="div">
            <input type="radio" name="leibie" value="必修" title="必修"  >
            <input type="radio" name="leibie" value="任选" title="任选" >
            <input type="radio" name="leibie" value="限选" title="限选" >
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
