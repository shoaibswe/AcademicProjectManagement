<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="crview.aspx.cs" Inherits="DotNetProjectManagement.crview" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            width: 100%;
            height: 542px;
            background-color: #336699;
        }
        .auto-style3 {
            width: 414px;
        }
        .auto-style4 {
            font-size: large;
            color: #FFFFFF;
            background-color: #003300;
        }
        .auto-style5 {
            color: #FFFFFF;
            font-weight: bold;
            font-size: medium;
            background-color: #009933;
        }
        .auto-style6 {
            margin-left: 23px;
        }
        .auto-style7 {
            text-align: center;
            color: #FFFFFF;
            font-size: x-large;
            background-color: #3333CC;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style7">



            <strong>Hello CR
            <asp:Label ID="Label1" runat="server"></asp:Label>
            </strong>



        </div>
        <table class="auto-style2">
            <tr>
                <td class="auto-style3" rowspan="2">
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="pid" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." ForeColor="#333333" GridLines="None" Width="415px">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="pid" HeaderText="Project ID" ReadOnly="True" SortExpression="pid" />
                            <asp:BoundField DataField="pname" HeaderText="Project Name" SortExpression="pname" />
                            <asp:BoundField DataField="stdid" HeaderText="Students ID" SortExpression="stdid" />
                            <asp:BoundField DataField="marks" HeaderText="Marks" SortExpression="marks" />
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
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dotnetprojectConnectionString1 %>" DeleteCommand="DELETE FROM [project] WHERE [pid] = @pid" InsertCommand="INSERT INTO [project] ([pname], [stdid], [marks], [cmnt]) VALUES (@pname, @stdid, @marks, @cmnt)" ProviderName="<%$ ConnectionStrings:dotnetprojectConnectionString1.ProviderName %>" SelectCommand="SELECT [pid], [pname], [stdid], [marks], [cmnt] FROM [project]" UpdateCommand="UPDATE [project] SET [pname] = @pname, [stdid] = @stdid, [marks] = @marks, [cmnt] = @cmnt WHERE [pid] = @pid">
                        <DeleteParameters>
                            <asp:Parameter Name="pid" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="pname" Type="String" />
                            <asp:Parameter Name="stdid" Type="String" />
                            <asp:Parameter Name="marks" Type="Int32" />
                            <asp:Parameter Name="cmnt" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="pname" Type="String" />
                            <asp:Parameter Name="stdid" Type="String" />
                            <asp:Parameter Name="marks" Type="Int32" />
                            <asp:Parameter Name="cmnt" Type="String" />
                            <asp:Parameter Name="pid" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox1" runat="server" Height="26px" Width="167px"></asp:TextBox>
&nbsp;&nbsp; <strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style5" Height="30px" Text="Search Project" Width="135px" />
                    </strong></td>
            </tr>
            <tr>
                <td>
                    <div class="auto-style1">
                        <asp:GridView ID="GridView2" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" CssClass="auto-style6" DataKeyNames="pid" DataSourceID="SqlDataSource2" Height="243px" Width="436px">
                            <Columns>
                                <asp:BoundField DataField="pid" HeaderText="pid" InsertVisible="False" ReadOnly="True" SortExpression="pid" />
                                <asp:BoundField DataField="pname" HeaderText="pname" SortExpression="pname" />
                                <asp:BoundField DataField="stdid" HeaderText="stdid" SortExpression="stdid" />
                                <asp:BoundField DataField="marks" HeaderText="marks" SortExpression="marks" />
                            </Columns>
                            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#FFF1D4" />
                            <SortedAscendingHeaderStyle BackColor="#B95C30" />
                            <SortedDescendingCellStyle BackColor="#F1E5CE" />
                            <SortedDescendingHeaderStyle BackColor="#93451F" />
                        </asp:GridView>
                    </div>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:dotnetprojectConnectionString1 %>" DeleteCommand="DELETE FROM [project] WHERE [pid] = @pid" InsertCommand="INSERT INTO [project] ([pname], [stdid], [marks]) VALUES (@pname, @stdid, @marks)" SelectCommand="SELECT [pid], [pname], [stdid], [marks] FROM [project] WHERE ([pname] LIKE '%' + @pname + '%')" UpdateCommand="UPDATE [project] SET [pname] = @pname, [stdid] = @stdid, [marks] = @marks WHERE [pid] = @pid">
                        <DeleteParameters>
                            <asp:Parameter Name="pid" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="pname" Type="String" />
                            <asp:Parameter Name="stdid" Type="String" />
                            <asp:Parameter Name="marks" Type="Int32" />
                        </InsertParameters>
                        <SelectParameters>
                            <asp:ControlParameter ControlID="TextBox1" Name="pname" PropertyName="Text" Type="String" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="pname" Type="String" />
                            <asp:Parameter Name="stdid" Type="String" />
                            <asp:Parameter Name="marks" Type="Int32" />
                            <asp:Parameter Name="pid" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style4" OnClick="Button1_Click" Text="Logout" />
                    </strong></td>
            </tr>
        </table>
    </form>
</body>
</html>
