<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sysview.aspx.cs" Inherits="DotNetProjectManagement.sysview" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
            <style>
        body{
            background-image:url("pic3.jpg");
        }
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            font-size: x-large;
            color: #FF3300;
            background-color: #000000;
        }
        .auto-style3 {
            width: 98%;
                    height: 8px;
                    margin-bottom: 0px;
                }
        .auto-style6 {
            margin-left: 3px;
        }
        .auto-style7 {
            margin-left: 22px;
        }
        .auto-style8 {
            margin-left: 56px;
        }
        .auto-style9 {
            margin-left: 52px;
        }
        .auto-style10 {
            font-weight: bold;
            margin-left: 35px;
                    color: #FFFFFF;
                    background-color: #003300;
                }
        .auto-style11 {
            text-align: center;
            height: 23px;
                    width: 428px;
                }
        .auto-style12 {
            text-align: right;
            width: 432px;
        }
        .auto-style13 {
            width: 99%;
            height: 236px;
                    margin-top: 0px;
                }
        .auto-style15 {
            width: 99%;
            height: 521px;
                    margin-right: 0px;
                }
        .auto-style16 {
            text-align: left;
            height: 23px;
            width: 437px;
        }
        .auto-style19 {
            font-weight: bold;
            color: #FFFFFF;
            background-color: #006600;
        }
                .auto-style20 {
                    color: #000000;
                    background-color: #FFFFFF;
                }
                .auto-style22 {
                    height: 30px;
                }
                .auto-style23 {
                    text-align: center;
                    width: 1393px;
                    background-color: #000000;
                }
                .auto-style25 {
                    margin-left: 37px;
                }
                .auto-style29 {
                    width: 184%;
                }
                .auto-style30 {
                    width: 443px;
                }
                .auto-style31 {
                    width: 100%;
                }
        .auto-style17 {
                    width: 437px;
                    text-align: left;
                }
                .auto-style21 {
                    background-color: #FFFFFF;
                }
                .auto-style28 {
                    margin-left: 26px;
                }
        .auto-style5 {
            margin-left: 8px;
        }
                .auto-style27 {
                    margin-left: 6px;
                }
                .auto-style26 {
                    margin-left: 65px;
                }
                .auto-style14 {
            font-weight: bold;
            margin-left: 0px;
                    color: #FFFFFF;
                    background-color: #003300;
                }
                .auto-style32 {
                    height: 23px;
                }
                .auto-style33 {
                    text-align: center;
                }
                .auto-style34 {
                    width: 437px;
                    text-align: center;
                }
                .auto-style36 {
                    color: #FFFFFF;
                    background-color: #006600;
                }
                .auto-style37 {
                    text-align: left;
                }
    </style>
</head>
<body style="height: 643px; width: 1006px">
    <form id="form1" runat="server">
        <div class="auto-style23">
            <strong><span class="auto-style2">Hello&nbsp;&nbsp;&nbsp;&nbsp; </span>
            <asp:Label ID="Label1" runat="server" CssClass="auto-style2"></asp:Label>
            <span class="auto-style2">&nbsp;&nbsp;&nbsp; (System Admin)</span></strong></div>
        <table class="auto-style15">
            <tr>
                <td class="auto-style12">
                    <table class="auto-style29">
                        <tr>
                            <td class="auto-style30">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style30">
                            <strong>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dotnetprojectConnectionString1 %>" DeleteCommand="DELETE FROM [Student] WHERE [stdid] = @stdid" InsertCommand="INSERT INTO [Student] ([stdid], [stdpass], [Name], [email], [Phone]) VALUES (@stdid, @stdpass, @Name, @email, @Phone)" ProviderName="<%$ ConnectionStrings:dotnetprojectConnectionString1.ProviderName %>" SelectCommand="SELECT [stdid], [stdpass], [Name], [email], [Phone] FROM [Student]" UpdateCommand="UPDATE [Student] SET [stdpass] = @stdpass, [Name] = @Name, [email] = @email, [Phone] = @Phone WHERE [stdid] = @stdid">
                        <DeleteParameters>
                            <asp:Parameter Name="stdid" Type="String" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="stdid" Type="String" />
                            <asp:Parameter Name="stdpass" Type="String" />
                            <asp:Parameter Name="Name" Type="String" />
                            <asp:Parameter Name="email" Type="String" />
                            <asp:Parameter Name="Phone" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="stdpass" Type="String" />
                            <asp:Parameter Name="Name" Type="String" />
                            <asp:Parameter Name="email" Type="String" />
                            <asp:Parameter Name="Phone" Type="String" />
                            <asp:Parameter Name="stdid" Type="String" />
                        </UpdateParameters>
                    </asp:SqlDataSource>

                            </strong>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="stdid" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." ForeColor="#333333" GridLines="None" Height="169px" Width="282px" AllowPaging="True" AllowSorting="True">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:CommandField ShowEditButton="True" />
                            <asp:BoundField DataField="stdid" HeaderText="stdid" ReadOnly="True" SortExpression="stdid" />
                            <asp:BoundField DataField="stdpass" HeaderText="stdpass" SortExpression="stdpass" />
                            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                            <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                        </Columns>
                        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                        <SortedAscendingCellStyle BackColor="#FDF5AC" />
                        <SortedAscendingHeaderStyle BackColor="#4D0000" />
                        <SortedDescendingCellStyle BackColor="#FCF6C0" />
                        <SortedDescendingHeaderStyle BackColor="#820000" />
                    </asp:GridView>
                            </td>
                            <td class="auto-style33">
                                <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource2" EmptyDataText="There are no data records to display." ForeColor="#333333" GridLines="None" Width="328px">
                                    <AlternatingRowStyle BackColor="White" />
                                    <Columns>
                                        <asp:BoundField DataField="tusr" HeaderText="tusr" SortExpression="tusr" />
                                        <asp:BoundField DataField="tpass" HeaderText="tpass" SortExpression="tpass" />
                                        <asp:BoundField DataField="tname" HeaderText="tname" SortExpression="tname" />
                                        <asp:BoundField DataField="temail" HeaderText="temail" SortExpression="temail" />
                                    </Columns>
                                    <EditRowStyle BackColor="#2461BF" />
                                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#EFF3FB" />
                                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                                </asp:GridView>
                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:dotnetprojectConnectionString1 %>" ProviderName="<%$ ConnectionStrings:dotnetprojectConnectionString1.ProviderName %>" SelectCommand="SELECT [tusr], [tpass], [tname], [temail] FROM [teacher]"></asp:SqlDataSource>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style30">
        <table class="auto-style3">
            <tr>
                <td class="auto-style11"><strong>
                    <asp:Label ID="Label2" runat="server" Text="Add Student" CssClass="auto-style36"></asp:Label>
                    </strong></td>

                    </table>
                            </td>
                            <td class="auto-style37"><strong>
                    <asp:Label ID="Label9" runat="server" Text="Add Teacher" CssClass="auto-style36"></asp:Label>
                    </strong>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style30">

                <table>
                    <tr>
                        <td>
                            <asp:Label ID="Label15" runat="server" Text="Student ID" CssClass="auto-style20"></asp:Label>
                            <asp:TextBox ID="TextBox11" runat="server" CssClass="auto-style7" Height="24px" Width="150px"></asp:TextBox>
                        </td>
                    </tr>
                        <tr>
                        <td>
                            <asp:Label ID="Label16" runat="server" Text="Password" CssClass="auto-style20"></asp:Label>
                            <asp:TextBox ID="TextBox12" runat="server" CssClass="auto-style25" Height="24px" Width="152px" TextMode="Password"></asp:TextBox>
                        </td>
                    </tr>
                                        <tr>
                        <td>
                            <asp:Label ID="Label17" runat="server" Text="Student Name" CssClass="auto-style20"></asp:Label>
                            <asp:TextBox ID="TextBox13" runat="server" CssClass="auto-style6" Height="23px" Width="153px"></asp:TextBox>
                        </td>
                    </tr>
                                        <tr>
                        <td>
                            <asp:Label ID="Label18" runat="server" Text="Email" CssClass="auto-style20"></asp:Label>
                            <asp:TextBox ID="TextBox14" runat="server" CssClass="auto-style8" Width="154px" Height="24px"></asp:TextBox>
                        </td>
                    </tr>
                                        <tr>
                        <td class="auto-style22">
                            <asp:Label ID="Label19" runat="server" Text="Phone" CssClass="auto-style20"></asp:Label>
                            <asp:TextBox ID="TextBox15" runat="server" CssClass="auto-style9" Width="154px" Height="27px"></asp:TextBox>
                        </td>
                    </tr>
                                        <tr>
                        <td>
                            <strong>
                            <asp:Button ID="Button3" runat="server" Text="Add Student" CssClass="auto-style10" Height="33px" Width="111px" OnClick="Button3_Click" />
                            </strong>
                        </td>
                    </tr>
                
                </table>
                            </td>
                            <td>
                                <table class="auto-style31">
                                    <tr>
                        <td class="auto-style17">
                            <asp:Label ID="Label10" runat="server" Text="Teacher ID" CssClass="auto-style21"></asp:Label>
                            <asp:TextBox ID="TextBox6" runat="server" CssClass="auto-style28" Height="24px" Width="150px"></asp:TextBox>
                        </td>
                                    </tr>
                                    <tr>
                        <td class="auto-style17">
                            <asp:Label ID="Label11" runat="server" Text="Default Passw" CssClass="auto-style21"></asp:Label>
                            <asp:TextBox ID="TextBox7" runat="server" CssClass="auto-style5" Height="24px" Width="150px" TextMode="Password"></asp:TextBox>
                        </td>
                                    </tr>
                                    <tr>
                        <td class="auto-style17">
                            <asp:Label ID="Label12" runat="server" Text="Teacher Name" CssClass="auto-style21"></asp:Label>
                            <asp:TextBox ID="TextBox8" runat="server" CssClass="auto-style27" Height="23px" Width="149px"></asp:TextBox>
                        </td>
                                    </tr>
                                    <tr>
                        <td class="auto-style17">
                            <asp:Label ID="Label13" runat="server" Text="Email" CssClass="auto-style21"></asp:Label>
                            <asp:TextBox ID="TextBox9" runat="server" CssClass="auto-style26" Width="148px" Height="27px"></asp:TextBox>
                        </td>
                                    </tr>
                                    <tr>
                        <td class="auto-style34">
                            <strong>
                            <asp:Button ID="Button2" runat="server" Text="Add Teacher" CssClass="auto-style14" Height="33px" Width="132px" OnClick="Button2_Click" />
                            <br />
                            </strong>
                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style32"></td>
                                    </tr>
                                    <tr>
                                        <td>
                    <strong>
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style19" Height="31px" OnClick="Button4_Click" Text="Logout" Width="74px" />
                    </strong>
                                        </td>
                                        <td>&nbsp;</td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </td>
                </table>
                <td class="auto-style24">
        
            <tr><table class="auto-style13">
                <td class="auto-style16"><strong>
                    <br />
                    <br />
                    </strong>
                </td>
                                        
                </table>
                </td>

                </form>
        </table>
        </form>
        </form>
        <p>
            &nbsp;</p>
</body>
</html>
