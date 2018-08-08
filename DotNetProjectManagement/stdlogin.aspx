<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="stdlogin.aspx.cs" Inherits="DotNetProjectManagement.stdlogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
            <style>
        body{
            background-image:url("pic5.jpg");
        }
    <title></title>
    <style type="text/css">
        .auto-style1 { 
            font-size: xx-large;
            background-color: #000000;
            color: white;
        }
        .auto-style2 {
            width: 70%;
            height: 351px;
        }
        .auto-style5 {
            width: 205px;
            text-align: right;
            height: 26px;
            color: #0000FF;
        }
        .auto-style6 {
            height: 26px;
            }
        .auto-style7 {
            height: 26px;
            width: 92px;
            text-align: center;
        }
        .auto-style10 {
            width: 205px;
            text-align: right;
            height: 23px;
        }
        .auto-style11 {
            height: 23px;
        }
        .auto-style12 {
            width: 92px;
            height: 23px;
        }
        .auto-style13 {
            width: 205px;
            text-align: right;
            height: 46px;
            color: #00FF00;
            font-size: medium;
        }
        .auto-style14 {
            height: 46px;
        }
        .auto-style15 {
            width: 92px;
            height: 46px;
        }
        .auto-style16 {
            font-size: x-large;
            margin-left: 12px;
            margin-top: 0px;
            background-color: #3399FF;
            color: #FFFFFF;
        }
        .auto-style19 {
            width: 92px;
            height: 24px;
        }
        .auto-style20 {
            width: 205px;
            text-align: right;
            height: 24px;
        }
        .auto-style21 {
            height: 24px;
            }
        .auto-style22 {
            margin-top: 73px;
        }
        .auto-style23 {
            font-size: medium;
        }
        .auto-style24 {
            color: #FFFFFF;
            font-weight: bold;
            background-color: #666666;
        }
                .auto-style25 {
                    font-size: x-large;
                    color: white;
                    background-color: #000000;
                }
                .auto-style26 {
                    color: #00FF00;
                }
                .auto-style27 {
                    background-color: #000000;
                }
        </style>
</head>
<body style="text-align: center; color: black; ">
    <form id="form1" runat="server">
        <div class="auto-style25">
            <strong>Student Login</strong></div>
        <table align="center" class="auto-style2">
            <tr>
                <td class="auto-style5">
                    <br />
                    <br />
                    <br />
                    <span class="auto-style26">
                    <strong><span class="auto-style23">User </span></strong>ID</span></td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBoxusername" runat="server" CssClass="auto-style22" Height="36px" Width="206px"></asp:TextBox>
                </td>
                <td class="auto-style7">
                    <br />
                    <br />
                    <br />
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBoxusername" ErrorMessage="Enter Username" ForeColor="Red" CssClass="auto-style27"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style13"><strong>Password</strong></td>
                <td class="auto-style14">
                    <asp:TextBox ID="TextBoxpassword" runat="server" Height="38px" TextMode="Password" Width="205px"></asp:TextBox>
                </td>
                <td class="auto-style15">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBoxpassword" ErrorMessage="Enter Password" ForeColor="Red" CssClass="auto-style27"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style20"></td>
                <td class="auto-style21"><strong>
                    <asp:Button ID="Buttonlogin" runat="server" CssClass="auto-style16" ForeColor="Black" Height="36px" OnClick="Buttonlogin_Click" Text="Login" Width="133px" />
                    <asp:Button ID="Button1" runat="server" Height="36px" Text="Home" Width="94px" CausesValidation="false" CssClass="auto-style24" OnClick="Button1_Click1" />
                    </strong>
                </td>
                <td class="auto-style19">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10"></td>
                <td class="auto-style11"></td>
                <td class="auto-style12"></td>
            </tr>
        </table>
           </form>


  
</body>
</html>
