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
<%--<form action="${pageContext.request.contextPath}/search/dept" method="post">--%>
<%--    <span>院系</span>--%>
<%--    <select name="deptid">--%>
<%--        <option value="01">01（中文）</option>--%>
<%--        <option value="02">02（外国语）</option>--%>
<%--        <option value="03">03（经管）</option>--%>
<%--        <option value="04">04（交通）</option>--%>
<%--        <option value="05">05（电子）</option>--%>
<%--        <option value="06">06（计算机）</option>--%>
<%--        <option value="07">07（土建）</option>--%>
<%--        <option value="08">08（机械）</option>--%>
<%--        <option value="09">09（化工）</option>--%>
<%--        <option value="10">10（数理）</option>--%>
<%--        <option value="11">11（政法）</option>--%>
<%--        <option value="12">12（纺织）</option>--%>
<%--        <option value="13">13（艺术）</option>--%>
<%--    </select>--%>
<%--    <input type="submit" name="btn" value="查询">--%>
<%--</form>--%>
<div>
    <div id="box" style="width: 1000px; height: 600px"></div>

</div>
<script>
    var chartDom = document.getElementById('box');
    var myChart = echarts.init(chartDom);
    var option;

    option = {
        title: {
            text: '教师职称分布',
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
                name: 'Access From',
                type: 'pie',
                radius: '50%',
                data: ${jobtitle},
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

    option && myChart.setOption(option);


</script>

</body>

</html>
