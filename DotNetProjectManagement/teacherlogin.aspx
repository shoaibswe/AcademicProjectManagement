<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="teacherlogin.aspx.cs" Inherits="DotNetProjectManagement.teacherlogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <style>
        body{
            background-image:url("pic2.jpg");
        }
    </style>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: x-large;
            color: #FFFFFF;
            text-align: center;
            background-color: #000000;
        }
        .auto-style2 {
            background-color: #000000;
        }
        .auto-style3 {
            width: 84%;
            height: 282px;
        }
        .auto-style4 {
            height: 151px;
            text-align: left;
        }
        .auto-style5 {
            height: 151px;
            width: 407px;
            color: #FF0000;
            text-align: right;
            font-size: medium;
        }
        .auto-style6 {
            width: 407px;
            color: #CC0000;
            height: 164px;
            text-align: right;
            font-size: medium;
        }
        .auto-style7 {
            width: 407px;
            color: #0066FF;
            height: 119px;
            text-align: right;
        }
        .auto-style8 {
            height: 164px;
            text-align: left;
        }
        .auto-style10 {
            height: 151px;
            width: 394px;
            text-align: center;
        }
        .auto-style15 {
            height: 119px;
            width: 394px;
            text-align: center;
        }
        .auto-style16 {
            height: 119px;
        }
        .auto-style17 {
            font-size: x-large;
            background-color: #006600;
            color: #FFFFFF;
        }
        .auto-style18 {
            text-align: left;
        }
        .auto-style19 {
            color: #CC0000;
        }
        .auto-style20 {
            color: #FF0000;
        }
        .auto-style21 {
            color: #990000;
            background-color: #000000;
        }
        .auto-style22 {
            color: #FF0000;
            background-color: #000000;
        }
        .auto-style23 {
            height: 164px;
            width: 394px;
            text-align: center;
        }
        .auto-style24 {
            color: #FFFFFF;
            font-weight: bold;
            background-color: #666666;
            margin-left: 0px;
        }
        .auto-style25 {
            width: 100%;
        }
        .auto-style26 {
            text-align: left;
            width: 586px;
        }
    </style>
</head>
<body style="height: 522px">
    <form id="form1" runat="server">
        <div class="auto-style18">
        <div class="auto-style1">
            <strong><table class="auto-style25">
                <tr>
                    <td class="auto-style26">
            <strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style24" Height="26px" OnClick="Button2_Click" Text="Back to Home" Width="102px" CausesValidation="false" />
                        </strong></td>
                    <td class="auto-style18">
            <strong><span class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Teacher Login</span></strong></td>
                </tr>
            </table>
            </strong></div>
        <table class="auto-style3" align="center">
            <tr>
                <td class="auto-style6"><strong>User Name</strong></td>
                <td class="auto-style23">
                    <asp:TextBox ID="TextBoxusername" runat="server" Height="34px" Width="220px" CssClass="auto-style19"></asp:TextBox>
                </td>
                <td class="auto-style8"><strong>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxusername" ErrorMessage="Enter UserName" ForeColor="Fuchsia" CssClass="auto-style21"></asp:RequiredFieldValidator>
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style5"><strong>Password</strong></td>
                <td class="auto-style10">
                    <asp:TextBox ID="TextBoxpassword" runat="server" Height="34px" Width="210px" TextMode="Password" CssClass="auto-style20"></asp:TextBox>
                </td>
                <td class="auto-style4"><strong>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxpassword" ErrorMessage="Enter Password" ForeColor="Fuchsia" CssClass="auto-style22"></asp:RequiredFieldValidator>
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style7"></td>
                <td class="auto-style15"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style17" Height="54px" OnClick="Button1_Click" Text="Login" Width="187px" />
                    </strong></td>
                <td class="auto-style16"></td>
            </tr>
            </table>
        </div>
    </form>
</body>
</html>
