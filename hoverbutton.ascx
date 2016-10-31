﻿<%@ Control Language="C#" AutoEventWireup="true" CodeFile="hoverbutton.ascx.cs" Inherits="hoverbutton" %>
<link href="css/one-page-wonder.css" rel="stylesheet" />
<link href="bootstrap-3.3.5-dist/css/bootstrap.min.css" rel="stylesheet" />
    <style>
        .btn3d {
            position: relative;
            top: -6px;
            border: 0;
            transition: all 40ms linear;
            margin-top: 10px;
            margin-bottom: 10px;
            margin-left: 2px;
            margin-right: 2px;
        }
        
        .btn3d:active:focus,
        .btn3d:focus:hover,
        .btn3d:focus {
            -moz-outline-style: none;
            outline: medium none;
        }
        
        .btn3d:active,
        .btn3d.active {
            top: 2px;
        }
        
        .btn3d.btn-white {
            color: #666666;
            box-shadow: 0 0 0 1px #ebebeb inset, 0 0 0 2px rgba(255, 255, 255, 0.10) inset, 0 8px 0 0 #f5f5f5, 0 8px 8px 1px rgba(0, 0, 0, .2);
            background-color: #fff;
        }
        
        .btn3d.btn-white:active,
        .btn3d.btn-white.active {
            color: #666666;
            box-shadow: 0 0 0 1px #ebebeb inset, 0 0 0 1px rgba(255, 255, 255, 0.15) inset, 0 1px 3px 1px rgba(0, 0, 0, .1);
            background-color: #fff;
        }
        
        .btn3d.btn-default {
            color: #666666;
            box-shadow: 0 0 0 1px #ebebeb inset, 0 0 0 2px rgba(255, 255, 255, 0.10) inset, 0 8px 0 0 #BEBEBE, 0 8px 8px 1px rgba(0, 0, 0, .2);
            background-color: #f9f9f9;
        }
        
        .btn3d.btn-default:active,
        .btn3d.btn-default.active {
            color: #666666;
            box-shadow: 0 0 0 1px #ebebeb inset, 0 0 0 1px rgba(255, 255, 255, 0.15) inset, 0 1px 3px 1px rgba(0, 0, 0, .1);
            background-color: #f9f9f9;
        }
        
        .btn3d.btn-primary {
            box-shadow: 0 0 0 1px #417fbd inset, 0 0 0 2px rgba(255, 255, 255, 0.15) inset, 0 8px 0 0 #4D5BBE, 0 8px 8px 1px rgba(0, 0, 0, 0.5);
            background-color: #4274D7;
        }
        
        .btn3d.btn-primary:active,
        .btn3d.btn-primary.active {
            box-shadow: 0 0 0 1px #417fbd inset, 0 0 0 1px rgba(255, 255, 255, 0.15) inset, 0 1px 3px 1px rgba(0, 0, 0, 0.3);
            background-color: #4274D7;
        }
        
        .btn3d.btn-success {
            box-shadow: 0 0 0 1px #31c300 inset, 0 0 0 2px rgba(255, 255, 255, 0.15) inset, 0 8px 0 0 #5eb924, 0 8px 8px 1px rgba(0, 0, 0, 0.5);
            background-color: #78d739;
        }
        
        .btn3d.btn-success:active,
        .btn3d.btn-success.active {
            box-shadow: 0 0 0 1px #30cd00 inset, 0 0 0 1px rgba(255, 255, 255, 0.15) inset, 0 1px 3px 1px rgba(0, 0, 0, 0.3);
            background-color: #78d739;
        }
        
        .btn3d.btn-info {
            box-shadow: 0 0 0 1px #00a5c3 inset, 0 0 0 2px rgba(255, 255, 255, 0.15) inset, 0 8px 0 0 #348FD2, 0 8px 8px 1px rgba(0, 0, 0, 0.5);
            background-color: #39B3D7;
        }
        
        .btn3d.btn-info:active,
        .btn3d.btn-info.active {
            box-shadow: 0 0 0 1px #00a5c3 inset, 0 0 0 1px rgba(255, 255, 255, 0.15) inset, 0 1px 3px 1px rgba(0, 0, 0, 0.3);
            background-color: #39B3D7;
        }
        
        .btn3d.btn-warning {
            box-shadow: 0 0 0 1px #d79a47 inset, 0 0 0 2px rgba(255, 255, 255, 0.15) inset, 0 8px 0 0 #D79A34, 0 8px 8px 1px rgba(0, 0, 0, 0.5);
            background-color: #FEAF20;
        }
        
        .btn3d.btn-warning:active,
        .btn3d.btn-warning.active {
            box-shadow: 0 0 0 1px #d79a47 inset, 0 0 0 1px rgba(255, 255, 255, 0.15) inset, 0 1px 3px 1px rgba(0, 0, 0, 0.3);
            background-color: #FEAF20;
        }
        
        .btn3d.btn-danger {
            box-shadow: 0 0 0 1px #b93802 inset, 0 0 0 2px rgba(255, 255, 255, 0.15) inset, 0 8px 0 0 #AA0000, 0 8px 8px 1px rgba(0, 0, 0, 0.5);
            background-color: #D73814;
        }
        
        .btn3d.btn-danger:active,
        .btn3d.btn-danger.active {
            box-shadow: 0 0 0 1px #b93802 inset, 0 0 0 1px rgba(255, 255, 255, 0.15) inset, 0 1px 3px 1px rgba(0, 0, 0, 0.3);
            background-color: #D73814;
        }
        
        .btn3d.btn-magick {
            color: #fff;
            box-shadow: 0 0 0 1px #9a00cd inset, 0 0 0 2px rgba(255, 255, 255, 0.15) inset, 0 8px 0 0 #9823d5, 0 8px 8px 1px rgba(0, 0, 0, 0.5);
            background-color: #bb39d7;
        }
        
        .btn3d.btn-magick:active,
        .btn3d.btn-magick.active {
            box-shadow: 0 0 0 1px #9a00cd inset, 0 0 0 1px rgba(255, 255, 255, 0.15) inset, 0 1px 3px 1px rgba(0, 0, 0, 0.3);
            background-color: #bb39d7;
        }
    </style>
<asp:Button ID="Button1" runat="server" CssClass="btn btn-warning btn-lg btn3d" 
    Height="100%" Width="100%" onclick="Button1_Click" />

<script src="jquery-1.8.0.min.js"></script>
<script src="bootstrap-3.3.5-dist/js/bootstrap.min.js"></script>
