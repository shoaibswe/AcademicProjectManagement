<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="studentprojectview.aspx.cs" Inherits="DotNetProjectManagement.studentprojectview" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            color: #FFFFFF;
            background-color: #000000;
        }
                   
        .auto-style3 {
            margin-left: 338px;
        }
        .auto-style4 {
            width: 335px;
            text-align: right;
        }
        .auto-style5 {
            width: 335px;
        }
        .auto-style6 {
            font-size: xx-large;
        }
        .auto-style11 {
            text-align: center;
        }
        .auto-style12 {
            width: 100%;
        }
</style>
</head>
<body style="height: 669px; width: 916px;">
   
    <form id="form1" runat="server">
        <div class="auto-style1">
            <strong><span class="auto-style6">Welcome&nbsp;
            <asp:Label ID="Label6" runat="server"></asp:Label>
&nbsp;!</span></strong></div>
        <table>
                        <style>
        body{
            background: url("pic.jpg");
       background-size: auto;
       }
                            .auto-style14 {
                                width: 469px;
                                text-align: right;
                            }
                            .auto-style15 {
                                width: 469px;
                            }
                            .auto-style16 {
                                margin-left: 0px;
                            }
                            .auto-style18 {
                                width: 338px;
                                text-align: right;
                                height: 38px;
                            }
                            .auto-style19 {
                                width: 469px;
                                text-align: right;
                                height: 38px;
                            }
                            .auto-style20 {
                                font-size: large;
                                color: #FFFFFF;
                                background-color: #006600;
                            }
                            </style>
        <table>



            <table>
            
                <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label1" runat="server" Text="Student id"></asp:Label>
                    <asp:TextBox ID="TextBox1" runat="server" Height="26px" Width="132px"></asp:TextBox>
                    </td>
                <td class="auto-style14">
                    <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style16" Height="27px" Width="144px"></asp:TextBox>
                    </td>
                   </tr>
            <tr>
                <td class="auto-style18">
                    <asp:Label ID="Label2" runat="server" Text="Project Name"></asp:Label>
                    <asp:TextBox ID="TextBox2" runat="server" Height="30px" Width="133px"></asp:TextBox>
                    </td>
                <td class="auto-style19">
                    <strong>
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style20" Height="34px" Text="Search" Width="82px" OnClick="Button4_Click" />
                    </strong>
                    </td>
                  </tr>
            <tr>
                <td class="auto-style5"> 
                    <asp:Button ID="Button1" runat="server" Text="Add" Height="29px" OnClick="Button1_Click" Width="99px" CssClass="auto-style3" />
                </td>
            </tr>
            <tr>
                <td class="auto-style5"> 
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dotnetprojectConnectionString1 %>" DeleteCommand="DELETE FROM [project] WHERE [pid] = @pid" InsertCommand="INSERT INTO [project] ([pname], [stdid], [marks], [cmnt]) VALUES (@pname, @stdid, @marks, @cmnt)" SelectCommand="SELECT [pid], [pname], [stdid], [marks], [cmnt] FROM [project] WHERE ([stdid] = @stdid)" UpdateCommand="UPDATE [project] SET [pname] = @pname, [stdid] = @stdid, [marks] = @marks WHERE [pid] = @pid">
                        <DeleteParameters>
                            <asp:Parameter Name="pid" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="pname" Type="String" />
                            <asp:Parameter Name="stdid" Type="String" />
                            <asp:Parameter Name="marks" Type="Int32" />
                            <asp:Parameter Name="cmnt" Type="String" />
                        </InsertParameters>
                        <SelectParameters>
                            <asp:SessionParameter Name="stdid" SessionField="New" Type="String" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="pname" Type="String" />
                            <asp:Parameter Name="stdid" Type="String" />
                            <asp:Parameter Name="marks" Type="Int32" />
                            <asp:Parameter Name="cmnt" Type="String" />
                            <asp:Parameter Name="pid" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                    <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" OnRowCancelingEdit="GridView3_RowCancelingEdit" OnRowEditing="GridView3_RowEditing" OnRowUpdating="GridView3_RowUpdating">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:TemplateField HeaderText="project id">
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
                            <asp:TemplateField HeaderText="Stu ID">
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
                            <asp:TemplateField HeaderText="Teacher Comment">
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
                </td>
                <td class="auto-style15"> 
                    <div class="auto-style11">
                        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="pid" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" Height="242px" Width="410px" OnSelectedIndexChanging="GridView2_SelectedIndexChanging" >
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:CommandField ShowDeleteButton="True" />
                                <asp:BoundField DataField="pid" HeaderText="pid" ReadOnly="True" SortExpression="pid" />
                                <asp:BoundField DataField="pname" HeaderText="pname" SortExpression="pname" />
                                <asp:BoundField DataField="stdid" HeaderText="stdid" SortExpression="stdid" />
                                <asp:BoundField DataField="marks" HeaderText="marks" SortExpression="marks" />
                                <asp:BoundField DataField="cmnt" HeaderText="cmnt" SortExpression="cmnt" />
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
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:dotnetprojectConnectionString1 %>" SelectCommand="SELECT * FROM [project] WHERE ([pname] LIKE '%' + @pname + '%')">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="TextBox3" Name="pname" PropertyName="Text" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </div>
                </td>
            </tr>
            </table>
            </table>
        <table class="auto-style12">
            <tr>
                <td class="auto-style11">
                    i</td>
            </tr>
    </table>
            </table>
    &nbsp;&nbsp;&nbsp;
    </form>
    
    </body>
    
</html>
