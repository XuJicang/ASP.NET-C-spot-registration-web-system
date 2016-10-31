<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ordersubmit.aspx.cs" Inherits="ordersubmit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/><link href="bootstrap-3.3.5-dist/css/bootstrap.min.css" rel="stylesheet" />
    <title></title>
</head>

<body style="background-color:transparent">
    <form id="form1" runat="server">
    <div id="233e">
    
        <asp:CheckBox ID="allcheck" runat="server" OnCheckedChanged="CheckBox1_CheckedChanged" Text="全选" AutoPostBack="True" />
        <div class="panel panel-warning">
            <div class="panel-heading">
            <h3 class="panel-title">您所选的待结算的场地：</h3>
            </div>
        <asp:Panel ID="Panel1" runat="server" CssClass="panel-body"></asp:Panel>
        </div>
    </div>
        <asp:Button ID="Button1" runat="server" Text="确定" OnClick="Button1_Click" CssClass="btn-danger active focus" />
    &nbsp;<asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="返回继续选择" Width="187px" CssClass="btn-toolbar" />
        &nbsp;<asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="计价" CssClass="btn-primary" />
        &nbsp;&nbsp;<asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="删除" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;总价：<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </form>
</body>
</html>
