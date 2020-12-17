<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserLogin.aspx.cs" Inherits="EShopping.UserLogin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <script type="text/javascript"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table align="center" bgcolor="#3366FF" cellpadding="20%" cellspacing="20%" 
            width="60%">
    <tr align="center" valign="middle">
    <td align="center" colspan="2"><h1><b>User Login</b></h1></td>
    </tr>
    <tr>
    <td align="center" valign="middle">
    <h3><b>Email ID</b></h3>
    </td>
    <td>
        <asp:TextBox ID="txt1" runat="server"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ErrorMessage="*Enter Valid Email" Display="Dynamic" 
            ControlToValidate="txt1" ForeColor="Red" 
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
            SetFocusOnError="True"></asp:RegularExpressionValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ErrorMessage="*Can not Null" ControlToValidate="txt1" Display="Dynamic" 
            ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
    </td>
    </tr>
    <tr>
    <td align="center" valign="middle">
    <h3><b>Password</b></h3>
    </td>
    <td>
        <asp:TextBox ID="txt2" runat="server" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ErrorMessage="*Can not Null" ControlToValidate="txt2" Display="Dynamic" 
            ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
    </td>
    </tr>
    <tr>
    <td align="center" colspan="2" valign="middle">
        <asp:Button ID="Button1" runat="server" Text="Login" onclick="Button1_Click" 
            ToolTip="Login" Width="120px" />
        <asp:Label ID="lbl1" runat="server" ></asp:Label>
        
    </td>
    </tr>
    <tr>
    <td>
    <h4><b>Dont Have Account</b></h4>
        <asp:LinkButton ID="LinkButton1" runat="server" 
            PostBackUrl="~/Registration.aspx" ToolTip="Register" CausesValidation="False" Font-Bold="True" Font-Size="Large" ForeColor="Black">Click Here to Register  </asp:LinkButton>
    </td>
    </tr>
    </table>
    </div>
    </form>
</body>
</html>
