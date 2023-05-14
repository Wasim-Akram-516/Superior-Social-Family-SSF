<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="ViewMessages.aspx.cs" Inherits="Admin_ViewMessages" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%;text-align:center;color:white">
        <tr>
            <td>
                <img style="border-radius:50%" src="../Styles/Images/Logo.jpg" alt="Logo" />
            </td>
        </tr>
        <tr>
            <td>
                <h1>Messages|Admin</h1>
            </td>
        </tr>
        <tr>
            <td align=center>
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                    AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ContactID" 
                    DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" 
                    Width="797px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="ContactID" HeaderText="ContactID" 
                            InsertVisible="False" ReadOnly="True" SortExpression="ContactID" />
                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                        <asp:BoundField DataField="Message" HeaderText="Message" 
                            SortExpression="Message" />
                        <asp:BoundField DataField="Dated" HeaderText="Dated" SortExpression="Dated" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\SSFdb.mdf;Integrated Security=True;User Instance=True" 
                    ProviderName="System.Data.SqlClient" 
                    SelectCommand="SELECT * FROM [tblContact] ORDER BY [ContactID] DESC"></asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

