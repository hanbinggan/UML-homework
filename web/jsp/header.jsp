<%--
  Created by IntelliJ IDEA.
  User: hello
  Date: 2015/11/4
  Time: 15:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  response.setContentType("text/html");
  response.setCharacterEncoding("utf-8");
  request.setCharacterEncoding("utf-8");
  //Calendar cal = Calendar.getInstance();
//  String path=request.getContextPath();
//  String basePath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
  String id= (String) request.getSession().getAttribute("id");
%>
<!DOCTYPE HTML>
<!--
Verti by HTML5 UP
html5up.net | @n33co
Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
<head>
  <title>Verti by HTML5 UP</title>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <!--[if lte IE 8]><script src="<%=basePath%>js/ie/html5shiv.js"></script><![endif]-->
  <link rel="stylesheet" href="<%=basePath%>css/main.css" />
  <!--[if lte IE 8]><link rel="stylesheet" href="<%=basePath%>css/ie8.css" /><![endif]-->
</head>
<body class="homepage">
<div id="page-wrapper">

  <!-- Header -->
  <div id="header-wrapper">
    <header id="header" class="container">

      <!-- Logo -->
      <div id="logo">
        <h1><a href="index.html">本萌</a></h1>
        <span>这是一个有爱的约稿出本家园(●'◡'●)</span>
      </div>

      <!-- Nav -->
      <nav id="nav">
        <ul>
          <li><a href="index.html">我的首页</a></li>
          <li><a href="<%=basePath%>jsp/planShow.jsp">出本求参区</a></li>
          <li><a href="<%=basePath%>jsp/library.jsp">吃土求救区</a></li>
          <li><a href="<%=basePath%>jsp/info.jsp">个人账户</a>
            <ul>
              <li><a href="<%=basePath%>jsp/planner_edit.jsp">修改信息</a></li>
              <%
                if("drawer".equals(id)){
                  %>
              <li><a href="<%=basePath%>jsp/imageLibrary.jsp">个人作品</a></li>
              <li><a href="<%=basePath%>jsp/uploadImage.jsp">发表作品</a></li>
              <li><a href="<%=basePath%>jsp/imageDel.jsp">修改作品</a></li>
              <%
                }else if("planner".equals(id)){%>
              <li><a href="<%=basePath%>jsp/planAdd.jsp">发表策划</a></li>
              <li><a href="<%=basePath%>jsp/myPlan.jsp">我的策划</a> </li>
              <li><a href="<%=basePath%>jsp/planDel.jsp">修改策划</a></li>
               <% }
              %>
            </ul>
          </li>
        </ul>
      </nav>

    </header>
  </div>

  <!-- Scripts -->
  <script src="<%=basePath%>js/jquery.min.js"></script>
  <script src="<%=basePath%>js/jquery.dropotron.min.js"></script>
  <script src="<%=basePath%>js/skel.min.js"></script>
  <script src="<%=basePath%>js/util.js"></script>
  <!--[if lte IE 8]><script src="<%=basePath%>js/ie/respond.min.js"></script><![endif]-->
  <script src="<%=basePath%>js/main.js"></script>

</body>
</html>
