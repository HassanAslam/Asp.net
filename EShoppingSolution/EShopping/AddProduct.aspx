<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddProduct.aspx.cs" Inherits="EShopping.AddProduct" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add Product</title>
</head>
<body style="height: 371px">
    <form id="form1" runat="server">
    <div>
    <table width="80%" align="center" bgcolor="#6699FF" style="height: 341px">
    <tr align="center" valign="middle">
    <td align="center" colspan="2">
    <h1><b>Add Product</b></h1>
    </td>
    </tr>
    <tr><td align="center" valign="middle"><h3><b>Product Id</b></h3></td>
    <td>
        <asp:TextBox ID="txt1" runat="server"></asp:TextBox>
    </td>
    </tr>
    <tr>
    <td align="center" valign="middle"><h3><b>Product Name</b></h3></td>
    <td>
        <asp:TextBox ID="txt2" runat="server"></asp:TextBox>
    </td>
    </tr>
    <tr><td align="center" valign="middle"><h3><b>Product Desc</b></h3></td>
    <td>
        <asp:TextBox ID="txt3" runat="server"></asp:TextBox>
    </td>
    </tr>
    <tr>
    <td align="center" valign="middle"><h3><b>Product Image</b></h3></td>
    <td>
        <asp:FileUpload ID="FileUpload1" runat="server" />
    </td>
    </tr>
    <tr>
    <td align="center" valign="middle"><h3><b>Product Price</b></h3></td>
    <td>
        <asp:TextBox ID="txt4" runat="server"></asp:TextBox>
    </td>
    </tr>
    <tr>
    <td colspan="2" align="center" valign="middle">
        <asp:Button ID="Button1" runat="server" Text="ADD PRODUCT" 
            onclick="Button1_Click" />
    </td>
    </tr>
    <tr>
    <td align="right" valign="middle">
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </td>
    </tr>
    </table>
    
    </div>
    </form>
</body>
</html>
