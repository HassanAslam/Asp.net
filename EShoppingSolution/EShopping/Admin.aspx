<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="EShopping.Admin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Panel</title>
   
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table align="center" width="100%" cellpadding="20%" cellspacing="20%">
    <tr align="center">
    <td>
    <h1><b>Welcome Admin</b></h1>
    </td>
    </tr>
    <tr>
    <td>
    
    </td>
    </tr>
    <tr align="center">
    <td align="center" height="20%" valign="middle">
        <asp:Button ID="Button1" runat="server" Text="Add Category" /> 
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        <asp:Button ID="Button2" runat="server" Text="Add Product" 
            onclick="Button2_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button3" runat="server" Text="LOGOUT" onclick="Button3_Click" />
    </td>
        
    </tr>
    
    </table>
    
    </div>
    </form>
</body>
</html>
