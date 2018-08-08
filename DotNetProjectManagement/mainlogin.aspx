/*@Author: Shoaib Rahman
Daffodil Int University
*/
 

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="mainlogin.aspx.cs" Inherits="DotNetProjectManagement.mainlogin" %>

<!DOCTYPE html>
    
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        body {
    background-image:url('../pic.jpg');
    background-repeat:no-repeat;
    background-attachment:fixed;
}
        .auto-style3 {
            height: 44px;
            text-align: center;
            background-color: #000000;
            color: #FFFFFF;
            font-size: xx-large;
        }
        .auto-style4 {
            width: 60%;
            height: 351px;
        }
        .auto-style5 {
            width: 408px;
            text-align: center;
            background-color: #660033;
        }
        .auto-style7 {
            font-size: medium;
            font-weight: bold;
            color: #FFFFFF;
            background-color: #000099;
        }
        .auto-style8 {
            text-align: center;
            background-color: #660033;
        }
        .auto-style11 {
            text-align: left;
            width: 159px;
        }
        .auto-style12 {
            text-align: left;
        }
        .auto-style13 {
            width: 100%;
            text-align: right;
            margin-bottom: 0px;
        }
        .auto-style14 {
            height: 23px;
            text-align: right;
        }
        .auto-style15 {
            color: #FFFFFF;
            background-color: #FF00FF;
            margin-top: 23px;
        }
        .auto-style16 {
            text-align: center;
        }
        .auto-style20 {
            color: #FFCCFF;
            font-size: large;
        }
    </style>
</head>
<body style="height: 538px">
    <form id="form1" runat="server">
        <h1 class="auto-style3" style="font-weight: 700; ">.Net Project Management</h1>
        <table align="center" class="auto-style4">
            <tr>
                <td class="auto-style5">
                    <strong>
                    <br />
                    </strong>
                    <div class="auto-style12">
                        <strong>
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" CssClass="auto-style20" >
                        <asp:ListItem>CR</asp:ListItem>
                        <asp:ListItem Value="General_Student">General Student</asp:ListItem>
                    </asp:RadioButtonList>
                        </strong>
                    </div>
                    <strong>
                    <br />
                    <asp:Button ID="Button2" runat="server" Height="66px" Text="Student Login" Width="132px" CssClass="auto-style7" OnClick="Button2_Click1" />
                    <br />
                    </strong>
                </td>
                <td class="auto-style8">
                    <strong>
                    <div class="auto-style11">
                        <strong>
                        <table class="auto-style13">
                            <tr>
                                <td class="auto-style14"></td>
                            </tr>
                        </strong>
                    </strong>
                        </table>
                    <strong>
                        <asp:RadioButtonList ID="RadioButtonList2" runat="server" AutoPostBack="True" CssClass="auto-style20" Width="158px" OnSelectedIndexChanged="RadioButtonList2_SelectedIndexChanged">
                            <asp:ListItem>Teacher</asp:ListItem>
                            <asp:ListItem Value="System_Admin">System Admin</asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                    <br />
                    </strong>
                    <asp:Button ID="Button3" runat="server" Height="62px" Text="Teacher Login" Width="133px" CssClass="auto-style7" OnClick="Button3_Click" />
                </td>
            </tr>
        </table>
        <p class="auto-style16">
                    <strong>
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style15" Height="36px" OnClick="Button4_Click" Text="exit portal" Width="145px" />
                    </strong>
                    </p>
    </form>
</body>
</html>
