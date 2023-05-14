<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AdminLogin.aspx.cs" Inherits="Admin_AdminLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
 <table style="width:100%;text-align: center;color:White" border="0">
        
        <tr>
            <td><img style="border-radius: 50%" src="../Styles/Images/Logo.jpg" /></td>
        </tr>
        <tr>
            <th colspan="2"><h1>Login|Admin</h1></th>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblUserName" runat="server" Text="Username:"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtUsername" ErrorMessage="*" ForeColor="Red" 
                    Font-Bold="True"></asp:RequiredFieldValidator>
                <br />
                <asp:TextBox ID="txtUsername" runat="server" AutoPostBack="True" 
                    ontextchanged="txtUsername_TextChanged"></asp:TextBox>
            </td>
           
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblPassword" runat="server" Text="Password:"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtPassword" ErrorMessage="*" ForeColor="Red" 
                    Font-Bold="True"></asp:RequiredFieldValidator>
                <br />
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
            </td>

        </tr>
        <tr>
            <td>
                <asp:CheckBox ID="chkAdmin" runat="server" Text="Remember Me" />
            </td>
        </tr>
        <tr>
            <td colspan="2">
            <asp:Button ID="btnClear" runat="server" Text="CLEAR" 
                    BackColor="#f44336" BorderColor="#f44336" ForeColor="White" Height="50px" 
                    Width="25%" onclick="btnClear_Click" />
                <asp:Button ID="btnLogin" runat="server" Text="LOGIN" 
                    BackColor="#4CAF50" BorderColor="#4CAF50" ForeColor="White" Height="50px" 
                    Width="25%" onclick="btnLogin_Click" />
                    
            </td>
        </tr>
    
    </table>
</asp:Content>

