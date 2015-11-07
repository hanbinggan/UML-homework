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
  <link rel="stylesheet" href="<%=basePath%>css/ace.min.css">
  <link rel="stylesheet" href="<%=basePath%>css/font-awesome.min.css"/>

  <script src="<%=basePath%>js/jquery.min.js"></script>
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <script type="text/javascript" src="<%=basePath%>js/tinybox.js"></script>
  <link rel="stylesheet" href="<%=basePath%>js/style.css" />

  <!--[if lte IE 8]>
  <script src="<%=basePath%>js/ie/html5shiv.js"></script><![endif]-->
  <%--<link rel="stylesheet" href="<%=basePath%>css/main.css"/>--%>
  <%--<style>--%>
    <%--.button1 {--%>
      <%--background: #C2C2C2 !important;--%>
      <%--/*padding: 2px 2px;*/--%>
      <%--border: 3px !important;--%>
      <%--border-radius: 50px !important;--%>
      <%--color: white !important;--%>
      <%--width: 50px !important;--%>
      <%--height: 50px !important;--%>
      <%--/*font-size: 10px;*/--%>
      <%--font-size-adjust: inherit;--%>
      <%--vertical-align: top !important;--%>
    <%--}--%>
  <%--</style>--%>
  <%--<script type="text/javascript">--%>
    <%--var content3 = "This will disappear in 3 seconds.";--%>
    <%--T$('show').onclick = function(){TINY.box.show(content3,0,0,0,0,3)}--%>
    <%--function showImage(str){--%>
<%--//      var path=""--%>
      <%--&lt;%&ndash;var content= "<img src='<%=basePath%>servlet/DisplayServlet?path="+str+"' alt=''/>";&ndash;%&gt;--%>
      <%--&lt;%&ndash;alert(content);&ndash;%&gt;--%>
      <%--&lt;%&ndash;TINY.box.show(content, 0, 0, 0, 1);&ndash;%&gt;--%>
      <%--var content3 = "This will disappear in 3 seconds.";--%>
      <%--TINY.box.show(content3,0,0,0,0,3);--%>
    <%--}--%>
    <%--$(document).ready(function () {--%>
      <%--$('img').onclick(function () {--%>
        <%--alert(4);--%>
      <%--});--%>
      <%--$('.img').onclick(function () {--%>
        <%--alert(34324);--%>
      <%--});--%>
    <%--});--%>
    <%--//        alert(343);--%>
    <%--$('img').onclick(function () {--%>
      <%--alert(4);--%>
    <%--});--%>
    <%--$('.img').onclick(function () {--%>
      <%--alert(34324);--%>
    <%--});--%>
    <%--T$(".img").onclick = function () {--%>
      <%--var str = "<img src='../resource/" + $(".img").attr("id") + "' width='200' height='200'/>";--%>
      <%--TINY.box.show(str, 0, 0, 0, 1);--%>
    <%--};--%>
  <%--</script>--%>
  <%--<script type="text/javascript">--%>
    <%--T$('testclick1').onclick = function(){TINY.box.show('advanced.html',1,300,150,1)}--%>
    <%--var content2 = "<img src='images/rhino.jpg' width='298' height='373' alt='' />";--%>
    <%--T$('testclick2').onclick = function(){TINY.box.show(content2,0,0,0,1)}--%>
    <%--var content3 = "This will disappear in 3 seconds.";--%>
    <%--T$('testclick3').onclick = function(){TINY.box.show(content3,0,0,0,0,3)}--%>
  <%--</script>--%>
</head>
<body>
<div id="testdiv">
  <h1>TinyBox JavaScript Popup Script</h1>
  <h2>For complete details visit <a href="http://www.leigeber.com/2009/05/javascript-popup-boxjavascript-popup-box/">leigeber.com</a>.</h2>
  <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ac mi. Integer egestas est ut eros interdum lobortis. Sed tincidunt, nunc id molestie rhoncus, neque libero rhoncus erat, nec dignissim quam neque eget velit. Maecenas enim. Nullam auctor sem vel odio. Etiam a velit. In hac habitasse platea dictumst. Aliquam ullamcorper risus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Pellentesque quis mi eget nunc dignissim porta. Cras semper, urna vulputate posuere adipiscing, leo nibh tristique felis, at tempus tortor libero vel sapien. Sed consectetur. Nunc vitae eros ut justo iaculis tincidunt. Nullam ante tellus, sodales mattis, auctor vitae, hendrerit vel, turpis. Pellentesque non metus.</p>
  <div class="button" id="testclick1"><strong>Advanced Features</strong> - <em>click here</em></div>
  <p>In vel metus. Pellentesque euismod metus in nisl. Morbi luctus lorem ac est. Mauris pellentesque sapien quis est. Donec felis. Aliquam felis tortor, gravida at, viverra et, euismod ut, nisi. Sed varius nisi condimentum eros. Curabitur elit neque, rutrum feugiat, venenatis quis, hendrerit id, lacus. Nullam dui. Vivamus at erat vel lacus rhoncus ullamcorper. Nam nulla. Aenean et ipsum. Fusce convallis lorem sed velit. Morbi ante justo, rutrum in, molestie quis, cursus sed, est. Mauris eget sem. Etiam mattis. Quisque ornare tincidunt ligula. Suspendisse nunc. Integer aliquam vestibulum nulla.</p>
  <div class="button" id="testclick2"><strong>Image</strong> - <em>click here</em></div>
  <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ac mi. Integer egestas est ut eros interdum lobortis. Sed tincidunt, nunc id molestie rhoncus, neque libero rhoncus erat, nec dignissim quam neque eget velit. Maecenas enim. Nullam auctor sem vel odio. Etiam a velit. In hac habitasse platea dictumst. Aliquam ullamcorper risus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Pellentesque quis mi eget nunc dignissim porta. Cras semper, urna vulputate posuere adipiscing, leo nibh tristique felis, at tempus tortor libero vel sapien. Sed consectetur. Nunc vitae eros ut justo iaculis tincidunt. Nullam ante tellus, sodales mattis, auctor vitae, hendrerit vel, turpis. Pellentesque non metus.</p>
  <div class="button" id="testclick3"><strong>Auto-Hide</strong> - <em>click here</em></div>
  <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec odio elit, vulputate vel, malesuada non, dapibus ac, nulla. Maecenas ante. Nulla tristique justo vitae lectus. Morbi at mauris at justo pretium volutpat. Proin molestie sodales mi. Maecenas varius nunc nec nulla. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam tempor. Nunc volutpat augue id turpis. Proin non nisi eget ipsum cursus egestas. Donec semper. Nam scelerisque augue suscipit lorem. In libero diam, faucibus at, bibendum sit amet, pulvinar vitae, dolor. Aliquam id ligula. Mauris mollis mattis neque. Cras odio nisl, rhoncus nec, rhoncus eget, pellentesque eu, lectus. Pellentesque aliquet fringilla erat. Duis tincidunt.</p>
  <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec odio elit, vulputate vel, malesuada non, dapibus ac, nulla. Maecenas ante. Nulla tristique justo vitae lectus. Morbi at mauris at justo pretium volutpat. Proin molestie sodales mi. Maecenas varius nunc nec nulla. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam tempor. Nunc volutpat augue id turpis. Proin non nisi eget ipsum cursus egestas. Donec semper. Nam scelerisque augue suscipit lorem. In libero diam, faucibus at, bibendum sit amet, pulvinar vitae, dolor. Aliquam id ligula. Mauris mollis mattis neque. Cras odio nisl, rhoncus nec, rhoncus eget, pellentesque eu, lectus. Pellentesque aliquet fringilla erat. Duis tincidunt.</p>
  <p>In vel metus. Pellentesque euismod metus in nisl. Morbi luctus lorem ac est. Mauris pellentesque sapien quis est. Donec felis. Aliquam felis tortor, gravida at, viverra et, euismod ut, nisi. Sed varius nisi condimentum eros. Curabitur elit neque, rutrum feugiat, venenatis quis, hendrerit id, lacus. Nullam dui. Vivamus at erat vel lacus rhoncus ullamcorper. Nam nulla. Aenean et ipsum. Fusce convallis lorem sed velit. Morbi ante justo, rutrum in, molestie quis, cursus sed, est. Mauris eget sem. Etiam mattis. Quisque ornare tincidunt ligula. Suspendisse nunc. Integer aliquam vestibulum nulla.</p>
</div>

<script type="text/javascript">
  T$('testclick1').onclick = function(){TINY.box.show('advanced.html',1,300,150,1)}
  var content2 = "<img src='images/rhino.jpg' width='298' height='373' alt='' />";
  T$('testclick2').onclick = function(){TINY.box.show(content2,0,0,0,1)}
  var content3 = "This will disappear in 3 seconds.";
  T$('testclick3').onclick = function(){TINY.box.show(content3,0,0,0,0,3)}
</script>

</body>
<!-- Header -->
<%--<%@include file="header.jsp" %>--%>
<%--<body class="homepage">--%>
<%--<div id="testdiv">--%>
  <%--<h1>TinyBox JavaScript Popup Script</h1>--%>
  <%--<h2>For complete details visit <a href="http://www.leigeber.com/2009/05/javascript-popup-boxjavascript-popup-box/">leigeber.com</a>.</h2>--%>
  <%--<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ac mi. Integer egestas est ut eros interdum lobortis. Sed tincidunt, nunc id molestie rhoncus, neque libero rhoncus erat, nec dignissim quam neque eget velit. Maecenas enim. Nullam auctor sem vel odio. Etiam a velit. In hac habitasse platea dictumst. Aliquam ullamcorper risus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Pellentesque quis mi eget nunc dignissim porta. Cras semper, urna vulputate posuere adipiscing, leo nibh tristique felis, at tempus tortor libero vel sapien. Sed consectetur. Nunc vitae eros ut justo iaculis tincidunt. Nullam ante tellus, sodales mattis, auctor vitae, hendrerit vel, turpis. Pellentesque non metus.</p>--%>
  <%--<div class="button" id="testclick1"><strong>Advanced Features</strong> - <em>click here</em></div>--%>
  <%--<p>In vel metus. Pellentesque euismod metus in nisl. Morbi luctus lorem ac est. Mauris pellentesque sapien quis est. Donec felis. Aliquam felis tortor, gravida at, viverra et, euismod ut, nisi. Sed varius nisi condimentum eros. Curabitur elit neque, rutrum feugiat, venenatis quis, hendrerit id, lacus. Nullam dui. Vivamus at erat vel lacus rhoncus ullamcorper. Nam nulla. Aenean et ipsum. Fusce convallis lorem sed velit. Morbi ante justo, rutrum in, molestie quis, cursus sed, est. Mauris eget sem. Etiam mattis. Quisque ornare tincidunt ligula. Suspendisse nunc. Integer aliquam vestibulum nulla.</p>--%>
  <%--<div class="button" id="testclick2"><strong>Image</strong> - <em>click here</em></div>--%>
  <%--<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ac mi. Integer egestas est ut eros interdum lobortis. Sed tincidunt, nunc id molestie rhoncus, neque libero rhoncus erat, nec dignissim quam neque eget velit. Maecenas enim. Nullam auctor sem vel odio. Etiam a velit. In hac habitasse platea dictumst. Aliquam ullamcorper risus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Pellentesque quis mi eget nunc dignissim porta. Cras semper, urna vulputate posuere adipiscing, leo nibh tristique felis, at tempus tortor libero vel sapien. Sed consectetur. Nunc vitae eros ut justo iaculis tincidunt. Nullam ante tellus, sodales mattis, auctor vitae, hendrerit vel, turpis. Pellentesque non metus.</p>--%>
  <%--<div class="button" id="testclick3"><strong>Auto-Hide</strong> - <em>click here</em></div>--%>
  <%--<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec odio elit, vulputate vel, malesuada non, dapibus ac, nulla. Maecenas ante. Nulla tristique justo vitae lectus. Morbi at mauris at justo pretium volutpat. Proin molestie sodales mi. Maecenas varius nunc nec nulla. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam tempor. Nunc volutpat augue id turpis. Proin non nisi eget ipsum cursus egestas. Donec semper. Nam scelerisque augue suscipit lorem. In libero diam, faucibus at, bibendum sit amet, pulvinar vitae, dolor. Aliquam id ligula. Mauris mollis mattis neque. Cras odio nisl, rhoncus nec, rhoncus eget, pellentesque eu, lectus. Pellentesque aliquet fringilla erat. Duis tincidunt.</p>--%>
  <%--<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec odio elit, vulputate vel, malesuada non, dapibus ac, nulla. Maecenas ante. Nulla tristique justo vitae lectus. Morbi at mauris at justo pretium volutpat. Proin molestie sodales mi. Maecenas varius nunc nec nulla. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam tempor. Nunc volutpat augue id turpis. Proin non nisi eget ipsum cursus egestas. Donec semper. Nam scelerisque augue suscipit lorem. In libero diam, faucibus at, bibendum sit amet, pulvinar vitae, dolor. Aliquam id ligula. Mauris mollis mattis neque. Cras odio nisl, rhoncus nec, rhoncus eget, pellentesque eu, lectus. Pellentesque aliquet fringilla erat. Duis tincidunt.</p>--%>
  <%--<p>In vel metus. Pellentesque euismod metus in nisl. Morbi luctus lorem ac est. Mauris pellentesque sapien quis est. Donec felis. Aliquam felis tortor, gravida at, viverra et, euismod ut, nisi. Sed varius nisi condimentum eros. Curabitur elit neque, rutrum feugiat, venenatis quis, hendrerit id, lacus. Nullam dui. Vivamus at erat vel lacus rhoncus ullamcorper. Nam nulla. Aenean et ipsum. Fusce convallis lorem sed velit. Morbi ante justo, rutrum in, molestie quis, cursus sed, est. Mauris eget sem. Etiam mattis. Quisque ornare tincidunt ligula. Suspendisse nunc. Integer aliquam vestibulum nulla.</p>--%>
<%--</div>--%>
<%--<div id="header-wrapper">--%>
  <%--<header id="header" class="container">--%>

    <%--<!-- Logo -->--%>
    <%--<div id="logo">--%>
      <%--<h2 style="background-color: #ff4486;width: 150px;"><a href="#">画作展示</a></h2>--%>
    <%--</div>--%>
  <%--</header>--%>
<%--</div>--%>

<%--<div id="page-wrapper">--%>
  <%--<!-- Main -->--%>
  <%--<div id="features-wrapper">--%>
    <%--<div class="container">--%>
      <%--<div class="row">--%>

        <%--<!-- Content -->--%>
        <%--&lt;%&ndash;<h2 style="background-color: #ff4486;width: 150px;">画作展示</h2>&ndash;%&gt;--%>

        <%--&lt;%&ndash;<img src="<%=basePath%>resource/1001/20090205022815376.png">&ndash;%&gt;--%>
        <%--&lt;%&ndash;<form method="post" action="<%=basePath%>servlet/ImgDeleteServlet">&ndash;%&gt;--%>
        <%--<%--%>
          <%--DrawDao drawDao = new DrawDaoImpl();--%>
          <%--List<Draw> lists = drawDao.searchByTime();--%>
<%--//                System.out.println(DbUtils.getDraws());--%>
<%--//              List<Draw> lists= DbUtils.getDraws();--%>
          <%--String lastName = "";--%>
          <%--String filepath = "E:\\IdeaProjects\\hello\\web\\resource";--%>
          <%--for (Draw draw : lists) {--%>
            <%--String imgpath = String.format("%s\\%s\\%s", filepath, draw.getEmail(), draw.getName());--%>
            <%--String date = new SimpleDateFormat("yyyy-MM-dd").format(draw.getTime());--%>
            <%--String photoPath = String.format("%s/%s", draw.getEmail(), draw.getName());--%>
<%--//              Date date=new Date(file.lastModified());--%>
            <%--System.out.println(imgpath);--%>
<%--//                String imgpath1 = String.format("%s\\%s", filepath,file.getName());--%>
<%--//                String showpath=basePath+"servlet/DisplayServlet?path="+imgpath;--%>
<%--//              System.out.println(date + last);--%>

            <%--if (!lastName.equals(draw.getEmail())) {%>--%>
        <%--<div class="4u 12u(medium)">--%>
          <%--<!-- Box -->--%>
          <%--<section class="box feature">--%>

            <%--<div class="inner">--%>
              <%--<header>--%>
                <%--<h2><b><%=date%>--%>
                <%--</b></h2>--%>
              <%--</header>--%>
              <%--<p><a href="<%=basePath%>jsp/imageLibrary.jsp?email=<%=draw.getEmail()%>"><%=draw.getEmail()%>--%>
              <%--</a></p>--%>
            <%--</div>--%>
            <%--<a href="<%=basePath%>jsp/imageLibrary.jsp?email=<%=draw.getEmail()%>" class="image featured">--%>
              <%--<img src="<%=basePath%>servlet/DisplayServlet?path=<%=imgpath%>" alt=""/></a>--%>
          <%--</section>--%>

        <%--</div>--%>
        <%--<%--%>
            <%--lastName = draw.getEmail();}%>--%>
        <%--<div class="4u 12u(medium)">--%>

          <%--<!-- Box -->--%>
          <%--<section class="box feature">--%>
            <%--<a href="#" class="image featured" onclick="showImage('<%=imgpath%>')" id="show">--%>
              <%--<img src="<%=basePath%>servlet/DisplayServlet?path=<%=imgpath%>" alt=""/></a>--%>

            <%--<div class="inner">--%>
              <%--<header>--%>
                <%--<h2>An interesting title</h2>--%>

                <%--<p>This is also an interesting subtitle</p>--%>
              <%--</header>--%>
              <%--<p>Phasellus quam turpis, feugiat sit amet in, hendrerit in lectus. Praesent sed semper amet bibendum--%>
                <%--tristique fringilla.</p>--%>
            <%--</div>--%>
          <%--</section>--%>

        <%--</div>--%>
        <%--&lt;%&ndash;<img src="<%=basePath%>html/tmp/picCreate.jsp?path=<%=imgpath1%>">&ndash;%&gt;--%>
        <%--&lt;%&ndash;<img src="<%=imgpath%>">&ndash;%&gt;--%>
        <%--&lt;%&ndash;<span class="img" id="<%=photoPath%>">&ndash;%&gt;--%>
        <%--&lt;%&ndash;<img src="<%=basePath%>servlet/DisplayServlet?path=<%=imgpath%>" style="height: 200px;width: 200px"/>&ndash;%&gt;--%>
        <%--&lt;%&ndash;</span>&ndash;%&gt;--%>
        <%--&lt;%&ndash;<br>&ndash;%&gt;--%>
        <%--&lt;%&ndash;<input type="button" value="X" class="button1" onclick="test(<%=imgpath1%>);"/>&ndash;%&gt;--%>
        <%--&lt;%&ndash;<input type="button" value="X" class="button1" onclick=window.open()/>&ndash;%&gt;--%>
        <%--<%}%>--%>
        <%--&lt;%&ndash;</form>&ndash;%&gt;--%>

      <%--</div>--%>
    <%--</div>--%>
  <%--</div>--%>
<%--</div>--%>
<%--</body>--%>
<%--<!-- Footer -->--%>
<%--<%@include file="footer.jsp" %>--%>
</html>

