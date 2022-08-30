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
<table style="border: 1px solid">
    <h3 style="margin: auto">不及格学生列表</h3>
    <tr style="border: 1px solid">
        <td>学号</td>
        <td>姓名</td>
        <td>成绩</td>
        <td>课程名</td>
    </tr>
    <c:forEach items="${failed}" var="failed">
        <tr>
                <td>${failed.studentid}</td>
                <td>${failed.student.name}</td>
                <td>${failed.grades}</td>
                <td>${failed.course.coursename}</td>
        </tr>
    </c:forEach>
</table>


</body>

</html>
