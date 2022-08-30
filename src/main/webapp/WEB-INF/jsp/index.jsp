<%--
  Created by IntelliJ IDEA.
  User: 86150
  Date: 2021/5/15
  Time: 10:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>教学管理系统</title>
    <script src="/jquery.min.js"></script>
    <!-- 引入 layui.css -->
    <link rel="stylesheet" href="/layui_kuangjia/css/layui.css">
    <!-- 引入 layui.js -->
    <script src="/layui_kuangjia/layui.js"></script>
</head>
<body background=""style="background-size:1500px ">
<div class="layui-layout layui-layout-admin">
    <div class="layui-header layui-bg-cyan" >
        <div class="layui-logo layui-hide-xs layui-bg-cyan" style="font-size: 18px;font-weight:bold">教学管理系统</div>
        <div class="layui-body">
            <!-- 内容主体区域 -->
            <div style="padding: 1px;color:darkgreen; margin-top: -5px">
                <div class="layui-tab layui-tab-brief" lay-filter="demo" lay-allowclose="true">
                    <ul class="layui-tab-title" >
                        <li class="layui-icon layui-icon-home" lay-id="11" >首页</li>
                    </ul>
                    <div class="layui-tab-content" style="margin-top: -14px">
                        <div class="layui-tab-item layui-show">
                            <iframe src="https://www.wyu.edu.cn/" width="100%" height="570px"></iframe>
                        </div>
                    </div>
                </div>


            </div>
        </div>
        <!-- 头部区域（可配合layui 已有的水平导航） -->
        <ul class="layui-nav layui-layout-left">

        </ul>

        <ul class="layui-nav layui-layout-right">
            <li class="layui-nav-item layui-hide-xs"><a href=""><i class="layui-icon layui-icon-time" style="font-size: 15px; color: #FFFFFF;"></i><span
                    id="timeText"></span></a></li>

            <li class="layui-nav-item layui-hide-xs"><a href="${pageContext.request.contextPath}/Logout"><i class="layui-icon layui-icon-close-fill" style="font-size: 14px; color: #FFFFFF;"></i> 退出登录</a></li>
            
            <li class="layui-nav-item" lay-header-event="menuRight" lay-unselect>
                <a href="javascript:;">
                    <i class="layui-icon layui-icon-more-vertical"></i>
                </a>
            </li>
        </ul>
    </div>



    <div class="layui-side layui-bg-cyan">
        <div class="layui-side-scroll">


            <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
            <ul class="layui-nav layui-nav-tree" lay-filter="test">
                <li class="layui-nav-item layui-bg-black"><a href="index.jsp"><i class="layui-icon layui-icon-home" style="font-size: 17px; color: #FFFFFF;"></i> 首页</a></li>
                <li class="layui-nav-item layui-nav-itemed">
                    <a class="" href="javascript:;"><i class="layui-icon layui-icon-user" style="font-size: 17px; color: #FFFFFF;"></i>基本表查询与维护</a>
                    <dl class="layui-nav-child " style="padding:10px ">
                        <dd><a href="javascript:;"data-url="${pageContext.request.contextPath}/student/item1" data-id="checkpeople" data-title="<i class='layui-icon layui-icon-search'
                            style='font-size: 16px; color: green;'></i>学生情况" data-type="tabAdd" class="site-demo-active" >
                            <i class="layui-icon layui-icon-search" style="font-size: 16px; color: #FFFFFF;"></i>学生情况</a></dd>
                        <dd><a href="javascript:;"data-url="${pageContext.request.contextPath}/teacher/item1" data-id="checkkc" data-title="<i class='layui-icon layui-icon-search'
                            style='font-size: 16px; color: green;'></i>教师情况" data-type="tabAdd" class="site-demo-active" >
                            <i class="layui-icon layui-icon-search" style="font-size: 16px; color: #FFFFFF;"></i>教师情况</a></dd>
                        
                        <dd><a href="javascript:;"data-url="${pageContext.request.contextPath}/course/item1" data-id="addyonghu" data-title="<i class='layui-icon layui-icon-add-circle-fine'
                            style='font-size: 16px; color: green;'></i>课程情况" data-type="tabAdd" class="site-demo-active" >
                            <i class="layui-icon layui-icon layui-icon-add-circle-fine" style="font-size: 16px; color: #FFFFFF;"></i> 课程情况</a></dd>
                        <dd><a href="javascript:;"data-url="${pageContext.request.contextPath}/grades/item1" data-id="selectgrades" data-title="<i class='layui-icon layui-icon-add-circle-fine'
                            style='font-size: 16px; color: green;'></i>课程情况" data-type="tabAdd" class="site-demo-active" >
                            <i class="layui-icon layui-icon layui-icon-add-circle-fine" style="font-size: 16px; color: #FFFFFF;"></i> 成绩表查询</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item ">
                    <a class="" href="javascript:;"><i class="layui-icon layui-icon-chat" style="font-size: 17px; color: #FFFFFF}"></i>统计查询</a>
                    <dl class="layui-nav-child " style="padding:10px ">
                        <dd><a href="javascript:;"data-url="${pageContext.request.contextPath}/search/fromplace" data-id="checkbumen" data-title="<i class='layui-icon layui-icon-search'
                            style='font-size: 16px; color: green;'></i>生源地人数查询" data-type="tabAdd" class="site-demo-active" >
                            <i class="layui-icon layui-icon-search" style="font-size: 16px; color: #FFFFFF;"></i>总体生源地人数查询</a></dd>
                        <dd><a href="javascript:;"data-url="${pageContext.request.contextPath}/search/dept" data-id="checkbumen1" data-title="<i class='layui-icon layui-icon-search'
                            style='font-size: 16px; color: green;'></i>按院系统计查询" data-type="tabAdd" class="site-demo-active" >
                            <i class="layui-icon layui-icon-search" style="font-size: 16px; color: #FFFFFF;"></i>按院系统计查询</a></dd>

                        <dd><a href="javascript:;"data-url="${pageContext.request.contextPath}/search/grades" data-id="addbumen" data-title="<i class='layui-icon layui-icon-add-circle-fine'
                            style='font-size: 16px; color: green;'></i>课程平均成绩统计查询" data-type="tabAdd" class="site-demo-active" >
                            <i class="layui-icon layui-icon layui-icon-add-circle-fine" style="font-size: 16px; color: #FFFFFF;"></i>课程平均成绩统计查询</a></dd>
                        <dd><a href="javascript:;"data-url="${pageContext.request.contextPath}/search/jobtitle" data-id="jobtitle" data-title="<i class='layui-icon layui-icon-add-circle-fine'
                            style='font-size: 16px; color: green;'></i>教师职称统计查询" data-type="tabAdd" class="site-demo-active" >
                            <i class="layui-icon layui-icon layui-icon-add-circle-fine" style="font-size: 16px; color: #FFFFFF;"></i>教师职称统计查询</a></dd>
                    </dl>
                </li>

                <li class="layui-nav-item ">
                    <a class="" href="javascript:;"><i class="layui-icon layui-icon-flag" style="font-size: 17px; color: #FFFFFF;"></i> 下载中心</a>
                    <dl class="layui-nav-child " style="padding:10px ">

                        <dd><a href="javascript:;"data-url="${pageContext.request.contextPath}/files" data-id="addgg" data-title="<i class='layui-icon layui-icon-upload-drag'
                            style='font-size: 16px; color: green;'></i>上传文件" data-type="tabAdd" class="site-demo-active" >
                            <i class="layui-icon layui-icon layui-icon-upload-drag" style="font-size: 16px; color: #FFFFFF;"></i> 上传文件</a></dd>
                    </dl>
                </li>
<%--                <li class="layui-nav-item"><a href="Page1.jsp"><i class="layui-icon layui-icon-link" style="font-size: 17px; color: #FFFFFF;"></i> 邑大商城</a></li>--%>
            </ul>
        </div>
    </div>

</div>
</body>
<script>
    $(function () {
        //定义一个定时器
        var mytime=setInterval(function () {
            getTime();
        },1000);
        //定义一个函数用来获取时间
        function getTime(){
            console.log("1111")
            var data=new Date();//获得当前时间
            var  y=data.getFullYear();
            var  M=(data.getMonth()+1)<10?('0'+(data.getMonth()+1)):(data.getMonth()+1);
            var  D=data.getUTCDate()<10?('0'+data.getUTCDate()):data.getUTCDate();
            var  H=data.getHours()<10?('0'+data.getHours()):data.getHours();
            var  m=data.getMinutes()<10?('0'+data.getMinutes()):data.getMinutes();
            var  s=data.getSeconds()<10?('0'+data.getSeconds()):data.getSeconds();
            var  dataString=y+"年"+M+"月"+D+"日&nbsp;&nbsp;&nbsp;"+H+":"+m+":"+s+"秒&nbsp;&nbsp;&nbsp;星期"+"日一二三四五六".charAt(data.getDay())
            $("#timeText").html(dataString);
        }
        //JS
        layui.use(['element', 'layer', 'util','jquery'], function(){
            var element = layui.element
                ,layer = layui.layer
                ,util = layui.util
                ,$ = layui.jquery;

            //头部事件
            util.event('lay-header-event', {
                //左侧菜单事件
                menuLeft: function(othis){
                    layer.msg('展开左侧菜单的操作', {icon: 0});
                }
                ,menuRight: function(){
                    layer.open({
                        type: 1
                        ,content: '<div style="padding: 15px;">处理右侧面板的操作</div>'
                        ,area: ['260px', '100%']
                        ,offset: 'rt' //右上角
                        ,anim: 5
                        ,shadeClose: true
                    });
                }
            });


            //触发事件
            var active = {
                //在这里给active绑定几项事件，后面可通过active调用这些事件
                tabAdd: function (url, id, title) {
                    //新增一个Tab项 传入三个参数，分别对应其标题，tab页面的地址，还有一个规定的id，是标签中data-id的属性值
                    //关于tabAdd的方法所传入的参数可看layui的开发文档中基础方法部分
                    element.tabAdd('demo', {
                        title: title,
                        content: '<iframe data-frameid="' + id
                            + '" scrolling="auto" frameborder="0" src="'
                            + url + '" style="width:100%;height: 730px"></iframe>',
                        id: id
                        //规定好的id
                    })
                    element.render('tab');

                },
                tabChange: function (id) {
                    //切换到指定Tab项
                    element.tabChange('demo', id); //根据传入的id传入到指定的tab项
                },
                tabDelete: function (id) {
                    element.tabDelete("demo", id);//删除
                },
                tabDeleteAll: function (ids) {//删除所有
                    $.each(ids, function (i, item) {
                        element.tabDelete("demo", item); //ids是一个数组，里面存放了多个id，调用tabDelete方法分别删除
                    })
                }
            };

            //当点击有site-demo-active属性的标签时，即左侧菜单栏中内容 ，触发点击事件
            $('.site-demo-active').on(
                'click',
                function () {
                    var dataid = $(this);

                    //这时会判断右侧.layui-tab-title属性下的有lay-id属性的li的数目，即已经打开的tab项数目
                    if ($(".layui-tab-title li[lay-id]").length <= 0) {
                        //如果比零小，则直接打开新的tab项
                        active
                            .tabAdd(dataid.attr("data-url"), dataid
                                .attr("data-id"), dataid
                                .attr("data-title"));
                    } else {
                        //否则判断该tab项是否以及存在

                        var isData = false; //初始化一个标志，为false说明未打开该tab项 为true则说明已有
                        $.each($(".layui-tab-title li[lay-id]"),
                            function () {
                                //如果点击左侧菜单栏所传入的id 在右侧tab项中的lay-id属性可以找到，则说明该tab项已经打开
                                if ($(this).attr("lay-id") == dataid
                                    .attr("data-id")) {
                                    isData = true;
                                }
                            })
                        if (isData == false) {
                            //标志为false 新增一个tab项
                            active.tabAdd(dataid.attr("data-url"), dataid
                                .attr("data-id"), dataid
                                .attr("data-title"));
                        }
                    }
                    //最后不管是否新增tab，最后都转到要打开的选项页面上
                    active.tabChange(dataid.attr("data-id"));
                });

        });
    })
</script>
</html>
