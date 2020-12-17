<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="EShopping.Cart" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Cart</title>
</head>
<body>
    <form id="form1" runat="server">
    <div align="center">
    <h2><b>You have following Products in your Cart</b></h2>
    <br /><br />
    <h2><b> 
        <asp:HyperLink ID="HyperLink1" runat="server" Text="Continue Shopping" NavigateUrl="~/Home.aspx"></asp:HyperLink>    
        </b></h2>
        <br />
        <br />

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            BackColor="#6699FF" BorderColor="Black" BorderWidth="5px" 
            EmptyDataText="No Products In Your Cart" Font-Bold="True" Height="257px" 
            ShowFooter="True" Width="1100px" onrowdeleting="GridView1_RowDeleting">
            <Columns>
                <asp:BoundField DataField="sno" HeaderText="Sr No.">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="Pid" HeaderText="Product Id">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="Pimage" HeaderText="Product Image">
                <ControlStyle Height="300px" Width="340px" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="Pname" HeaderText="Product Name">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="Quantity" HeaderText="Quantity">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="Pprice" HeaderText="Price">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="TotalPrice" HeaderText="Total Price">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:CommandField DeleteText="Remove" ShowDeleteButton="True" />
            </Columns>
            <FooterStyle BackColor="#3366FF" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#3366FF" ForeColor="White" />
        </asp:GridView>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Place Order" onclick="Button1_Click" />
    </div>
    </form>
</body>
</html>
