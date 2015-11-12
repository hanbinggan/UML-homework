<%--
  Created by IntelliJ IDEA.
  User: hello
  Date: 2015/11/7
  Time: 8:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  String path = request.getContextPath();
  String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
  response.setContentType("text/html");
  response.setCharacterEncoding("utf-8");
  request.setCharacterEncoding("utf-8");
%>
<html>
  <head>
    <meta http-equiv="refresh" content="0.2;url=<%=basePath%>jsp/library.jsp">
    <title></title>
  </head>
  <body>

  </body>
</html>
