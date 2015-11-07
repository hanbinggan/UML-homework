<%--
  Created by IntelliJ IDEA.
  User: hello
  Date: 2015/10/20
  Time: 9:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  String path=request.getContextPath();
  String basePath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

%>
<html>
<head>
  <title>修改信息</title>
  <meta charset="utf-8" />

  <meta name="keywords"/>
  <meta name="description"/>
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />

  <link href="<%=basePath%>css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans:400,300">
  <link rel="stylesheet" href="<%=basePath%>css/ace.min.css">
  <link rel="stylesheet" href="<%=basePath%>css/font-awesome.min.css" />

  <script src="<%=basePath%>js/ace-extra.min.js"></script>
  <script src="<%=basePath%>js/jquery.min.js"></script>
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <script src="<%=basePath%>js/ace-extra.min.js"></script>

  <!--[if lte IE 8]>
  <script src="<%=basePath%>js/ie/html5shiv.js"></script>
  <![endif]-->
  <link rel="stylesheet" href="<%=basePath%>css/main.css" />

  <script>
    function setImagePreview1(){
      var list=document.getElementById("image-list1");
      var files=document.getElementById("doc").files;
      for(var i=0;i<files.length;i++){
        var span=document.createElement("span");
        var img=document.createElement("img");
        img.style.border="thick hidden";
        img.style.width='100px';
        img.style.height='100px';
        img.src=window.URL.createObjectURL(files[i]);
        span.appendChild(img);
        list.appendChild(span);
      }
    }
    $(document).ready(function(){
      $("#btn").click(function(){
        $("#image-list1").empty();
        $('#text1').fadeIn(1000);
        $('#text1').fadeOut(2000);
        $("#form1")[0].reset();
      });
    });
    function uploadFile() {
      var fd = new FormData();
      var files=document.getElementById("doc").files;
      var xhr=new XMLHttpRequest();
      fd.append("cnt",files.length);
      for(var i=0;i<files.length;i++){
        var str="fileToUpload" + i;
        fd.append(str,files[i]);
      }
      xhr.open("POST", "<%=basePath%>servlet/ImageUploadServlet");
      xhr.send(fd);
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
          <h2 style="background-color: #ff4486;width: 150px;">上传画作</h2>

          <form method="post" action="<%=basePath%>servlet/ImageUploadServlet" enctype="multipart/form-data" id="form1">
            <div>
            <input type="file" name="doc" id="doc" multiple="multiple"  onchange="setImagePreview1()" style="font-size:24px;line-height:24px;color:white;
            background-color:#F08080;border:3px solid silver;border-radius:10px;">
            </div>
            <br>
            <div id="image-list1"></div>
            <br>
            <input type="button" onclick="uploadFile()" value="上传" style="font-size:24px;line-height:24px;color:darkgrey;
            background-color:#F08080;border:3px solid silver;border-radius:10px;" id="btn"/>
            <span id="text1" style="display:none"><b>上传成功！</b></span>
          </form>


        </div>
      </div>
    </div>
  </div>
</div>
</body>
<!--Footer-->
<%@include file="footer.jsp"%>
</html>
