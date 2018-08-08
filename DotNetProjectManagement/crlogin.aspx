<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="crlogin.aspx.cs" Inherits="DotNetProjectManagement.crlogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <style>
        body{
            background-image:url("pic4.jpg");
        }
    </style>
    <title></title>
    <style type="text/css">
        .auto-style2 {
            color: #FFFFFF;
            font-size: x-large;
            background-color: #660033;
        }
        .auto-style3 {
            text-align: center;
            background-color: #660033;
            width: 1426px;
            height: 30px;
        }
        .auto-style4 {
            width: 51%;
            height: 275px;
            background-color: #990099;
            margin-top: 140px;
        }
        .auto-style5 {
            width: 127px;
            text-align: right;
            height: 74px;
        }
        .auto-style8 {
            width: 128px;
            height: 122px;
            text-align: left;
        }
        .auto-style9 {
            color: #FF0066;
            width: 128px;
            height: 131px;
            text-align: left;
        }
        .auto-style12 {
            height: 388px;
            width: 1429px;
            background-color: #6699FF;
        }
        .auto-style13 {
            width: 127px;
            text-align: right;
            height: 122px;
            font-size: large;
        }
        .auto-style14 {
            width: 133px;
            height: 122px;
        }
        .auto-style15 {
            width: 127px;
            text-align: right;
            height: 131px;
            font-size: large;
        }
        .auto-style16 {
            width: 133px;
            height: 131px;
        }
        .auto-style17 {
            color: #FFFFFF;
            background-color: #FF0000;
        }
        .auto-style18 {
            color: #FFFFFF;
            font-weight: bold;
            font-size: large;
            background-color: #0000CC;
            margin-left: 0px;
        }
        .auto-style19 {
            height: 74px;
            width: 128px;
        }
        .auto-style20 {
            height: 74px;
            text-align: center;
        }
        .auto-style21 {
            text-align: right;
        }
        .auto-style22 {
            font-weight: bold;
            color: #FFFFFF;
            background-color: #993333;
        }
    </style>
</head>
<body style="height: 383px; width: 1167px;">
    <form id="form1" runat="server" class="auto-style12">
        <div class="auto-style21">
        <div class="auto-style3">
            <strong><span class="auto-style2">CR Login Page</span></strong></div>
        <table align="center" class="auto-style4">
            <tr>
                <td class="auto-style13"><strong>CR ID</strong></td>
                <td class="auto-style14">
                    <asp:TextBox ID="TextBox1" runat="server" Height="33px" Width="242px"></asp:TextBox>
                </td>
                <td class="auto-style8"><strong>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" CssClass="auto-style17" ErrorMessage="Enter your ID!"></asp:RequiredFieldValidator>
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style15"><strong>CR Password</strong></td>
                <td class="auto-style16">
                    <asp:TextBox ID="TextBox2" runat="server" Height="33px" TextMode="Password" Width="241px"></asp:TextBox>
                </td>
                <td class="auto-style9"><strong>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" CssClass="auto-style17" ErrorMessage="Enter A Password!"></asp:RequiredFieldValidator>
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style5"></td>
                <td class="auto-style20"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style18" Height="31px" OnClick="Button1_Click" Text="Login" Width="109px" />
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style22" Height="31px" OnClick="Button2_Click1" Text="Home" Width="67px" CausesValidation="false"/>
                    </strong></td>
                <td class="auto-style19"></td>
            </tr>
        </table>
        </div>
    </form>
</body>
</html>
