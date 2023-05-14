<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SignUp.aspx.cs" Inherits="SignUp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

  <table style="width:100%;text-align: center;margin:auto; color:White" border="0">
       
        <tr>
            <td colspan=2><img style="border-radius: 50%" src="../Styles/Images/Logo.jpg" alt="Logo"/></td>
        </tr>
        <tr>
            <th colspan=2><h1>Sign Up|SSF</h1></th>
        </tr>
        <tr>
        <td colspan="2">
            <asp:Label ID="Label1" runat="server" Text="Already have an account?"></asp:Label>
            <a href="Login.aspx">Login</a>
        </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblRegNo" style="text-align:right" runat="server" Text="Registration No."></asp:Label><br />
          
                <asp:TextBox ID="txtRegNo" runat="server" ontextchanged="txtRegNo_TextChanged" 
                    AutoPostBack="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblUsername" runat="server" Text="Username"></asp:Label><br />
            
                <asp:TextBox ID="txtUsername" runat="server" AutoPostBack="True" 
                    ontextchanged="txtUsername_TextChanged"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label><br />
        
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
          <tr>
            <td>
                <asp:Label ID="lblRePassword" runat="server" Text="Confirm Password"></asp:Label><br />
            
                <asp:TextBox ID="txtRePassword" runat="server" TextMode="Password" 
                    ></asp:TextBox>
                
            </td> 
            </tr>
            <tr>
            <td>
                <asp:Label ID="lblDP" runat="server" Text="Upload Profile Pic"></asp:Label><br />
            
                <asp:FileUpload ID="FileUploadDP" runat="server" />
                
            </td> 
            </tr>
            <tr>
            <td colspan="2">
            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ErrorMessage="Password don't match" ForeColor="Red" 
                    ControlToCompare="txtPassword" ControlToValidate="txtRePassword"></asp:CompareValidator>
            </td>
            </tr>
       
        <tr>
            <td colspan="2">
              <asp:Button ID="btnClear" runat="server" Text="CLEAR" 
                    BackColor="#f44336" BorderColor="#f44336" ForeColor="White" Height="56px" 
                    Width="25%" onclick="btnClear_Click"  />
            
                <asp:Button  ID="btnSignUp" runat="server"  Text="SIGN UP" BackColor="#4CAF50" 
                    BorderColor="#4CAF50" ForeColor="White" Height="56px" 
                    onclick="btnSignUp_Click1" Width="25%" />
            </td>
        </tr>
    
    </table>
  
</asp:Content> 

