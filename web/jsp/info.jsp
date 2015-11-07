<%@ page import="util.DbUtils" %>
<%@ page import="dao.User" %>
<%--
  Created by IntelliJ IDEA.
  User: hello
  Date: 2015/11/5
  Time: 10:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  String path = request.getContextPath();
  String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
  response.setContentType("text/html");
  response.setCharacterEncoding("utf-8");
  request.setCharacterEncoding("utf-8");
  User user= DbUtils.getUserByEmail((String)request.getSession().getAttribute("email"));
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
  <title>个人信息</title>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <!--[if lte IE 8]><script src="<%=basePath%>js/ie/html5shiv.js"></script><![endif]-->
  <link rel="stylesheet" href="<%=basePath%>css/main.css" />
  <!--[if lte IE 8]><link rel="stylesheet" href="<%=basePath%>css/ie8.css" /><![endif]-->
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

          <div><label>昵称:</label>
            <input id="nickname" name="nickname" type="text"
            value="<%=user.getNickname()%>" readonly/></div>
          <div><label>身份:</label>
            <input type="text" id="role" name="role" value="<%="drawer".equals(user.getRole())?"画手":"策划"%>" readonly/>
          </div>
          <div><label>性别:</label>
            <input type="text" id="sex" name="sex" value="<%="woman".equals(user.getSex())?"女":"男"%>" readonly/>
          </div>
          <div><label>邮箱:</label>
            <input id="email" name="email" data-ideal="required email" type="email" value="<%=user.getEmail()%>" readonly/>
          </div>
          <!--<div><label>出生日期:</label><input name="date" class="datepicker" data-ideal="date" type="text" placeholder="月/日/年"/></div>
          <div><label>上传头像:</label><input id="file" name="file" multiple type="file"/></div>
          <div><label>个人主页:</label><input name="website" data-ideal="url" type="text"/></div>-->
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
