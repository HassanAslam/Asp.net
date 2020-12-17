<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PlaceOrder.aspx.cs" Inherits="EShopping.PlaceOrder" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table width="80%" align="center" bgcolor="#6699FF" cellpadding="10px" 
            cellspacing="5px">
    <tr>
    <td align="center" colspan="2" valign="middle">
        <asp:Label ID="Label1" runat="server" Text="Card Details" Font-Bold="True" 
            Font-Size="XX-Large"></asp:Label>
    </td>
    </tr>
    <tr align="center" valign="middle">
    <td align="center" valign="middle">
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" Placeholder="First Name"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ErrorMessage="*Required" ControlToValidate="TextBox1" 
            Font-Bold="True" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
        
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ErrorMessage="*Must be Characters" ControlToValidate="TextBox1" 
            Display="Dynamic" SetFocusOnError="True" 
            ValidationExpression="^([A-z][A-Za-z]*\s*[A-Za-z]*)$" Font-Bold="True" 
            ForeColor="Red"></asp:RegularExpressionValidator>
    </td>
    <td align="center" valign="middle">
        &nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server" Placeholder="Last Name"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ErrorMessage="*Required" ControlToValidate="TextBox2" Display="Dynamic" 
            ForeColor="Red" Font-Bold="True"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
            ErrorMessage="*Must be characters" ControlToValidate="TextBox2" 
            ForeColor="Red" ValidationExpression="^([A-z][A-Za-z]*\s*[A-Za-z]*)$" 
            Font-Bold="True"></asp:RegularExpressionValidator>
    </td>
    </tr>
    <tr align="center" valign="middle">
    <td align="center" colspan="2" valign="middle">
        <asp:Image ID="Image1" runat="server" Height="144px" 
            ImageUrl="~/images/card.jpg" Width="305px" />
    </td>
    </tr>
    <tr align="center" valign="middle">
    <td align="center" valign="middle" colspan="2">
        <asp:Label ID="Label2" runat="server" Text="CARD NUMBER" Font-Bold="True" 
            Font-Size="Large" ForeColor="Black"></asp:Label>
    </td>
    </tr>
    <tr align="center" valign="middle">
    <td align="center" colspan="2" valign="middle">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ErrorMessage="*Required" Display="Dynamic" 
            ControlToValidate="TextBox3" SetFocusOnError="True" Font-Bold="True" 
            ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
            ErrorMessage="Card No. Must be 16 Digits" ControlToValidate="TextBox3" 
            SetFocusOnError="True" ValidationExpression="[0-9]{16}" Font-Bold="True" 
            ForeColor="Red"></asp:RegularExpressionValidator>
    </td>
    </tr>
    <tr align="center" valign="middle">
    <td align="center" valign="middle">
        <asp:Label ID="Label3" runat="server" Text="Expiry Date"></asp:Label>
    </td>
    <td align="center" valign="middle">
        <asp:Label ID="Label4" runat="server" Text="CVV"></asp:Label>
    </td>
    </tr>
    <tr align="center" valign="middle"><td align="center" valign="middle">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox4" runat="server" Placeholder="MM/YY" Height="29px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
            ErrorMessage="Expiry Date is Empty" ControlToValidate="TextBox4"></asp:RequiredFieldValidator>
    </td>
    <td align="center" valign="middle">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox5" runat="server" Placeholder="3 Digits" Height="29px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
            ErrorMessage="*CVV is Empty" ControlToValidate="TextBox5" Display="Dynamic"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
            ErrorMessage="*CVV must be 3 Digits" ControlToValidate="TextBox5" 
            ForeColor="Red" ValidationExpression="[0-9]{3}"></asp:RegularExpressionValidator>
    </td>
    </tr>
    <tr>
    <td align="center" valign="middle" colspan="2">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox6" runat="server" TextMode="MultiLine" Height="58px" 
            Width="321px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
            ErrorMessage="RequiredFieldValidator" ControlToValidate="TextBox6" 
            Display="Dynamic" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>

    </td>
    </tr>
   
    <tr>
    <td align="center" valign="middle" colspan="2">
        <asp:Button ID="Button2" runat="server" Text="Submit" BackColor="Black" 
            BorderColor="#666666" Font-Bold="True" ForeColor="White" Height="32px" 
            onclick="Button2_Click" Width="90px" />
    </td>
    </tr>
    <tr>
    <td colspan="2">
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
    </td>
    </tr>
    <tr>
    <td align="center" valign="middle" colspan="2">
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Cart.aspx">Previous Page</asp:HyperLink>
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Home.aspx">Home Page</asp:HyperLink>
    </td>
    </tr>
    </table>
    </div>
    </form>
</body>
</html>
