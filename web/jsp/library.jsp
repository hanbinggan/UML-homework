<%--
  Created by IntelliJ IDEA.
  User: hello
  Date: 2015/11/5
  Time: 9:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="dao.Draw" %>
<%@ page import="java.util.List" %>
<%@ page import="util.DbUtils" %>
<%@ page import="dao.DrawDao" %>
<%@ page import="dao.DrawDaoImpl" %>
<%--
  Created by IntelliJ IDEA.
  User: hello
  Date: 2015/10/24
  Time: 16:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  String path = request.getContextPath();
  String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";

%>
<html>
<head>
  <title>吃土求救区</title>
  <meta charset="utf-8"/>

  <meta name="keywords"/>
  <meta name="description"/>
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>

  <link href="<%=basePath%>css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans:400,300">
  <link rel="stylesheet" href="<%=basePath%>css/font-awesome.min.css"/>

  <script src="<%=basePath%>js/jquery.min.js"></script>
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <script type="text/javascript" src="<%=basePath%>js/tinybox.js"></script>
  <link rel="stylesheet" href="<%=basePath%>js/style.css" />

  <!--[if lte IE 8]>
  <script src="<%=basePath%>js/ie/html5shiv.js"></script><![endif]-->
  <link rel="stylesheet" href="<%=basePath%>css/main.css"/>
  <style>
    .button1 {
      background: #C2C2C2 !important;
      /*padding: 2px 2px;*/
      border: 3px !important;
      border-radius: 50px !important;
      color: white !important;
      width: 50px !important;
      height: 50px !important;
      /*font-size: 10px;*/
      font-size-adjust: inherit;
      vertical-align: top !important;
    }
  </style>
  <script type="text/javascript">
    function showImage(email,name){
      var path1="E:\\IdeaProjects\\hello\\web\\resource";
      var str=path1+"\\"+email+"\\"+name;
      var content3= "<img src='<%=basePath%>servlet/DisplayServlet?path="+str+"' alt=''/>";
      TINY.box.show(content3,0,0,0,0,1);
    }
  </script>
</head>
<!-- Header -->
<%@include file="header.jsp" %>
<body class="homepage">
  <div id="header-wrapper">
  <header id="header" class="container">

    <!-- Logo -->
    <div id="logo">
      <h2 style="background-color: #ff4486;width: 150px;"><a href="#">画作展示</a></h2>
    </div>
  </header>
</div>

  <div id="page-wrapper">
  <!-- Main -->
  <div id="features-wrapper">
    <div class="container">
      <div class="row">

        <!-- Content -->
        <%--<h2 style="background-color: #ff4486;width: 150px;">画作展示</h2>--%>

        <%--<img src="<%=basePath%>resource/1001/20090205022815376.png">--%>
        <%--<form method="post" action="<%=basePath%>servlet/ImgDeleteServlet">--%>
        <%
          DrawDao drawDao = new DrawDaoImpl();
          List<Draw> lists = drawDao.searchByTime();
//                System.out.println(DbUtils.getDraws());
//              List<Draw> lists= DbUtils.getDraws();
          String lastName = "";
          String filepath = "E:\\IdeaProjects\\hello\\web\\resource";
          for (Draw draw : lists) {
            String imgpath = String.format("%s\\%s\\%s", filepath, draw.getEmail(), draw.getName());
            String date = new SimpleDateFormat("yyyy-MM-dd").format(draw.getTime());
            String photoPath = String.format("%s/%s", draw.getEmail(), draw.getName());
//              Date date=new Date(file.lastModified());
            System.out.println(imgpath);
//                String imgpath1 = String.format("%s\\%s", filepath,file.getName());
//                String showpath=basePath+"servlet/DisplayServlet?path="+imgpath;
//              System.out.println(date + last);

            if (!lastName.equals(draw.getEmail())) {%>
             <div class="4u 12u(medium)">
          <!-- Box -->
          <section class="box feature">

            <div class="inner">
              <header>
                <h2><b><%=date%></b></h2>
              </header>
              <p><a href="<%=basePath%>jsp/imageLibrary.jsp?email=<%=draw.getEmail()%>"><%=draw.getEmail()%>
              </a></p>
            </div>
            <a href="<%=basePath%>jsp/imageLibrary.jsp?email=<%=draw.getEmail()%>" class="image featured">
              <img src="<%=basePath%>servlet/DisplayServlet?path=<%=imgpath%>" alt=""/></a>
          </section>

        </div>
           <%
            lastName = draw.getEmail();}%>
         <div class="4u 12u(medium)">

          <!-- Box -->
          <section class="box feature">
            <a href="#" class="image featured" onclick="showImage('<%=draw.getEmail()%>','<%=draw.getName()%>')" id="show">
              <img src="<%=basePath%>servlet/DisplayServlet?path=<%=imgpath%>" alt=""/></a>

            <div class="inner">
              <header>
                <h2>An interesting title</h2>

                <p>This is also an interesting subtitle</p>
              </header>
              <p>Phasellus quam turpis, feugiat sit amet in, hendrerit in lectus. Praesent sed semper amet bibendum
                tristique fringilla.</p>
            </div>
          </section>

        </div>
        <%--<img src="<%=basePath%>html/tmp/picCreate.jsp?path=<%=imgpath1%>">--%>
        <%--<img src="<%=imgpath%>">--%>
        <%--<span class="img" id="<%=photoPath%>">--%>
        <%--<img src="<%=basePath%>servlet/DisplayServlet?path=<%=imgpath%>" style="height: 200px;width: 200px"/>--%>
        <%--</span>--%>
        <%--<br>--%>
        <%--<input type="button" value="X" class="button1" onclick="test(<%=imgpath1%>);"/>--%>
        <%--<input type="button" value="X" class="button1" onclick=window.open()/>--%>
        <%}%>
        <%--</form>--%>

      </div>
    </div>
  </div>
</div>
</body>
<!-- Footer -->
<%@include file="footer.jsp" %>
</html>

