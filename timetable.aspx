<%@ Page Language="C#" AutoEventWireup="true" CodeFile="timetable.aspx.cs" Inherits="timetable" %>

<%@ Register src="hoverbutton.ascx" tagname="hoverbutton" tagprefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="~/css/StyleSheet.css" />
    <link href="bootstrap-3.3.5-dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/one-page-wonder.css" rel="stylesheet" />
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style3
        {
        }
       
        #window2 {
            width: 868px;
            margin-top: 0px;
        }
         -webkit-box-sizing: border-box;
        /* Firefox (desktop or Android) 28- */
        
        -moz-box-sizing: border-box;
        /* Firefox 29+, IE 8+, Chrome 10+, Safari 5.1+, Opera 9.5+, iOS 5+, Opera Mini Anything, Blackberry 10+, Android 4+ */
        
        box-sizing: border-box;
    }
            .btn-nav {
        background-color: #fff;
        border: 1px solid #e0e1db;
        -webkit-box-sizing: border-box;
        /* Safari/Chrome, other WebKit */
        
        -moz-box-sizing: border-box;
        /* Firefox, other Gecko */
        
        box-sizing: border-box;
        /* Opera/IE 8+ */
        width:90%;
    }
    .btn-nav:hover {
        color: #e92d00;
        cursor: pointer;
        -webkit-transition: color 1s;
        /* For Safari 3.1 to 6.0 */
        
        transition: color 1s;
    }
    .btn-nav.active {
        color: #e92d00;
        padding: 2px;
        border-top: 6px solid #e92d00;
        border-bottom: 6px solid #e92d00;
        border-left: 0;
        border-right: 0;
        box-sizing: border-box;
        -moz-box-sizing: border-box;
        -webkit-box-sizing: border-box;
        -webkit-transition: border 0.3s ease-out, color 0.3s ease 0.5s;
        -moz-transition: border 0.3s ease-out, color 0.3s ease 0.5s;
        -ms-transition: border 0.3s ease-out, color 0.3s ease 0.5s;
        /* IE10 is actually unprefixed */
        
        -o-transition: border 0.3s ease-out, color 0.3s ease 0.5s;
        transition: border 0.3s ease-out, color 0.3s ease 0.5s;
        -webkit-animation: pulsate 1.2s linear infinite;
        animation: pulsate 1.2s linear infinite;
    }
    .btn-nav.active:before {
        content: '';
        position: absolute;
        border-style: solid;
        border-width: 6px 6px 0;
        border-color: #e92d00 transparent;
        display: block;
        width: 0;
        z-index: 1;
        margin-left: -6px;
        top: 0;
        left: 50%;
    }
    .btn-nav .glyphicon {
        padding-top: 16px;
        font-size: 40px;
    }
    .btn-nav.active p {
        margin-bottom: 8px;
    }
    @-webkit-keyframes pulsate {
        50% {
            color: #000;
        }
    }
    @keyframes pulsate {
        50% {
            color: #000;
        }
    }
    @media (max-width: 600px) {
        .btn-group {
            display: block !important;
            float: none !important;
            width: 120% !important;
            max-width: 120% !important;
        }
    }
    @media (max-width: 600px) {
        .btn-nav .glyphicon {
            padding-top: 12px;
            font-size: 26px;
        }
    }
       
        .auto-style1 {
            width: 70px;
        }
        div.social-network {
            list-style: none;
            display: inline;
            margin-left: 0 !important;
            padding: 0;
        }
        
        div.social-network div {
            display: inline;
            margin: 0 5px;
        }
        
        .social-network button.icoGoogle:hover {
            background-color: #BD3518;
        }

        .social-network button.icoGoogle:hover i{
            color: #fff;
        }
        
        button.socialIcon:hover,
        .socialHoverClass {
            color: #44BCDD;
        }
        
        .social-circle div button {
            display: inline-block;
            position: relative;
            margin: 0 auto 0 auto;
            -moz-border-radius: 50%;
            -webkit-border-radius: 50%;
            border-radius: 50%;
            text-align: center;
            width: 50px;
            height: 50px;
            font-size: 20px;
        }
        
        .social-circle button i{
            margin: 0;
            line-height: 50px;
            text-align: center;
        }
        
        .social-circle div button:hover i,
        .triggeredHover {
            -moz-transform: rotate(360deg);
            -webkit-transform: rotate(360deg);
            -ms--transform: rotate(360deg);
            transform: rotate(360deg);
            -webkit-transition: all 0.2s;
            -moz-transition: all 0.2s;
            -o-transition: all 0.2s;
            -ms-transition: all 0.2s;
            transition: all 0.2s;
        }
        
        .social-circle div {
            color: #fff;
            -webkit-transition: all 0.8s;
            -moz-transition: all 0.8s;
            -o-transition: all 0.8s;
            -ms-transition: all 0.8s;
            transition: all 0.8s;
        }
        
        div button{
            background-color: #D3D3D3;
        }   
        
       .fa-foward-plus::before {
             content: "👉";
        }
       .fa-backward-plus::before {
             content: "👈";
        }
        .auto-style2 {
            height: 58px;
        }
    </style>
&nbsp;<![CDATA[

        function Button1_onclick() {

        }

 ]]>
        <!-- jQuery -->
       <script src="bootstrap-3.3.5-dist/js/jquery-1.8.0.min.js"></script>
        
        <!-- Bootstrap Core JavaScript -->
    <script src="bootstrap-3.3.5-dist/js/bootstrap.min.js"></script>
        </script>
    <script>
        window.attachEvent('onload', function() {
            var s = "<%=Page.IsPostBack %>";
            if (s == "False") {
                var dd = new Date(); var activeEl = dd.getDay() - 1; $(function () { var items = $('.btn-nav'); $(items[activeEl]).addClass('active'); $(".btn-nav").click(function () { $(items[activeEl]).removeClass('active'); $(this).addClass('active'); activeEl = $(".btn-nav").index(this); }); });
            } else { $(function () { var items = $('.btn-nav'); $(items[activeEl]).addClass('active'); $(".btn-nav").click(function () { $(items[activeEl]).removeClass('active'); $(this).addClass('active'); activeEl = $(".btn-nav").index(this); }); }); }
        });

    </script>
        <!-- jQuery -->
       <script src="bootstrap-3.3.5-dist/js/jquery-1.8.0.min.js"></script>
        <script>
            var dd = new Date();
            var activeEl = dd.getDay() - 1;
            $(function () {
                var items = $('.btn-nav');
                $(items[activeEl]).addClass('active');
                $(".btn-nav").click(function () {
                    $(items[activeEl]).removeClass('active');
                    $(this).addClass('active');
                    activeEl = $(".btn-nav").index(this);
                });
            });
        </script>
        <!-- Bootstrap Core JavaScript -->
    <script src="bootstrap-3.3.5-dist/js/bootstrap.min.js"></script>
        </script>

</head>
    <body style="background-color:transparent;width:868px;height:920px">
        <iframe src="dh.html" id="window2" name="window" marginheight="0" marginwidth="0" frameborder="0" allowtransparency="true" style="background-color:transparent; height: 260px;" scrolling="no" ></iframe>
    <form id="form1" runat="server" method="post">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
         <div class="featurette" id="about">
            <div class="container">
                                 <div class="row" style="background-color:transparent">
                                
                                      <div class="col-lg-12" style="background-color:transparent;border:none; padding:0;">
                                          <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional" ChildrenAsTriggers="False">
                                              <ContentTemplate>
                                <asp:Button ID="titlehover1"  runat="server" OnClick="titlehover1_Click" Text="Button" CssClass="btn btn-nav" />

                                <asp:Button ID="titlehover2"  runat="server" OnClick="titlehover2_Click" Text="Button" CssClass="btn btn-nav" />
                       
                                <asp:Button ID="titlehover3" runat="server" OnClick="titlehover3_Click" Text="Button" CssClass="btn btn-nav"/>

                                <asp:Button ID="titlehover4" runat="server" OnClick="titlehover4_Click" Text="Button" CssClass="btn btn-nav" />

                                <asp:Button ID="titlehover5" runat="server" OnClick="titlehover5_Click" Text="Button" CssClass="btn btn-nav" />

                                <asp:Button ID="titlehover6" runat="server" OnClick="titlehover6_Click" Text="Button" CssClass="btn btn-nav" />

                                <asp:Button ID="titlehover7" runat="server" OnClick="titlehover7_Click" Text="Button" CssClass="btn btn-nav"/>
                                                                                            
                                              </ContentTemplate>
                                              
                                          </asp:UpdatePanel>
                               
                            </div>
                    </div>
                </div>
                                     <div class="social-network social-circle" style="background-color:none">
                        <script type="text/javascript">
                            function btn1() {
                                var dd = new Date(); var activeEl = dd.getDay() - 1;
                                var items = $('.btn-nav'); $(items[activeEl]).removeClass('active');
                                document.getElementById("Button1").click();
                            };
                            function btn2() {
                                var dd = new Date(); var activeEl = dd.getDay() - 1;
                                var items = $('.btn-nav'); $(items[activeEl]).removeClass('active');
                                document.getElementById("Button2").click();
                            }
                                </script> 
                            <div class="col-md-1" style="background-color:transparent">
                            <button class="icoGoogle" title="上一星期" onclick="btn1()" style="background-color:transparent">
                            <i class="fa fa-backward-plus"></i>  
                            </button>
                            </div>
                            <div class="col-md-offset-6 col-md-1" style="background-color:transparent">
                              <button class="icoGoogle" title="下一星期" onclick="btn2()" style="background-color:transparent">
                               <i class="fa fa-foward-plus"></i>
                              </button>
                            </div>
                           </div>
        
               
                    <table class="style1" id="table1" runat="server">
                      <tr>
                            <td style="width:auto">

                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style1">
                                <div class="wo" style="height: 51px; width:68px">
                                    篮球馆</div>
                            </td>
                            <td style="margin-left: 80px">
                                <uc1:hoverbutton ID="b1" runat="server" Text="8:00" addr="篮球馆" />
                            </td>
                            <td>
                                <uc1:hoverbutton ID="b2" runat="server" Text="9:00" addr="篮球馆" />
                            </td>
                            <td>
                                <uc1:hoverbutton ID="b3" runat="server" Text="10:00" addr="篮球馆" />
                            </td>
                            <td>
                                <uc1:hoverbutton ID="b4" runat="server" Text="11:00" addr="篮球馆" />
                            </td>
                            <td>
                                <uc1:hoverbutton ID="b5" runat="server" Text="12:00" addr="篮球馆" />
                            </td>
                            <td>
                                <uc1:hoverbutton ID="b6" runat="server" Text="13:00" addr="篮球馆" />
                            </td>
                            <td>
                                <uc1:hoverbutton ID="b7" runat="server" Text="14:00" addr="篮球馆" />
                            </td>
                            <td>
                                <uc1:hoverbutton ID="b8" runat="server" Text="15:00" addr="篮球馆" />
                            </td>
                            <td>
                                <uc1:hoverbutton ID="b9" runat="server" Text="16:00" addr="篮球馆" />
                            </td>
                            <td>
                                <uc1:hoverbutton ID="b10" runat="server" Text="17:00" addr="篮球馆" />
                            </td>
                            <td>
                                <uc1:hoverbutton ID="b11" runat="server" Text="18:00" addr="篮球馆" />
                            </td>
                            <td>
                                <uc1:hoverbutton ID="b12" runat="server" Text="19:00" addr="篮球馆" />
                            </td>
                            <td>
                                <uc1:hoverbutton ID="b13" runat="server" Text="20:00" addr="篮球馆" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style1">
                                <div style="height: 51px; width:68px">
                                    游泳馆</div>
                            </td>
                            <td>
                                <uc1:hoverbutton ID="b14" runat="server" Text="8:00" addr="游泳馆" />
                            </td>
                            <td>
                                <uc1:hoverbutton ID="b15" runat="server" Text="9:00" addr="游泳馆" />
                            </td>
                            <td>
                                <uc1:hoverbutton ID="b16" runat="server" Text="10:00" addr="游泳馆" />
                            </td>
                            <td>
                                <uc1:hoverbutton ID="b17" runat="server" Text="11:00" addr="游泳馆" />
                            </td>
                            <td>
                                <uc1:hoverbutton ID="b18" runat="server" Text="12:00" addr="游泳馆" />
                            </td>
                            <td>
                                <uc1:hoverbutton ID="b19" runat="server" Text="13:00" addr="游泳馆" />
                            </td>
                            <td>
                                <uc1:hoverbutton ID="b20" runat="server" Text="14:00" addr="游泳馆" />
                            </td>
                            <td>
                                <uc1:hoverbutton ID="b21" runat="server" Text="15:00" addr="游泳馆" />
                            </td>
                            <td>
                                <uc1:hoverbutton ID="b22" runat="server" Text="16:00" addr="游泳馆" />
                            </td>
                            <td>
                                <uc1:hoverbutton ID="b23" runat="server" Text="17:00" addr="游泳馆" />
                            </td>
                            <td>
                                <uc1:hoverbutton ID="b24" runat="server" Text="18:00" addr="游泳馆" />
                            </td>
                            <td>
                                <uc1:hoverbutton ID="b25" runat="server" Text="19:00" addr="游泳馆" />
                            </td>
                            <td>
                                <uc1:hoverbutton ID="b26" runat="server" Text="20:00" addr="游泳馆" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style1">
                                <div style="height: 51px; width:68px">
                                    健身房</div>
                            </td>
                            <td>
                                <uc1:hoverbutton ID="b27" runat="server" Text="8:00" addr="健身房" />
                            </td>
                            <td>
                                <uc1:hoverbutton ID="b28" runat="server" Text="9:00" addr="健身房" />
                            </td>
                            <td>
                                <uc1:hoverbutton ID="b29" runat="server" Text="10:00" addr="健身房" />
                            </td>
                            <td>
                                <uc1:hoverbutton ID="b30" runat="server" Text="11:00" addr="健身房" />
                            </td>
                            <td>
                                <uc1:hoverbutton ID="b31" runat="server" Text="12:00" addr="健身房" />
                            </td>
                            <td>
                                <uc1:hoverbutton ID="b32" runat="server" Text="13:00" addr="健身房" />
                            </td>
                            <td>
                                <uc1:hoverbutton ID="b33" runat="server" Text="14:00" addr="健身房" />
                            </td>
                            <td>
                                <uc1:hoverbutton ID="b34" runat="server" Text="15:00" addr="健身房" />
                            </td>
                            <td>
                                <uc1:hoverbutton ID="b35" runat="server" Text="16:00" addr="健身房" />
                            </td>
                            <td>
                                <uc1:hoverbutton ID="b36" runat="server" Text="17:00" addr="健身房" />
                            </td>
                            <td>
                                <uc1:hoverbutton ID="b37" runat="server" Text="18:00" addr="健身房" />
                            </td>
                            <td>
                                <uc1:hoverbutton ID="b38" runat="server" Text="19:00" addr="健身房" />
                            </td>
                            <td>
                                <uc1:hoverbutton ID="b39" runat="server" Text="20:00" addr="健身房" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style1">
                                <div style="height: 51px; width:68px">
                                    羽毛球馆</div>
                            </td>
                            <td>
                                <uc1:hoverbutton ID="b40" runat="server" Text="8:00" addr="羽毛球馆" />
                            </td>
                            <td>
                                <uc1:hoverbutton ID="b41" runat="server" Text="9:00" addr="羽毛球馆" />
                            </td>
                            <td>
                                <uc1:hoverbutton ID="b42" runat="server" Text="10:00" addr="羽毛球馆" />
                            </td>
                            <td>
                                <uc1:hoverbutton ID="b43" runat="server" Text="11:00" addr="羽毛球馆" />
                            </td>
                            <td>
                                <uc1:hoverbutton ID="b44" runat="server" Text="12:00" addr="羽毛球馆" />
                            </td>
                            <td>
                                <uc1:hoverbutton ID="b45" runat="server" Text="13:00" addr="羽毛球馆" />
                            </td>
                            <td>
                                <uc1:hoverbutton ID="b46" runat="server" Text="14:00" addr="羽毛球馆" />
                            </td>
                            <td>
                                <uc1:hoverbutton ID="b47" runat="server" Text="15:00" addr="羽毛球馆" />
                            </td>
                            <td>
                                <uc1:hoverbutton ID="b48" runat="server" Text="16:00" addr="羽毛球馆" />
                            </td>
                            <td>
                                <uc1:hoverbutton ID="b49" runat="server" Text="17:00" addr="羽毛球馆" />
                            </td>
                            <td>
                                <uc1:hoverbutton ID="b50" runat="server" Text="18:00" addr="羽毛球馆" />
                            </td>
                            <td>
                                <uc1:hoverbutton ID="b51" runat="server" Text="19:00" addr="羽毛球馆" />
                            </td>
                            <td>
                                <uc1:hoverbutton ID="b52" runat="server" Text="20:00" addr="羽毛球馆" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style1">
                                <div style="height: 51px; width:68px">
                                    足球场</div>
                            </td>
                            <td>
                                <uc1:hoverbutton ID="b53" runat="server" Text="8:00" addr="足球场" />
                            </td>
                            <td>
                                <uc1:hoverbutton ID="b54" runat="server" Text="9:00" addr="足球场" />
                            </td>
                            <td>
                                <uc1:hoverbutton ID="b55" runat="server" Text="10:00" addr="足球场" />
                            </td>
                            <td>
                                <uc1:hoverbutton ID="b56" runat="server" Text="11:00" addr="足球场" />
                            </td>
                            <td>
                                <uc1:hoverbutton ID="b57" runat="server" Text="12:00" addr="足球场" />
                            </td>
                            <td>
                                <uc1:hoverbutton ID="b58" runat="server" Text="13:00" addr="足球场" />
                            </td>
                            <td>
                                <uc1:hoverbutton ID="b59" runat="server" Text="14:00" addr="足球场" />
                            </td>
                            <td>
                                <uc1:hoverbutton ID="b60" runat="server" Text="15:00" addr="足球场" />
                            </td>
                            <td>
                                <uc1:hoverbutton ID="b61" runat="server" Text="16:00" addr="足球场" />
                            </td>
                            <td>
                                <uc1:hoverbutton ID="b62" runat="server" Text="17:00" addr="足球场" />
                            </td>
                            <td>
                                <uc1:hoverbutton ID="b63" runat="server" Text="18:00" addr="足球场" />
                            </td>
                            <td>
                                <uc1:hoverbutton ID="b64" runat="server" Text="19:00" addr="足球场" />
                            </td>
                            <td>
                                <uc1:hoverbutton ID="b65" runat="server" Text="20:00" addr="足球场" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style1">
                                <div style="height: 51px; width:68px">
                                    网球场</div>
                            </td>
                            <td>
                                <uc1:hoverbutton ID="b66" runat="server" Text="8:00" addr="网球场" />
                            </td>
                            <td>
                                <uc1:hoverbutton ID="b67" runat="server" Text="9:00" addr="网球场" />
                            </td>
                            <td>
                                <uc1:hoverbutton ID="b68" runat="server" Text="10:00" addr="网球场" />
                            </td>
                            <td>
                                <uc1:hoverbutton ID="b69" runat="server" Text="11:00" addr="网球场" />
                            </td>
                            <td>
                                <uc1:hoverbutton ID="b70" runat="server" Text="12:00" addr="网球场" />
                            </td>
                            <td>
                                <uc1:hoverbutton ID="b71" runat="server" Text="13:00" addr="网球场" />
                            </td>
                            <td>
                                <uc1:hoverbutton ID="b72" runat="server" Text="14:00" addr="网球场" />
                            </td>
                            <td>
                                <uc1:hoverbutton ID="b73" runat="server" Text="15:00" addr="网球场" />
                            </td>
                            <td>
                                <uc1:hoverbutton ID="b74" runat="server" Text="16:00" addr="网球场" />
                            </td>
                            <td>
                                <uc1:hoverbutton ID="b75" runat="server" Text="17:00" addr="网球场" />
                            </td>
                            <td>
                                <uc1:hoverbutton ID="b76" runat="server" Text="18:00" addr="网球场" />
                            </td>
                            <td>
                                <uc1:hoverbutton ID="b77" runat="server" Text="19:00" addr="网球场" />
                            </td>
                            <td>
                                <uc1:hoverbutton ID="b78" runat="server" Text="20:00" addr="网球场" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style1">
                                <div style="height: 51px; width:79px">
                                    舞蹈练功房</div>
                            </td>
                            <td>
                                <uc1:hoverbutton ID="b79" runat="server" Text="8:00" addr="舞蹈练功房" />
                            </td>
                            <td>
                                <uc1:hoverbutton ID="b80" runat="server" Text="9:00" addr="舞蹈练功房" />
                            </td>
                            <td>
                                <uc1:hoverbutton ID="b81" runat="server" Text="10:00" addr="舞蹈练功房" />
                            </td>
                            <td>
                                <uc1:hoverbutton ID="b82" runat="server" Text="11:00" addr="舞蹈练功房" />
                            </td>
                            <td>
                                <uc1:hoverbutton ID="b83" runat="server" Text="12:00" addr="舞蹈练功房" />
                            </td>
                            <td>
                                <uc1:hoverbutton ID="b84" runat="server" Text="13:00" addr="舞蹈练功房" />
                            </td>
                            <td>
                                <uc1:hoverbutton ID="b85" runat="server" Text="14:00" addr="舞蹈练功房" />
                            </td>
                            <td>
                                <uc1:hoverbutton ID="b86" runat="server" Text="15:00" addr="舞蹈练功房" />
                            </td>
                            <td>
                                <uc1:hoverbutton ID="b87" runat="server" Text="16:00" addr="舞蹈练功房" />
                            </td>
                            <td>
                                <uc1:hoverbutton ID="b88" runat="server" Text="17:00" addr="舞蹈练功房" />
                            </td>
                            <td>
                                <uc1:hoverbutton ID="b89" runat="server" Text="18:00" addr="舞蹈练功房" />
                            </td>
                            <td>
                                <uc1:hoverbutton ID="b90" runat="server" Text="19:00" addr="舞蹈练功房" />
                            </td>
                            <td>
                                <uc1:hoverbutton ID="b91" runat="server" Text="20:00" addr="舞蹈练功房" />
                            </td>
                        </tr>
                            
                    </table>
                       
         </div>
         <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click"/>
         <asp:Button ID="Button2" runat="server" Text="Button" OnClick="Button2_Click" />
    </form>
     </body>
</html>
