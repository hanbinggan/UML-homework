<%--
  Created by IntelliJ IDEA.
  User: hello
  Date: 2015/11/17
  Time: 9:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title></title>
</head>
<body>
  <form method="post" action="../servlet/UploadImgDemoServlet" enctype="multipart/form-data">
    <input type="file" name="image"/>
    <input type="submit"/>
  </form>
</body>
</html>
