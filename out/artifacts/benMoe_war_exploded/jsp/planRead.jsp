<%@ page import="dao.plan.PlanEntity" %>
<%@ page import="dao.plan.PlanDao" %>
<%@ page import="dao.plan.PlanDaoImpl" %>
<%@ page import="dao.DrawerProjects" %>
<%@ page import="java.util.List" %>
<%@ page import="dao.DrawerDao" %>
<%@ page import="dao.DrawerDaoImpl" %>
<%
  String path=request.getContextPath();
  String basePath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
  PlanDao planDao = new PlanDaoImpl();
  String planid=request.getParameter("planid");
  PlanEntity planEntity = planDao.planRead(planid);
  String email=(String)request.getSession().getAttribute("email");
  String idd=(String)request.getSession().getAttribute("id");
%>
<%--
  Created by IntelliJ IDEA.
  User: chasip
  Date: 2015/10/22
  Time: 19:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>【本子信息】本萌，一个有爱的约稿出本家园(●'◡'●)</title>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.8.0.js"></script>
  <!--[if lte IE 8]><script src=" <%=basePath%>js/ie/html5shiv.js"></script><![endif]-->
  <link rel="stylesheet" href=" <%=basePath%>css/main.css" />
  <!--[if lte IE 8]><link rel="stylesheet" href=" <%=basePath%>css/ie8.css" /><![endif]-->

  <!--drawer join the plan js-->
</head>
<!-- Header -->
<%@include file="header.jsp" %>
<body class="left-sidebar">
<div id="page-wrapper">

  <!-- Main -->
  <div id="main-wrapper">
    <div class="container">
      <div class="row">
        <h2>Plans' Detail</h2>
        <article>拯救吃土画手！策划在行动！</article>
      </div>
    </div>
    <div class="container">
      <div class="row 200%">
        <div class="20u 20u$(medium)">
        </div>
        <form name="planAdd" method="post"  action="<%=basePath%>servlet/DrawerJoinServlet">
          <div>
            <label>策划编号</label>
            <input type="text" name="plannerid" value="<%=planEntity.getPlannerid()%>" readonly/>
          </div>
          <div>
            <label>本子编号</label>
            <input type="text" name="plannerid" value="<%=planEntity.getId()%>" readonly/>
          </div>
          <div>
            <label>本子名称</label>
            <input type="text" name="name" value="<%=planEntity.getName()%>" style="width: 500px;" readonly/></div>
          <div>
            <label>本子标签</label>
            <input type="text" name="tag" value="<%=planEntity.getTag()%>" readonly/></div>
          <div>
            <label>本子介绍</label>
            <textarea name="intro" readonly><%=planEntity.getIntro()%></textarea>
          </div>
          <br>
          <%
            if(idd!=null&&"drawer".equals(idd)){%>
          <div align="right">
            <input type="hidden" value="<%=email%>" name="email"/>
            <input type="hidden" value="<%=planid%>"   name="planid"/>
            <input type="submit" name="submit" align="right" value="我要参本"/>
          </div>
            <%}%>
          <%--<div><label>描述<input type="text"name="intro"><br></label></div>--%>
        </form>
      </div>
    </div>
    <div class="container">
      <div class="row">
        <div><h2>参本人员</h2></div>

        <%
          DrawerDao dr=new DrawerDaoImpl();
          List<DrawerProjects> lists=dr.getState(planid,1);
          for(DrawerProjects d:lists){%>
            <div><a href="<%=basePath%>jsp/imageLibrary.jsp?email=<%=d.getDrawerID()%>" class="button">
              <%=d.getDrawerID()%></a>
            <%if(email.equals(planEntity.getPlannerid())){%>
              <a href="<%=basePath%>servlet/DrawerDelServlet?email=<%=d.getDrawerID()%>
              &planid=<%=planid%>">删除</a>
            <%}%></div>
          <%}
        %>
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
