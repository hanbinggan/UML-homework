<%--
  Created by IntelliJ IDEA.
  User: jmy
  Date: 2015/11/2
  Time: 22:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.util.*" %>
<%
  String path = request.getContextPath();
  String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
  response.setContentType("text/html");
  response.setCharacterEncoding("utf-8");
  request.setCharacterEncoding("utf-8");
  //Calendar cal = Calendar.getInstance();
%>
<!DOCTYPE HTML>
<!--
Verti by HTML5 UP
html5up.net | @n33co
Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
<head>
  <title>修改信息</title>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <!--[if lte IE 8]><script src="<%=basePath%>js/ie/html5shiv.js"></script><![endif]-->
  <link rel="stylesheet" href="<%=basePath%>css/main.css" />
  <!--[if lte IE 8]><link rel="stylesheet" href="<%=basePath%>css/ie8.css" /><![endif]-->
  <style>
    .button1{
      /*background: #cccccc;*/
      padding: 5.5px 11px;
      -webkit-border-radius: 8px;
      -moz-border-radius: 8px;
      border-radius: 8px;
      color: white;
      font-size: 13px;
      font-family: Georgia, serif;
      text-decoration: none;
      vertical-align: middle;
    }
  </style>
</head>
<!-- Header -->
<%@include file="header.jsp" %>
<body class="no-sidebar">
<div id="page-wrapper">
  <!-- Main -->
  <div id="main-wrapper">
    <div class="container">
      <div class="row 200%">
        <div class="4u 12u$(medium)">
          <div id="sidebar">

            <!-- Sidebar -->
          </div>
        </div>

        <!-- Content -->
        <article>
          <div><h2 style="width: 150px;">修改密码</h2></div>
          <form action="<%=basePath%>servlet/EditPasswordServlet" method="post" name="planner_edit">
            <div><label>旧密码:</label><input id="oldpassword" name="password" type="text"/></div>
            <div><label>新密码:</label><input id="newpassword" name="password2" type="text"/></div>
            <div><label>再次确认密码:</label><input id="pass" name="password3" type="text"/></div>
            <br>
            <input type="submit" value="确认修改" style="height: 75px;">
          </form>


        </article>

      </div>
    </div>
  </div>
</div>
<!-- Scripts -->
<script src="<%=basePath%>js/jquery.min.js"></script>
<script src="<%=basePath%>js/jquery.dropotron.min.js"></script>
<script src="<%=basePath%>js/skel.min.js"></script>
<script src="<%=basePath%>js/util.js"></script>
<!--[if lte IE 8]><script src="<%=basePath%>js/ie/respond.min.js"></script><![endif]-->
<script src="<%=basePath%>js/main.js"></script>
</body>
<!--Footer-->
<%@include file="footer.jsp"%>
</html>