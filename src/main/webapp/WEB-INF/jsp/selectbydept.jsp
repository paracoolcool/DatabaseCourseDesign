<%--
  Created by IntelliJ IDEA.
  User: 86187
  Date: 2021/12/31
  Time: 14:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="/jquery.min.js"></script>
    <script src="/echarts.min.js"></script>
    <script src="/layer/layer/layer.js"></script>

</head>
<body>
<form action="${pageContext.request.contextPath}/search/dept" method="post">
    <span>院系</span>
    <select name="deptid">
        <option value="01">01（智能制造学部）</option>
        <option value="02">02（外国语学院）</option>
        <option value="03">03（轨道交通学院）</option>
        <option value="04">04（生物与大健康学院）</option>
        <option value="05">05（经济管理学院）</option>
    </select>
    <input type="submit" name="btn" value="查询">
</form>
<div>
    <div id="box" style="width: 580px; height: 600px;float: left"></div>
    <div id="box1" style="width:580px; height: 600px;float: right"></div>
</div>
<script>
    // 初始化echarts实例
    var myEcharts = echarts.init(document.getElementById("box"));
    var option;

    option = {
        title: {
            text: '${deptname}学院生源地分布',
            subtext: '',
            left: 'center'
        },
        tooltip: {
            trigger: 'item'
        },
        legend: {
            orient: 'vertical',
            left: 'left'
        },
        series: [
            {
                name: '${deptname}学院生源地分布',
                type: 'pie',
                radius: '40%',
                data: ${list},
                //     [
                //     { value: 1048, name: 'Search Engine' },
                //     { value: 735, name: 'Direct' },
                //     { value: 580, name: 'Email' },
                //     { value: 484, name: 'Union Ads' },
                //     { value: 300, name: 'Video Ads' }
                // ],
                emphasis: {
                    itemStyle: {
                        shadowBlur: 10,
                        shadowOffsetX: 0,
                        shadowColor: 'rgba(0, 0, 0, 0.5)'
                    }
                }
            }
        ]
    };

    option && myEcharts.setOption(option);

</script>
<script>
    // 初始化echarts实例
    var myEchart = echarts.init(document.getElementById("box1"));
    var option;

    option = {
        title: {
            text: '${deptname}学院学生男女比例',
            subtext: '',
            left: 'center'
        },
        tooltip: {
            trigger: 'item'
        },
        legend: {
            orient: 'vertical',
            left: 'right'
        },
        series: [
            {
                name: '${deptname}学院学生男女比例',
                type: 'pie',
                radius: '40%',
                data: ${listGender},
                //     [
                //     { value: 1048, name: 'Search Engine' },
                //     { value: 735, name: 'Direct' },
                //     { value: 580, name: 'Email' },
                //     { value: 484, name: 'Union Ads' },
                //     { value: 300, name: 'Video Ads' }
                // ],
                emphasis: {
                    itemStyle: {
                        shadowBlur: 10,
                        shadowOffsetX: 0,
                        shadowColor: 'rgba(0, 0, 0, 0.5)'
                    }
                }
            }
        ]
    };

    option && myEchart.setOption(option);

</script>

</body>

</html>
