<%@ page import="dao.plan.PlanEntity" %>
<%@ page import="dao.plan.PlanDao" %>
<%@ page import="dao.plan.PlanDaoImpl" %>
<%
  String path=request.getContextPath();
  String basePath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

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
    <div id="features-wrapper">
      <div class="container">

          <form action=""  method="post" name="planread" >
              <table class="table table-hover">
                  <%
                      PlanEntity planEntity = new PlanEntity();
                      PlanDao planDao = new PlanDaoImpl();
                      planEntity = planDao.planRead(request.getParameter("planid"));%>

                  <tbody>
                  <!-- row -->
                  <tr><td>本子编号</td>
                      <td><%out.print(planEntity.getId());%></td>
                  </tr>
                  <tr>
                      <td>本子名称</td>
                      <td><%out.print(planEntity.getName());%></td>
                  </tr>
                  <tr>
                      <td>策划编号</td>
                      <td><%out.print(planEntity.getPlannerid());%></td>
                  </tr>
                  <tr>
                      <td>本子标签</td>
                      <td><%out.print(planEntity.getTag());%></td>
                  </tr>
                  <tr>
                      <td>本子介绍</td>
                      <td><%out.print(planEntity.getIntro()) ;%></td>
                  </tr>
                  </tbody>
              </table>
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
