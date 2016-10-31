<%@ Page Language="C#" AutoEventWireup="true" CodeFile="finaltimetable.aspx.cs" Inherits="html_index" %>

<!DOCTYPE html>

<!DOCTYPE html>
<!--
SNIPPETS
Name: Hide Menu
Version: 1.0
Created: 11 February 2014

AUTHOR
Design and code by: http://www.bootshape.com

Read full license: http://www.bootshape.com/license.php

CREDITS
Fonts: http://www.google.com/fonts (Montserrat Alternates, Happy Monkey)
Images: http://www.flickr.com/photos/xvire/

SUPPORT
E-mail: bootshape.com@gmail.com
Contact: http://www.bootshape.com/contact.php
-->
<html>
  <head>
    <title>Hide Menu</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    
    <!--Bootshape-->
    <link href="snippet.css" rel="stylesheet">

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://code.jquery.com/jquery.js"></script>

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
  </head>
  <body class="bootshape-menu-push" style="background-image:url(img/background.jpg);background-attachment:fixed;background-repeat:no-repeat;">

    <!--Google Fonts-->
    <link href='http://fonts.googleapis.com/css?family=Montserrat+Alternates|Happy+Monkey&subset=latin,latin-ext' rel='stylesheet' type='text/css'>

    <nav class="bootshape-menu bootshape-menu-vertical bootshape-menu-left" id="bootshape-menu-s1">
      <div class="item">
        <span class="glyphicon glyphicon-home"></span>
        <a href="#">主页</a>
      </div>
      <div class="item">
        <span class="glyphicon glyphicon-stats"></span>
        <a href="#">我的订单</a>
      </div>
      <div class="item">
        <span class="glyphicon glyphicon-map-marker"></span>
        <a href="#">预定场地</a>
      </div>
      <div class="item">
        <span class="glyphicon glyphicon-envelope"></span>
        <a href="#">论坛</a>
      </div>
      <div class="item">
        <span class="glyphicon glyphicon-usd"></span>
        <a href="#">找朋友</a>
      </div>
      <div class="item">
        <span class="glyphicon glyphicon-user"></span>
        <a href="#">高级搜索页面</a>
      </div>
    </nav>

    <div class="content">
      <span class="show-menu pull-left">
        <span class="glyphicon glyphicon-th-list" id="showLeftPush"></span>
      </span>
        <iframe src="../Default.aspx" style="height:470px; width: 868px" allowTransparency="true" scrolling="no"  frameborder="no" marginwidth="0" marginheight="0" ></iframe>
    </div>

    <script type="text/javascript" src="snippet.js"></script>
  </body>
</html>