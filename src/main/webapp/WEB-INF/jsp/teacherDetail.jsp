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
        <td width="100px">${teacher.name}</td>
        <td>性别</td>
        <td width="100px">${teacher.gender}</td>
        <td rowspan="5" width="150px" style="text-align: center"><img src="/img/OIP-C.jpg"></td>
    </tr>
    <tr>
        <td>教工号</td>
        <td width="50px">${teacher.teacherid}</td>
        <td>职称</td>
        <td width="50px">${teacher.jobtitle}</td>
    </tr>
    <tr>
        <td>系别代号</td>
        <td width="50px">${teacher.deptid}</td>
        <td>系别名称</td>
        <td width="50px">${teacher.deptname}</td>
    </tr>

</table>
<hr/>
<h3>讲授情况</h3>
<c:forEach items="${catechism}" var="catechism">
    <p style="margin-top: 20px">课程名：<span>${catechism.course.coursename}</span></p>
    <p>课程号：${catechism.course.courseid}</p>
    <p>学分：${catechism.course.credits}</p>
    <p>考核方式：${catechism.course.khfangshi}</p>
    <hr/>
</c:forEach>
</body>

</html>
