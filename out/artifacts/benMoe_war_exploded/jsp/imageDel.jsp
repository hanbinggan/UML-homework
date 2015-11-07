<%@ page import="java.io.File" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%--
  Created by IntelliJ IDEA.
  User: hello
  Date: 2015/10/24
  Time: 16:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  String path=request.getContextPath();
  String basePath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

%>
<html>
<head>
  <title>作品删除</title>
  <meta charset="utf-8" />

  <meta name="keywords"/>
  <meta name="description"/>
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />

  <link href="<%=basePath%>css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans:400,300">
  <link rel="stylesheet" href="<%=basePath%>css/font-awesome.min.css" />

  <script src="<%=basePath%>js/jquery.min.js"></script>
  <meta name="viewport" content="width=device-width, initial-scale=1" />

  <!--[if lte IE 8]><script src="<%=basePath%>js/ie/html5shiv.js"></script><![endif]-->
  <link rel="stylesheet" href="<%=basePath%>css/main.css" />
  <style>
    .button1{
      background: #C2C2C2 !important;
      /*padding: 2px 2px;*/
      border:3px !important;
      border-radius: 50px !important;
      color: white !important;
      width: 50px !important;
      height: 50px !important;
      /*font-size: 10px;*/
      font-size-adjust: inherit;
      vertical-align: top !important;
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
            <section>
              <h3>作品集</h3>
              <img src="<%=basePath%>images/image.jpg" height="350" width="240">

              <footer>
                <a href="#" class="button icon fa-info-circle">更多</a>
              </footer>
            </section>

          </div>
        </div>

        <div id="content">

          <!-- Content -->
          <h2 style="background-color: #ff4486;width: 150px;">画作展示</h2>

          <%--<img src="<%=basePath%>resource/1001/20090205022815376.png">--%>
          <form method="post" action="<%=basePath%>servlet/ImgDeleteServlet">
            <%
              String idd=session.getAttribute("email").toString();
              String filepath="E:\\IdeaProjects\\hello\\web\\resource\\"+idd;
              File folder=new File(filepath);
              File []files=folder.listFiles();
              int cnt=1;
                String last="";
              for(File file:files){
                String imgpath = String.format("resource/%s/%s", idd,file.getName());
                // System.out.println(imgpath);
                String imgpath1 = String.format("%s\\%s", filepath,file.getName());
                String showpath=basePath+"servlet/DisplayServlet?path="+imgpath1;
//              System.out.println("fu"+imgpath1);
                  String date=new SimpleDateFormat("yyyy-MM-dd").format(file.lastModified());
                  if(!date.equals(last)){%>
                 <p><b><%=date%></b></p>
                <%last=date;
                }
            %>
            <%--<img src="<%=basePath%>html/tmp/picCreate.jsp?path=<%=imgpath1%>">--%>
            <%--<img src="<%=imgpath%>">--%>
            <img src="<%=basePath%>servlet/DisplayServlet?path=<%=imgpath1%>" style="height: 200px;width: 200px"/>
            <%--<br>--%>
            <%--<input type="button" value="X" class="button1" onclick="test(<%=imgpath1%>);"/>--%>
            <%--<input type="button" value="X" class="button1" onclick=window.open()/>--%>
            <a href="<%=basePath%>servlet/ImgDeleteServlet?imgPath=<%=imgpath1%>&name=<%=file.getName()%>">
                删除</a>
            <%
              if(cnt%3==0){%>
            <br>
            <% }
              cnt++;
            %>
            <% }
            %>
          </form>

        </div>
      </div>
    </div>
  </div>
</div>
</body>
<!-- Footer -->
<%@include file="footer.jsp"%>
</html>
