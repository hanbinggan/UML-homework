<%--
  Created by IntelliJ IDEA.
  User: chasip
  Date: 2015/10/22
  Time: 19:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  String path=request.getContextPath();
  String basePath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

%>
<html>
<head>
  <title>【增加项目】本萌，一个有爱的约稿出本家园(●'◡'●)</title>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.8.0.js"></script>
  <!--[if lte IE 8]><script src=" <%=basePath%>js/ie/html5shiv.js"></script><![endif]-->
  <link rel="stylesheet" href=" <%=basePath%>css/main.css" />
  <!--[if lte IE 8]><link rel="stylesheet" href=" <%=basePath%>css/ie8.css" /><![endif]-->
</head>
<!-- Header -->
<%@include file="header.jsp" %>
<body class="left-sidebar">
<div id="page-wrapper">
  <!-- Main -->
  <div id="main-wrapper">
    <div class="container">
      <div class="row">
        <h2>Add plan</h2>
        <article>拯救吃土画手！策划在行动！</article>
      </div>
    </div>
    <div class="container">
      <div class="row 200%">
        <div class="20u 20u$(medium)">
        </div>
            <form name="planAdd" method="post"  action="../servlet/planAddServlet">
              <input type="hidden" name="plannerid" value="<%=(String)request.getSession().getAttribute("email")%>"/>

              <div><label>本子名称</label><input type="text"name="name" style="width: 500px;"/></div>
              <div><label>标签</label><input type="text" name="tag"/></div>
              <div>
                <label>描叙</label>
                <textarea name="intro"></textarea>
              </div>

              <%--<div><label>描述<input type="text"name="intro"><br></label></div>--%>
              <br>
              <input type="submit" name="submit" align="right">
            </form>
      </div>
      </div>
    </div>
</div>

<!-- Scripts -->

<script src=" <%=basePath%>js/jquery.min.js"></script>
<script src=" <%=basePath%>js/jquery.dropotron.min.js"></script>
<script src=" <%=basePath%>js/skel.min.js"></script>
<script src=" <%=basePath%>js/util.js"></script>
<!--[if lte IE 8]><script src=" <%=basePath%>js/ie/respond.min.js"></script><![endif]-->
<script src=" <%=basePath%>js/main.js"></script>

</body>
<%@include file="footer.jsp"%>
</html>
