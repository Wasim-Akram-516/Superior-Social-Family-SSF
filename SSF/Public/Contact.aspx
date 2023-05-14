<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
       <table style="width:100%;text-align: center; color:White" border="0">
        <tr>
            <td colspan="2"><img style="border-radius: 50%"  src="../Styles/Images/Logo.jpg" alt="Logo"/></td>
        </tr>
        <tr>
            <th colspan="2"><h1 style="font-size: 45px; color: white;">Contact US</h1></th>
        </tr>
        <tr>
            <td colspan="2">
                <h3 style="font-size: xx-large; color: #4CAF50;">Supeior University, Bhalwal. <br>
                Phone: +92 302 7018278 <br>
                Email: mr.saim516@gmail.com</h3></td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="tblName" runat="server" Text="Name:"></asp:Label>
                <asp:RequiredFieldValidator ID="reqName" runat="server" 
                    ControlToValidate="txtName" ErrorMessage="*" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:TextBox ID="txtName" runat="server" ></asp:TextBox>
            </td>
            
            <td>
                <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label><br />
                <asp:TextBox ID="txtEmail" runat="server" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="lblmessage" runat="server" Text="Your Message:"></asp:Label>
                <asp:RequiredFieldValidator ID="reqMessage" runat="server" 
                    ControlToValidate="txtMessage" ErrorMessage="*" Font-Bold="True" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:TextBox  ID="txtMessage" runat="server" Height="100px" 
                    TextMode="MultiLine" Width="50%"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2">
            <asp:Button ID="btnClear" runat="server" Text="CLEAR" 
                    BackColor="#f44336" BorderColor="#f44336" ForeColor="White" Height="50px" 
                    Width="25%" onclick="btnClear_Click" />
                <asp:Button ID="btnSend" runat="server" onclick="Button1_Click" Text="SEND" 
                    BackColor="#4CAF50" BorderColor="#4CAF50" ForeColor="White" Height="50px" 
                    Width="25%" />
            </td>
        </tr>
    </table>
    
</asp:Content>

