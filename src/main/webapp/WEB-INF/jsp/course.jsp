
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>教师表</title>
    <script src="/jquery.min.js"></script>
    <!-- 引入 layui.css -->
    <link rel="stylesheet" href="/layui_kuangjia/css/layui.css">
    <!-- 引入 layui.js -->
    <script src="/layui_kuangjia/layui.js"></script>
    <script src="/layer/layer/layer.js"></script>

</head>
<body>
<h1></h1>

<table class="layui-hide" id="test" lay-filter="test"></table>

<script type="text/html" id="toolbarDemo">
    <div class="layui-btn-container">
        <button type="submit" class="layui-btn layui-btn-sm" id="addcourse"><i class="layui-icon layui-icon-add-1" style="font-size: 16px; color: #FFFFFF;"></i> 添加课程</button>
        <button class="layui-btn layui-btn-sm" lay-event="getCheckData">获取选中行数据</button>
        <button class="layui-btn layui-btn-sm" lay-event="getCheckLength">获取选中数目</button>
        <button class="layui-btn layui-btn-sm" lay-event="isAll">验证是否全选</button>
    </div>
</script>

<script type="text/html" id="barDemo">
    <a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="detail">查看</a>
<%--    <a class="layui-btn layui-btn-xs" lay-event="edit">编辑</a>--%>
    <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
</script>


<%--<script src="//res.layui.com/layui/dist/layui.js" charset="utf-8"></script>--%>
<!-- 注意：如果你直接复制所有代码到本地，上述 JS 路径需要改成你本地的 -->

<script>
    layui.use(['form','table','jquery','layer'], function(){
        var form=layui.form;
        var layer=layui.layer;
        var table = layui.table;
        var $=layui.jquery;
        table.render({
            elem: '#test'
            ,url:'${pageContext.request.contextPath}/course/all'
            ,toolbar: '#toolbarDemo'
             ,defaultToolbar: ['filter', 'exports', 'print', { //自定义头部工具栏右侧图标。如无需自定义，去除该参数即可
                 title: '提示'
                 ,layEvent: 'LAYTABLE_TIPS'
                 ,icon: 'layui-icon-tips'
             }]
            ,title: '教师信息表'
            ,cols: [[
                {type: 'checkbox', fixed: 'left'}
                ,{field:'courseid', title:'课程号', width:130, fixed: 'left', unresize: true, sort: true}
                ,{field:'coursename', title:'课程名', width:150, edit: 'text'}
                ,{field:'leibie', title:'类别', width:80, edit: 'text'}
                ,{field:'khfangshi', title:'考核方式', width:80, edit: 'text'/*, sort: true*/}
                ,{field:'credits', title:'学分', width:100,edit: 'text'}
                ,{field:'remark', title:'备注', width:100,edit: 'text'}
                ,{fixed: 'right', title:'操作', toolbar: '#barDemo', width:180}
            ]]
            ,page: true
            ,limit: 10
        });

        //头工具栏事件
        table.on('toolbar(test)', function(obj){
            var checkStatus = table.checkStatus(obj.config.id);
            switch(obj.event){
                case 'getCheckData':
                    var data = checkStatus.data;
                    layer.alert(JSON.stringify(data));
                    break;
                case 'getCheckLength':
                    var data = checkStatus.data;
                    layer.msg('选中了：'+ data.length + ' 个');
                    break;
                case 'isAll':
                    layer.msg(checkStatus.isAll ? '全选': '未全选');
                    break;

                //自定义头工具栏右侧图标 - 提示
                case 'LAYTABLE_TIPS':
                    layer.alert('这是工具栏右侧自定义的一个图标按钮');
                    break;
            };
        });

        //监听行工具事件
        table.on('tool(test)', function(obj){
            var data = obj.data;
            //console.log(obj)
            if(obj.event === 'del'){
                layer.confirm("确定要删除&nbsp;&nbsp;"+data.coursename+"&nbsp;&nbsp;吗？", function(index){
                    //前端删除行
                    obj.del();
                    //后端删除
                    var json={"number":data.courseid};
                    $.post("${pageContext.request.contextPath}/course/delete/${data.courseid}",json,function (data) {
                        if(data==1){
                            layer.msg("删除成功!",{icon:1});
                        }else {
                            layer.msg("删除失败!",{icon:5});
                        }
                    });
                    //关闭窗口
                    layer.close(index);
                });
            } else if(obj.event === 'edit'){
                layer.prompt({
                    formType: 2
                    ,value: obj.data
                }, function(value, index){
                    obj.update({
                        email: value
                    });
                    layer.close(index);
                });
            }
            else if(obj.event === 'detail'){
                    //完成ajax就可以

                <%--$.get('${pageContext.request.contextPath}/student/detail',{'id':data.studentid},function () {--%>

                    layer.open({
                        type: 2,
                        title: data.coursename+'的信息',
                        shadeClose: true,
                        shade: false,
                        maxmin: true, //开启最大化最小化按钮
                        area: ['800px', '500px'],
                        content:"${pageContext.request.contextPath}/course/detail?courseid="+data.courseid
                    });
                // });

                // layer.msg('ID：'+ data.name + ' 的查看操作');
            }
        });
        table.on('edit(test)',function (obj) {
            console.log(obj);
            var value = obj.value;
            var data = obj.data;
            var field = obj.field;

            var json={"data":data.courseid,"value":obj.value,"field":obj.field};

            $.post("${pageContext.request.contextPath}/course/edit",json ,function (datas) {
                layer.msg("修改成功")
            })
        })
        $("#addcourse").click(function () {
            layer.open({
                type: 2,
                title: '课程录入',
                shadeClose: true,
                shade: false,
                maxmin: true, //开启最大化最小化按钮
                area: ['800px', '500px'],
                content:"${pageContext.request.contextPath}/course/addview"
            });
        })
    });
</script>
</body>
</html>
