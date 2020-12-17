<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="EShopping.Registration" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table width="80%" cellpadding="10%" cellspacing="20%" align="center" 
            bgcolor="#6699FF" title="Registeration">
    <tr>
    <td colspan="2" align="center">
    <h1><b>Register</b></h1>
    </td>
    </tr>
    <tr>
    <td>
    <p align="center"><b>First Name</b></p>
    </td>
    <td>
        <asp:TextBox ID="txt1" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ErrorMessage="*Can Not be Null" Display="Dynamic" SetFocusOnError="True" 
            ControlToValidate="txt1" ForeColor="Red"></asp:RequiredFieldValidator>
    </td>
    </tr>
    <tr><td><p align="center"><b>Last Name</b></p></td>
    <td>
        <asp:TextBox ID="txt2" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ErrorMessage="*Can Not be Null" SetFocusOnError="True" 
            ControlToValidate="txt2" ForeColor="Red"></asp:RequiredFieldValidator>
    </td>
    </tr>
    <tr><td><p align="center"><b>Email_ID</b></p></td>
    <td>
        <asp:TextBox ID="txt3" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ErrorMessage="*Can Not be Null" Display="Dynamic" ControlToValidate="txt3" 
            SetFocusOnError="True" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ErrorMessage="*Enter Valid Email" ControlToValidate="txt3" ForeColor="Red" 
            SetFocusOnError="True" 
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
            Display="Dynamic"></asp:RegularExpressionValidator>

        </td>
    </tr>
    <tr><td align="center">
    <b>Gender</b>
    </td>
    <td>
        <asp:DropDownList ID="DDL1" runat="server">
            <asp:ListItem>Male</asp:ListItem>
            <asp:ListItem>Female</asp:ListItem>
        </asp:DropDownList>
    </td>
    </tr>
    <tr>
    <td align="center">
    <b>Address</b>
    </td>
    <td> 
        <asp:TextBox ID="txt4" runat="server" TextMode="MultiLine"></asp:TextBox>
    </td>
    </tr>
    <tr>
    <td align="center">
    <b>Phone no.</b>
    </td>
    <td>
        <asp:TextBox ID="txt5" runat="server" TextMode="Phone"></asp:TextBox>
        </td>
    </tr>
    <tr>
    <td align="center"><b>Password</b></td>
    <td>  
        <asp:TextBox ID="txt6" runat="server" TextMode="Password"></asp:TextBox>
       
    </td>
    </tr>
    <tr>
    <td align="center"><b>Confirm Password</b></td>
    <td>
        <asp:TextBox ID="txt7" runat="server" TextMode="Password"></asp:TextBox>
         <asp:CompareValidator ID="CompareValidator1" runat="server" 
            ErrorMessage="*Password Mismatch" ControlToCompare="txt6" 
            ControlToValidate="txt7" Display="Dynamic" ForeColor="Red" 
            SetFocusOnError="True"></asp:CompareValidator>
    </td>
    </tr>
    <tr align="center" valign="middle">
    <td colspan="2" align="center">
        <asp:Button ID="Button1" runat="server" Text="Register" BorderColor="Red" 
            BorderStyle="Solid" ForeColor="Black" ToolTip="Register" 
            BackColor="#0099FF" onclick="Button1_Click" Width="100px" />
        <asp:Label ID="lbl1" runat="server"></asp:Label>
        <asp:Button ID="Button2" runat="server" Text="Home" PostBackUrl="~/Home.aspx" 
            CausesValidation="False" />
    </td>
    </tr>
    <tr>
    <td align="right" colspan="2"><h4><b>Already Have an Account</b></h4>
        <asp:LinkButton ID="LinkButton1" runat="server" ToolTip="Login" 
            onclick="LinkButton1_Click" PostBackUrl="~/UserLogin.aspx" 
            CausesValidation="False">Click here to LOGIN</asp:LinkButton>
    </td>
    </tr>
    
    </table>
    </div>
    </form>
</body>
</html>
