<%--
  Created by IntelliJ IDEA.
  User: hello
  Date: 2015/11/4
  Time: 14:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.util.*" %>
<%
  String path = request.getContextPath();
  String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
  response.setContentType("text/html");
  response.setCharacterEncoding("utf-8");
  request.setCharacterEncoding("utf-8");
  System.out.println(basePath);
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
  <title>登录</title>
  <meta charset="utf-8" />
  <script src="<%=basePath%>js/jquery.min.js"></script>
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
  <script>
    function checkPassword(){
      var fd=new FormData();
      var email=$("#email").val();
      var password=$("#pass").val();

      fd.append("email",email.toString());
      fd.append("password",password.toString());
      var xhr=new XMLHttpRequest();
      xhr.open("POST", "<%=basePath%>servlet/LoginServlet");
      xhr.send(fd);
//      alert(password);
//      alert(email);
      xhr.onreadystatechange=function(){
        if(xhr.readyState==4){
          if(xhr.status==200){
            var ok=xhr.responseText;
//            alert(ok);
            if(ok=="true"){
              $("#true").fadeIn(1000);
              $("#true").fadeOut(2000);
              window.location.href=
                      "<%=basePath%>jsp/<%="drawer".equals((String)request.getSession().getAttribute("id"))?"library.jsp":"projects.jsp"%>";

            }else{
              $("#false").fadeIn(1000);
              $("#false").fadeOut(2000);
              $("#form1").reset();
            }
          }
        }
      };
    }
  </script>
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
        <form action="<%=basePath%>servlet/LoginServlet" method="post" id="form1" name="register" enctype="multipart/form-data">
          <div><label>邮箱:</label><input id="email" name="email" data-ideal="required email" type="email"/></div>
          <div><label>密码:</label><input id="pass" name="password" type="password"/></div>
          <br>
          <input type="button" value="登录" style="height: 70px;" onclick="checkPassword()"/>
          <span id="register">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="<%=basePath%>jsp/register.jsp">注册</a> </span>
          <span id="true" style="display:none"><b>登录成功！</b></span>
          <span id="false" style="display:none"><b>账户或密码错误！</b></span>
        </form>

      </div>
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
