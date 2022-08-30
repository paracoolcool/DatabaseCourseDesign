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
    <script src="/china.js"></script>
    <script src="/layer/layer/layer.js"></script>

</head>
<body>
<div id="box" style="width:1000px; height: 600px;float: left;margin: auto"></div>
<script>
    // 初始化echarts实例
    var myEcharts = echarts.init(document.getElementById("box"));
    myEcharts.on('click',function (params) {
        var fromplace = params.name;
        layer.open({
            type: 2,
            title: fromplace+'的信息',
            shadeClose: true,
            shade: false,
            maxmin: true, //开启最大化最小化按钮
            area: ['800px', '500px'],
            content:"${pageContext.request.contextPath}/search/detail?fromplace="+fromplace
        });


    })
    var option = {
        title: {  //标题样式
            text: '学生生源地信息',
            x: "center",
            textStyle: {
                fontSize: 18,
                color: "red"
            },
        },
        tooltip: {  //这里设置提示框
            trigger: 'item',  //数据项图形触发
            backgroundColor: "red",  //提示框浮层的背景颜色。
            //字符串模板(地图): {a}（系列名称），{b}（区域名称），{c}（合并数值）,{d}（无）
            formatter: '地区：{b}<br/>人数：{c}'
        },
        visualMap: {//视觉映射组件
            top: 'center',
            left: 'left',
            min: 0,
            max: 50,
            text: ['High', 'Low'],
            realtime: false,  //拖拽时，是否实时更新
            calculable: true,  //是否显示拖拽用的手柄
            inRange: {
                color: ['white', 'yellow', 'orangered','red']
            }
        },


        series: [
            {
                name: '人数',
                type: 'map',
                mapType: 'china',
                roam: false,//是否开启鼠标缩放和平移漫游
                itemStyle: {//地图区域的多边形 图形样式
                    normal: {//是图形在默认状态下的样式
                        label: {
                            show: true,//是否显示标签
                            textStyle: {
                                color: "black"
                            }
                        }
                    },
                    zoom: 1.5,  //地图缩放比例,默认为1
                    emphasis: {//是图形在高亮状态下的样式,比如在鼠标悬浮或者图例联动高亮时
                        label: { show: true }
                    }
                },
                top: "3%",//组件距离容器的距离
                left: "20%",
                data: ${list}
                <%--    [--%>
                <%--    { name: '北京', value: 0 },--%>
                <%--    { name: '天津', value: 0 },--%>
                <%--    { name: '上海', value: 0 },--%>
                <%--    { name: '重庆', value: ${count4} },--%>
                <%--    { name: '河北', value: 0 },--%>
                <%--    { name: '河南', value: 0 },--%>
                <%--    { name: '云南', value: 0 },--%>
                <%--    { name: '辽宁', value: 0 },--%>
                <%--    { name: '黑龙江', value: 0 },--%>
                <%--    { name: '湖南', value: ${count2} },--%>
                <%--    { name: '安徽', value: 0 },--%>
                <%--    { name: '山东', value: 0 },--%>
                <%--    { name: '新疆', value: 0 },--%>
                <%--    { name: '江苏', value: 0 },--%>
                <%--    { name: '浙江', value: 0 },--%>
                <%--    { name: '江西', value: 0 },--%>
                <%--    { name: '湖北', value: ${count3} },--%>
                <%--    { name: '广西', value: 0 },--%>
                <%--    { name: '甘肃', value: 0 },--%>
                <%--    { name: '山西', value: 0 },--%>
                <%--    { name: '内蒙古', value: 0 },--%>
                <%--    { name: '陕西', value: 0 },--%>
                <%--    { name: '吉林', value: 0 },--%>
                <%--    { name: '福建', value: ${count1} },--%>
                <%--    { name: '贵州', value: 0 },--%>
                <%--    { name: '广东', value: ${count} },--%>
                <%--    { name: '青海', value: 0 },--%>
                <%--    { name: '西藏', value: 0 },--%>
                <%--    { name: '四川', value: 0 },--%>
                <%--    { name: '宁夏', value: 0 },--%>
                <%--    { name: '海南', value: 0 },--%>
                <%--    { name: '台湾', value: 0 },--%>
                <%--    { name: '香港', value: 0 },--%>
                <%--    { name: '澳门', value: 0 }--%>
                <%--]--%>
            }
        ]
    };
    // 使用刚指定的配置项和数据显示图表。
    myEcharts.setOption(option);
</script>
</body>

</html>
