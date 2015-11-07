<%--
  Created by IntelliJ IDEA.
  User: jmy
  Date: 2015/10/29
  Time: 17:15
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
  <title>注册</title>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <!--[if lte IE 8]><script src="<%=basePath%>js/ie/html5shiv.js"></script><![endif]-->
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
          </div>
        </div>

        <!-- Content -->
        <form action="<%=basePath%>servlet/InsertUserServlet" method="post" name="register">
          <!--<div><label>用户名:</label><input id="username" name="username" type="text"/></div>-->
          <div><label>昵称:</label><input id="nickname" name="nickname" type="text"/></div>
          <div><label>密码:</label><input id="pass" name="password" type="password"/></div>
          <div><label>身份:</label>
            <select id="role" name="role">
              <!--<option value="default">&ndash; 选择身份 &ndash;</option>-->
              <option value="drawer">画手</option>
              <option value="planner">策划</option>
            </select>
          </div>
          <div><label>性别:</label><select id="sex" name="sex">
            <option value="man">男</option>
            <option value="woman">女</option>
          </select>
          </div>
          <div><label>邮箱:</label><input id="email" name="email" data-ideal="required email" type="email"/></div>
          <!--<div><label>出生日期:</label><input name="date" class="datepicker" data-ideal="date" type="text" placeholder="月/日/年"/></div>
          <div><label>上传头像:</label><input id="file" name="file" multiple type="file"/></div>
          <div><label>个人主页:</label><input name="website" data-ideal="url" type="text"/></div>-->
          <br>
          <input type="submit" value="注册" style="height: 50px;"/>
          <input type="reset" value="重置" style="height: 50px;"/>
      </form>

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