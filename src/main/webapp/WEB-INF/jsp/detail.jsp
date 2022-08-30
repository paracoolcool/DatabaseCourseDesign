<%--
  Created by IntelliJ IDEA.
  User: 86187
  Date: 2021/12/26
  Time: 15:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--<jsp:useBean id="command" class="com.wyu.demo.entity.Student" scope="request"></jsp:useBean>--%>
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
        td{
            height: 50px;
            width: 200px;
        }
    </style>
</head>
<body>
<table class="table1" border="1" cellspacing="0">
    <tr>
        <td>姓名</td>
        <td width="100px">${stu.name}</td>
        <td>性别</td>
        <td width="100px">${stu.gender}</td>
        <td rowspan="5" width="150px" style="text-align: center"><img src="/img/${stu.photo}" style="width: 200px;height: 300px"></td>
    </tr>
    <tr>
        <td>出生年月</td>
        <td width="50px">${stu.birth}</td>
        <td>生源地</td>
        <td width="50px">${stu.fromplace}</td>
    </tr>
    <tr>
        <td>政治面貌</td>
        <td width="50px">${stu.ptface}</td>
        <td>学号</td>
        <td width="50px">${stu.studentid}</td>
    </tr>
    <tr>
        <td>是否住宿</td>
        <td width="50px">${stu.iszhusu}</td>
        <td>宿舍电话</td>
        <td width="50px">${stu.sushephone}</td>
    </tr>
</table>
<hr/>
<c:forEach items="${cougrades}" var="cougrades">
    <p>课程成绩：</p>
    <p>课程名：<span>${cougrades.course.coursename}</span></p>
    <p>成绩：${cougrades.grades}</p>
    <p>课程时间：${cougrades.crousetime}</p>
    <p>学分：${cougrades.course.credits}</p>
    <p>考核方式：${cougrades.course.khfangshi}</p>
    <p>类别：${cougrades.course.leibie}</p>
    <hr/>
</c:forEach>
</body>

</html>
