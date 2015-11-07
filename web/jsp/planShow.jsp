<%@ page import="java.util.List" %>
<%@ page import="dao.plan.PlanDaoImpl" %>
<%@ page import="dao.plan.PlanEntity" %>
<%@ page import="dao.plan.PlanDao" %>
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
<!DOCTYPE html>
<html lang="zh-CN">
<meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=no">

<head>
  <title>【出本求参区】本萌，一个有爱的约稿出本家园(●'◡'●)</title>
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

  <!-- Header -->

  <!-- Main -->
  <div id="main-wrapper">
    <div class="container">
      <div class="row">
        <h2>Plans' LIST</h2>
        <article>拯救吃土画手！策划在行动！</article>
      </div>
    </div>
    <div class="container">
      <div class="row 200%">
        <div class="4u 12u$(medium)">
        </div>
        <%--<div>--%>
        <%--<form action="planSearch.jsp" target="_blank">--%>
          <%--<input type="text" name="key" placeholder="输入本子关键词..." class="text input-xxlarge" data-selector="key"><button type="submit" class="btn btn-xxlarge"><i class="icon-32-nd icon-32-find float-left"></i>搜索</button>--%>
        <%--</form>--%>
          <%--</div>--%>
        <table>
          <thead>
            <tr>
              <th>策划</th>
              <th>题目</th>
              <th>标签</th>
              <th>发帖时间</th>
            </tr>
          </thead>
          <tbody>
          <% PlanDao planDao = new PlanDaoImpl();
            List<PlanEntity> planEntityList = planDao.planShow();
            for(PlanEntity planEntity:planEntityList)
            {
          %>
          <tr>
            <td align="center"><%=planEntity.getPlannerid()%></td>
            <td align="center">
              <a href="<%=basePath%>jsp/planRead.jsp?planid=<%=planEntity.getId()%>">
                <%=planEntity.getName()%>
              </a>
            </td>
            <td align="center"><%=planEntity.getTag()%></td>
            <td align="center"><%=planEntity.getBgdate()%></td>
          </tr>
          <%  }

          %>
          </tbody>
        </table>

      </div>
    </div>
    <%--<div id="features-wrapper">--%>
      <%--<div class="container">--%>
          <%--<form action="planSearch.jsp" target="_blank">--%>
              <%--<input type="text" name="key" placeholder="输入本子关键词..." class="text input-xxlarge" data-selector="key"><button type="submit" class="btn btn-xxlarge"><i class="icon-32-nd icon-32-find float-left"></i>搜索</button>--%>
          <%--</form>--%>
                <%--&lt;%&ndash;<table>&ndash;%&gt;--%>
                <%--&lt;%&ndash;<% PlanDao planDao = new PlanDaoImpl();&ndash;%&gt;--%>
                 <%--&lt;%&ndash;List<PlanEntity> planEntityList = planDao.planShow();&ndash;%&gt;--%>
                 <%--&lt;%&ndash;for(PlanEntity planEntity:planEntityList)&ndash;%&gt;--%>
                 <%--&lt;%&ndash;{&ndash;%&gt;--%>
                   <%--&lt;%&ndash;%>&ndash;%&gt;--%>
                   <%--&lt;%&ndash;<tr><% out.print(planEntity.getId());%></tr>><br>&ndash;%&gt;--%>
                    <%--&lt;%&ndash;<tr><% out.print(planEntity.getName());%></tr><br>s&ndash;%&gt;--%>
                    <%--&lt;%&ndash;<tr><% out.print(planEntity.getPlannerid());%></tr><br>&ndash;%&gt;--%>
                    <%--&lt;%&ndash;<tr><% out.print(planEntity.getBgdate());%></tr><br>&ndash;%&gt;--%>
                    <%--&lt;%&ndash;<tr><% out.print(planEntity.getTag());%></tr><br>&ndash;%&gt;--%>
                    <%--&lt;%&ndash;<%  }&ndash;%&gt;--%>

                <%--&lt;%&ndash;%>&ndash;%&gt;--%>
                    <%--&lt;%&ndash;<br>&ndash;%&gt;--%>
                <%--&lt;%&ndash;</table>&ndash;%&gt;--%>
          <%--</div>--%>
        <%--</div>--%>
  </div>


  <!-- Footer -->

</div>

<!-- Scripts -->

<script src=" <%=basePath%>js/jquery.min.js"></script>
<script src=" <%=basePath%>js/jquery.dropotron.min.js"></script>
<script src=" <%=basePath%>js/skel.min.js"></script>
<script src=" <%=basePath%>js/util.js"></script>
<!--[if lte IE 8]><script src=" <%=basePath%>js/ie/respond.min.js"></script><![endif]-->
<script src=" <%=basePath%>js/main.js"></script>

</body>
<!-- Footer -->
<%@include file="footer.jsp"%>
</html>
