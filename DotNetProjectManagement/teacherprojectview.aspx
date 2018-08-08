 <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="teacherprojectview.aspx.cs" Inherits="DotNetProjectManagement.teacherprojectview" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <style>
        body{
            background-image:url("pic.jpg");
        }
    </style>
    <title></title>
    <style type="text/css">
       
        .auto-style1 {
            text-align: center;
            background-color: #000000;
        }
        .auto-style2 {
            color: #FFFFFF;
            background-color: #000000;
        }
        .auto-style3 {
            margin-top: 3px;
        }
        .auto-style4 {
            font-size: xx-large;
        }
        .auto-style5 {
            width: 36%;
            height: 242px;
            margin-left: 0px;
        }
        .auto-style6 {
            text-align: right;
        }
        .auto-style7 {
            margin-left: 0px;
        }
        .auto-style8 {
            width: 100%;
        }
        .auto-style9 {
            text-align: center;
        }
        .auto-style10 {
            color: #FFFFFF;
            font-weight: bold;
            font-size: large;
            background-color: #000066;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <span class="auto-style2"><span class="auto-style4">Hello
            <asp:Label ID="Label6" runat="server"></asp:Label>
            !</span><br class="auto-style4" />
            </span></div>
            <table align="right" class="auto-style5">
                <tr>
                    <td class="auto-style6">
                        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                        <asp:Button ID="Button3" runat="server" Text="Search Here" />
                        <br />
                        <asp:GridView ID="GridView3" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="pid" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" CssClass="auto-style7" Height="521px" Width="53px">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:CommandField ShowEditButton="True" />
                                <asp:BoundField DataField="pid" HeaderText="Proj ID" ReadOnly="True" SortExpression="pid" />
                                <asp:BoundField DataField="pname" HeaderText="Proj Name" SortExpression="pname" />
                                <asp:BoundField DataField="stdid" HeaderText="Student ID" SortExpression="stdid" />
                                <asp:BoundField DataField="marks" HeaderText="Marks" SortExpression="marks" />
                                <asp:BoundField DataField="cmnt" HeaderText="Comment" SortExpression="cmnt" />
                            </Columns>
                            <EditRowStyle BackColor="#7C6F57" />
                            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#E3EAEB" />
                            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#F8FAFA" />
                            <SortedAscendingHeaderStyle BackColor="#246B61" />
                            <SortedDescendingCellStyle BackColor="#D4DFE1" />
                            <SortedDescendingHeaderStyle BackColor="#15524A" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dotnetprojectConnectionString1 %>" DeleteCommand="DELETE FROM [project] WHERE [pid] = @pid" InsertCommand="INSERT INTO [project] ([pname], [stdid], [marks], [cmnt]) VALUES (@pname, @stdid, @marks, @cmnt)" SelectCommand="SELECT [pid], [pname], [stdid], [marks], [cmnt] FROM [project] WHERE ([pname] LIKE '%' + @pname + '%') ORDER BY [stdid]" UpdateCommand="UPDATE [project] SET [pname] = @pname, [stdid] = @stdid, [marks] = @marks, [cmnt] = @cmnt WHERE [pid] = @pid">
                            <DeleteParameters>
                                <asp:Parameter Name="pid" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="pname" Type="String" />
                                <asp:Parameter Name="stdid" Type="Int32" />
                                <asp:Parameter Name="marks" Type="Int32" />
                                <asp:Parameter Name="cmnt" Type="String" />
                            </InsertParameters>
                            <SelectParameters>
                                <asp:ControlParameter ControlID="TextBox7" Name="pname" PropertyName="Text" Type="String" />
                            </SelectParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="pname" Type="String" />
                                <asp:Parameter Name="stdid" Type="Int32" />
                                <asp:Parameter Name="marks" Type="Int32" />
                                <asp:Parameter Name="cmnt" Type="String" />
                                <asp:Parameter Name="pid" Type="Int32" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </td>
                </tr>
            </table>
        <br />
           <asp:GridView ID="GridView1" runat="server" Height="528px" Width="823px" AutoGenerateColumns="False" OnRowEditing="GridView1_RowEditing" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowUpdating="GridView1_RowUpdating" CssClass="auto-style3" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
              <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:TemplateField HeaderText="Project ID">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("pid") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("pid") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Project Name">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("pname") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("pname") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Student ID">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("stdid") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("stdid") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Marks">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("marks") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("marks") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Comment">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("cmnt") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("cmnt") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:CommandField ShowEditButton="True" />
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
    &nbsp;
            
        <table class="auto-style8">
            <tr>
                <td class="auto-style9">
                    <strong>
                    <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Logout" CssClass="auto-style10" Height="45px" Width="76px" />
                    </strong>
                </td>
            </tr>
        </table>
            
    </form>
</body>
</html>
