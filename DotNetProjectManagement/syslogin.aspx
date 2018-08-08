<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="syslogin.aspx.cs" Inherits="DotNetProjectManagement.syslogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <style>
        body{
            background-image:url("pic3.jpg");
        }
    </style>
    <title></title>
    <style type="text/css">
        .auto-style2 {
            color: #FFFFFF;
            background-color: #000000;
            font-size: x-large;
        }
        .auto-style3 {
            width: 89%;
            height: 368px;
        }
        .auto-style4 {
            width: 394px;
            text-align: right;
        }
        .auto-style5 {
            width: 316px;
            text-align: center;
        }
        .auto-style7 {
            color: #FFFFFF;
            font-size: large;
            background-color: #003300;
        }
        .auto-style8 {
            text-align: center;
            background-color: #000000;
        }
        .auto-style10 {
            color: #FFFFFF;
            font-size: large;
            background-color: #009933;
        }
        .auto-style11 {
            width: 394px;
            text-align: right;
            height: 79px;
        }
        .auto-style12 {
            width: 316px;
            height: 79px;
            text-align: center;
        }
        .auto-style13 {
            text-align: left;
            height: 79px;
        }
        .auto-style14 {
            text-align: left;
        }
        .auto-style15 {
            color: #FF0000;
            background-color: #000000;
        }
        .auto-style16 {
            width: 100%;
        }
        .auto-style17 {
            text-align: right;
            width: 813px;
        }
        .auto-style18 {
            font-weight: bold;
            background-color: #800000;
            margin-left: 0px;
            color: #FFFFFF;
        }
        .auto-style19 {
            text-align: right;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style8">
            <strong>
            <table class="auto-style16">
                <tr>
                    <td class="auto-style17">
            <strong><span class="auto-style2">System Admin Login</span></strong></td>
                    <td class="auto-style19">
                        <asp:Button ID="Button2" runat="server" CssClass="auto-style18" OnClick="Button2_Click" Text="Back Home" Width="107px" CausesValidation="false" />
                    </td>
                </tr>
            </table>
            </strong></div>
        <table class="auto-style3" align="right">
            <tr>
                <td class="auto-style4"><strong>
                    <asp:Label ID="Label1" runat="server" CssClass="auto-style7" Text="SYS User ID"></asp:Label>
                    </strong>&nbsp;</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox1" runat="server" Height="31px" Width="194px"></asp:TextBox>
                </td>
                <td class="auto-style14">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" CssClass="auto-style15" ErrorMessage="Enter ID!"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style11"><strong>
                    <asp:Label ID="Label2" runat="server" CssClass="auto-style7" Text="Sys Password"></asp:Label>
                    </strong></td>
                <td class="auto-style12">
                    <asp:TextBox ID="TextBox2" runat="server" Height="33px" Width="194px" TextMode="Password"></asp:TextBox>
                </td>
                <td class="auto-style13">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" CssClass="auto-style15" ErrorMessage="Enter Password!"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style10" Height="43px" OnClick="Button1_Click" Text="Login" Width="96px" />
                    </strong></td>
                <td class="auto-style14">&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
