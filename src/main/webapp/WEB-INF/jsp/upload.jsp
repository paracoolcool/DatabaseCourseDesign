<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/fileUpload" method="post" enctype="multipart/form-data">
    <label>上传图片</label>
    <input type="file" name="file"/>
    <input type="submit" value="上传"/>
</form>
<p>图片:</p>
<img src="${filename}"/>
</body>
</html>

