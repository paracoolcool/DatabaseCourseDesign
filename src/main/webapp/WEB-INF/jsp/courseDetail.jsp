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

</head>
<body>

<hr/>
<h3>该课程学生考核情况</h3>
<p>修课人数：${count}&nbsp;|&nbsp;平均分：${averageGrades}</p>
<hr/>
<div>
    <div style="float: left">
        <c:forEach items="${students}" var="students">
            <p>姓名：<span style="color: darkgreen">${students.name}</span></p>
            <p>学号：${students.studentid}</p>
            <p>性别：${students.gender}</p>
        </c:forEach>
    </div>
    <div style="float: left;margin-left: 20px">
    <c:forEach items="${cougradesList}" var="cougradesList">
        <p>备注：${cougradesList.remark}</p>
        <p>成绩：${cougradesList.grades}</p>
        <p>课程时间：${cougradesList.crousetime}</p>
    </c:forEach>
    </div>
</div>
<hr/>
</body>

</html>
