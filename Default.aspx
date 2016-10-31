<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
    <link href="css/one-page-wonder.css" rel="stylesheet" />
    <link href="bootstrap-3.3.5-dist/css/bootstrap.min.css" rel="stylesheet" />
    <script type="text/javascript" src="bootstrap-3.3.5-dist/js/sweet-alert.js"></script>
    <link href="bootstrap-3.3.5-dist/css/sweet-alert.css" rel="stylesheet" />
    <script type="text/javascript">
       function sucess(){
            swal({
                title: "恭喜您",
                text: "您的支付已成功，请注意不要轻信任何人的退场地理由，我们不会单方面取消订单！",
                type: "success",
                showCancelButton: true,
                confirmButtonClass: 'btn-success',
                confirmButtonText: '再到主页去看一看',
                cancelButtonText:'查看详细信息'
            });
       };
       function danger() {
           swal({
               title: "很抱歉",
               text: "您没有支付成功，更多详细信息请联系支付宝技术部门",
               type: "error",
               showCancelButton: true,
               cancelButtonClass: 'btn-danger',
               confirmButtonText: '重新支付',
               cancelButtonText: '查看详细信息'
           });
       };
    </script>
    <script type="text/javascript" src="bootstrap-3.3.5-dist/js/bootstrap.min.js"></script>
</head>
<body style="background-color:transparent">
    <form id="form1" runat="server">
<div>
<div class="sweet-overlay" tabindex="-1" style="opacity: 1.07; display: block;"></div>
<div class="sweet-alert showSweetAlert visible" tabindex="-1" data-has-cancel-button="true" data-allow-ouside-click="false" data-has-done-function="false" data-timer="null" style="display: block;">
<div class="icon error animateErrorIcon" style="display: block;">
<span class="x-mark animateXMark">
<span class="line left"></span>
<span class="line right"></span>
</span>
</div>
<div class="icon success" style="display: none;">
<span class="line tip"></span>
<span class="line long"></span>
<div class="placeholder"></div>
<div class="fix"></div>
</div>
<div class="icon custom" style="display: none;"></div>
<h2></h2>
<p class="lead text-muted" style="display: block;"></p>
<p>
<button class="cancel btn btn-default btn-lg" tabindex="2" style="display: inline-block;"></button>
<button class="confirm btn btn-lg btn-danger" tabindex="1" onclick="javascript:location.href = 'ordersubmit.aspx'"></button>
</p>
</div>
    </div>
    </form>
</body>
</html>
