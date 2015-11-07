<%--
  Created by IntelliJ IDEA.
  User: jmy
  Date: 2015/11/2
  Time: 14:33
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
  <!--[if lte IE 8]><script src="<%=basePath%><%=basePath%>js/ie/html5shiv.js"></script><![endif]-->
  <link rel="stylesheet" href="<%=basePath%>css/main.css" />
  <!--[if lte IE 8]><link rel="stylesheet" href="<%=basePath%>css/ie8.css" /><![endif]-->
  <style>
    .button1{
      background: #cccccc;
      padding: 5.5px 11px;
      -webkit-border-radius: 8px;
      -moz-border-radius: 8px;
      border-radius: 8px;
      color: white;
      font-size: 13px;
      font-family: Georgia, serif;
      text-decoration: none;
      vertical-align: middle;"
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
          <h3>恭喜主银，小萌已经成功完成新资料的上传啦~~ ~\(≧▽≦)/~</h3>
          <input type="button" class="btn-glow primary" value="返回个人页面" onclick="window.location.href='<%=basePath%>jsp/planner_edit.jsp'"/>
       </article>
      </div>
    </div>
  </div>
</div>

<!-- Scripts -->

<script src="<%=basePath%><%=basePath%>js/jquery.min.js"></script>
<script src="<%=basePath%>js/jquery.dropotron.min.js"></script>
<script src="<%=basePath%>js/skel.min.js"></script>
<script src="<%=basePath%>js/util.js"></script>
<!--[if lte IE 8]><script src="<%=basePath%>js/ie/respond.min.js"></script><![endif]-->
<script src="<%=basePath%>js/main.js"></script>

</body>
<!--Footer-->
<%@include file="footer.jsp"%>
</html>