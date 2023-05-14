<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="Update.aspx.cs" Inherits="Admin_Update" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
        <table style="width:100%;margin:auto; text-align:center;color:White" border="0">
            <tr>
                <td>
                    <img style="text-align: center; border-radius: 50%" src="../Styles/Images/Logo.jpg" alt="Logo" /></td>
            </tr>
            <tr>
                <td>
                    <h1>Update Users|Admin</h1>
                </td>
            </tr>
            <tr>
                <td align="center">
                    <br />
                    <br />
                    <asp:GridView ID="GridView1" runat="server" 
                        AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ProfileID" 
                        DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" 
                        Height="16px" Width="494px">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="ProfileID" HeaderText="Profile ID" 
                                InsertVisible="False" ReadOnly="True" SortExpression="ProfileID" />
                            <asp:BoundField DataField="fkRegNo" HeaderText="Registration No." 
                                SortExpression="fkRegNo" />
                            <asp:BoundField DataField="Username" HeaderText="Username" 
                                SortExpression="Username" />
                            <asp:TemplateField HeaderText="Status">
                                <ItemTemplate>
                                    <asp:CheckBox ID="chkStatus" runat="server" />
                                </ItemTemplate>
                            </asp:TemplateField>
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
                    </asp:GridView><br />
                    <asp:Button ID="Button1" runat="server" BackColor="#4CAF50" 
                        BorderColor="#4CAF50" Font-Bold="True" ForeColor="White" Height="40px" 
                        onclick="Button1_Click1" Text="Change Status" Width="20%" />
                    <br />
                    <asp:Label ID="lblStatus" runat="server" ForeColor="White"></asp:Label>
                    <br />
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\SSFdb.mdf;Integrated Security=True;User Instance=True" 
                        ProviderName="System.Data.SqlClient" 
                        
                        SelectCommand="SELECT [ProfileID], [fkRegNo], [Username], [Status] FROM [tblProfiles]">
                    </asp:SqlDataSource>
                </td>
            </tr>
         </table>
          
</asp:Content>

