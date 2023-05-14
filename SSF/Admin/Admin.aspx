<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Protected_Admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;margin:auto; text-align:center;color:white" border="0">
            <tr>
                <td>
                    <img style="text-align: center; border-radius: 50%" src="../Styles/Images/Logo.jpg" alt="Logo" /></td>
            </tr>
            <tr>
                <td>
                    <h1>Home|Admin</h1>
                </td>
            </tr>
       <tr>
       <td>
           <asp:Label ID="lblNotification" runat="server" Text="Post Notification:"></asp:Label><br />
       <asp:TextBox ID="txtNotification" runat="server"></asp:TextBox><br />
           <asp:FileUpload ID="FileUploadPost" runat="server" />
       </td>
       </tr>
       <tr>
       <td>
           <asp:Button ID="btnPostNotification" runat="server" Text="POST" 
               BackColor="#4CAF50" BorderColor="#4CAF50" Height="50px" Width="25%" 
               ForeColor="White" onclick="btnPostNotification_Click" />
       </td></tr>
            </table>
</asp:Content>

