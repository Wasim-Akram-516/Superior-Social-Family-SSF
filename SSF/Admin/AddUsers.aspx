<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="AddUsers.aspx.cs" Inherits="Admin_AddUsers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;text-align: center; color:White" border="0">
       
        <tr>
            <td colspan="4"><img style="border-radius: 50%" src="../Styles/Images/Logo.jpg" alt="Logo"/></td>
        </tr>
        <tr>
            <th colspan="4"><h1>Add Users|Admin</h1></th>
        </tr>
         <tr>
            <td colspan="2">
                <asp:Label ID="lblRegNo" runat="server" Text="Registration No:"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtRegNo" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:TextBox ID="txtRegNo" runat="server" AutoPostBack="True" 
                    ontextchanged="txtRegNo_TextChanged"></asp:TextBox>
            </td>
            <td colspan="2">
              
                <asp:Label ID="lblGender" runat="server" Text="Gender:"></asp:Label><br /><br />

              
                <asp:RadioButton ID="rdoMale" runat="server" GroupName="Gender" Text="Male" />
                <asp:RadioButton ID="rdoFemale" runat="server" GroupName="Gender" 
                    Text="Female" />

              
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="lblUserType" runat="server" Text="User Type:"></asp:Label><br /><br />
                <asp:RadioButton ID="rdoStudent" runat="server" Text="Student" 
                    GroupName="UserType" />
                <asp:RadioButton ID="rdoTeacher" runat="server" Text="Teacher" 
                    GroupName="UserType" />
            </td>
            <td colspan="2">
                <asp:Label ID="lblFirstname" runat="server" Text="First Name:"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="txtFirstName" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="lblLastname" runat="server" Text="Last name:"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtLastName" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
            </td>
            <td colspan="2">
                <asp:Label ID="lblEmail" runat="server" Text="Email:"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="txtEmail" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            </td>
        </tr>
         <tr>
            <td colspan="2">
                <br />

                <asp:DropDownList ID="dropDepartment" runat="server" Height="50px" Width="50%">
                    <asp:ListItem>Department</asp:ListItem>
                    <asp:ListItem>CS &amp; IT</asp:ListItem>
                    <asp:ListItem>English</asp:ListItem>
                    <asp:ListItem>Urdu</asp:ListItem>
                    <asp:ListItem>Math</asp:ListItem>
                    <asp:ListItem>Islamic Studies</asp:ListItem>
                    <asp:ListItem>Commerce</asp:ListItem>
                </asp:DropDownList>

            </td>
            <td colspan="2">
                <br />
                <asp:DropDownList ID="dropClass" runat="server" Height="50px" Width="50%">
                    <asp:ListItem>Class</asp:ListItem>
                    <asp:ListItem>BS CS</asp:ListItem>
                    <asp:ListItem>BS IT</asp:ListItem>
                    <asp:ListItem>ADP CS</asp:ListItem>
                    <asp:ListItem>ADP Commerce</asp:ListItem>
                    <asp:ListItem>BS English</asp:ListItem>
                    <asp:ListItem>BS Math</asp:ListItem>
                    <asp:ListItem>MA English</asp:ListItem>
                    <asp:ListItem>MA Math</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td colspan="4">


                <asp:Button ID="btnClear" runat="server" BackColor="#F44336"
                    BorderColor="#F44336" Font-Size="Large" ForeColor="White" Height="50px"
                    Text="CLEAR" Width="25%" OnClick="btnClear_Click" />


                <asp:Button ID="btnAdd" runat="server" Text="Add" BackColor="#4CAF50"
                    BorderColor="#4CAF50" ForeColor="White" Height="50px"
                    Width="25%" Font-Bold="False"
                    Font-Size="Large" OnClick="btnAdd_Click" />
            </td>
        </tr>
    
    </table>
</asp:Content>

