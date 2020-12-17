<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="EShopping.Home" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Eshopping</title>
    
     <style type="text/css">
         .style1
         {
             width: 331px;
         }
         .style2
         {
             width: 323px;
         }
     </style>
    
     </head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
    <table width="100%" frame="void" cellspacing="25%" cellpadding="10%" align="center">
    <tr align="justify" bgcolor="White" valign="middle">
    <td align="center" height="5px" valign="middle" width="20%">
    
        <asp:ImageButton ID="ImageButton7" runat="server" Width="100px" ImageUrl="~/images/vimio.png" PostBackUrl="Home.aspx" Height="100px" ToolTip="Home" />
    
    </td>
    
    <td align="center" valign="middle" class="style2"><h1 align="center" 
            
            style="font-family: 'Times New Roman', Times, serif; font-size: xx-large; color: #0000FF;" 
            title="company name" >E Shopping Center</h1><h3 align="center">for those who love shopping</h3></td>
    <td align="center" class="style1">
    
        <asp:ImageButton ID="ImageButton3" runat="server" BackColor="White" 
            BorderColor="#3366FF" Height="50px" Width="50px" 
            ImageUrl="~/images/Facebook.png" PostBackUrl="https://www.facebook.com/" 
            ToolTip="Facebook" />
        <asp:ImageButton ID="ImageButton4" runat="server" Width="50px" 
            PostBackUrl="https://web.whatsapp.com/" ImageUrl="~/images/Whatsapp.png" 
            Height="50px" BorderColor="#3366FF" BackColor="White" ToolTip="Whatsapp" />
        <asp:ImageButton ID="ImageButton5" runat="server" 
            PostBackUrl="https://www.yahoo.com/" ImageUrl="~/images/yahoo.png" Width="50px" 
            Height="50px" ToolTip="Yahoo" />
        <asp:ImageButton ID="ImageButton6" runat="server" 
            ImageUrl="~/images/AddtoCart.png" PostBackUrl="~/Cart.aspx" 
            Width="50px" Height="50px" ToolTip="YourCart" 
            onclick="ImageButton6_Click" />
    
    </td>
    </tr>
    <tr><td align="center" colspan="3" valign="middle">
        <asp:Menu ID="Menu1" runat="server" BackColor="#0066FF" 
             Font-Bold="True" Font-Italic="True" 
            Font-Names="Sylfaen" Font-Size="Medium" ForeColor="Black" Height="50px" 
            Orientation="Horizontal" RenderingMode="Table" StaticSubMenuIndent="10px" 
            Width="100%">
 
            <Items>
                <asp:MenuItem Text="Home" Value="Home" NavigateUrl="Home.aspx" Target="_self"></asp:MenuItem>
                <asp:MenuItem Text="User Login" Value="User Login" Target="_blank" NavigateUrl="UserLogin.aspx"></asp:MenuItem>
                <asp:MenuItem Text="All Product" Value="All Product" Target="_self" NavigateUrl="AllProduct.aspx"></asp:MenuItem>
                <asp:MenuItem Text="Registration" Value="Registration" NavigateUrl="Registration.aspx" Target="_blank"></asp:MenuItem>
                <asp:MenuItem Text="About Us" Value="About Us" Target="_self" NavigateUrl="AboutUs.aspx"></asp:MenuItem>
                <asp:MenuItem Text="Contact Us" Value="Contact Us" NavigateUrl="ContactUs.aspx" Target="_self"></asp:MenuItem>
            </Items>
            <StaticHoverStyle BackColor="#CC0000" ForeColor="White" />
            <StaticMenuItemStyle HorizontalPadding="50px" VerticalPadding="20px" />
            <StaticSelectedStyle BackColor="#CC0000" ForeColor="White" Font-Bold="True" Font-Italic="True" />
        </asp:Menu>
    </td>
    </tr>
    <tr align="center" bgcolor="White" valign="middle">
    <td colspan="3" align="center" height="40%" valign="middle">
        
        
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:AdRotator ID="AdRotator1" runat="server" Width="940px" Height="270px" AdvertisementFile="~/SlideShow.xml" />
         
         <asp:Timer ID="Timer1" runat="server" Interval="2000" ontick="Timer1_Tick">
        </asp:Timer>
          
        </ContentTemplate>
        </asp:UpdatePanel>
    </td>
    </tr>
    </table>
    <table align="center" cellpadding="10%" cellspacing="0%" width="100%">
    <tr align="center" bgcolor="#0099FF" valign="middle">
    <td colspan="2" align="center">
        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Italic="True" 
            Font-Names="Calibri" Font-Size="X-Large" ForeColor="Black" Height="30px" 
            Width="323px" ></asp:Label>
    <asp:LinkButton ID="LinkButton1" runat="server" Height="27px" 
            PostBackUrl="~/UserLogin.aspx" ToolTip="Login" Width="157px">Click Here to LOGIN</asp:LinkButton>

        <asp:Button ID="Button1" runat="server" Text="Logout" Height="30px" 
            onclick="Button1_Click" Width="98px" />
    </td>
    <td align="center" valign="middle" colspan="1">
        
    
        <asp:TextBox ID="TextBox1" runat="server" BorderColor="White" BorderStyle="Solid" Height="30px" ToolTip="Search Product" Width="200px">
        </asp:TextBox>
        <asp:ImageButton ID="ImageButton1" runat="server" 
            ImageUrl="~/images/search.png" Width="40px" Height="40px" 
            onclick="ImageButton1_Click" />
    </td>
    </tr>
    </table>

        <asp:DataList ID="DataList1" runat="server" DataKeyField="Pid" Height="293px" 
            Width="310px" BorderColor="#999999" BorderStyle="None" 
            HorizontalAlign="Center" ToolTip="Products" BackColor="White" 
            BorderWidth="1px" CellPadding="3" GridLines="Vertical" RepeatColumns="4" 
            RepeatDirection="Horizontal" onitemcommand="DataList1_ItemCommand">
            <AlternatingItemStyle BackColor="#DCDCDC" />
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            <ItemStyle BackColor="#EEEEEE" ForeColor="Black" />
        <ItemTemplate>
        <table>
    <tr>
    <td align="center" valign="middle" bgcolor="White">
        <asp:Label ID="Pname" runat="server" Text='<%# Eval("Pname") %>' Font-Bold="True" BackColor="White" BorderColor="White" BorderStyle="None" Font-Size="Large" ForeColor="Black" Height="100px" Width="100px"></asp:Label>
    </td>
    </tr>
    <tr>
    <td>
        <asp:Image ID="Pimage" runat="server" ImageUrl='<%# Eval("Pimage") %>' 
            Height="279px" Width="280px" ImageAlign="Middle" BorderStyle="Solid" BorderColor="#3366FF" />
    </td>
    </tr>
    <tr>
    <td>
        <asp:Label ID="Label2" runat="server" Text="Price:Rs="></asp:Label>
        <asp:Label ID="Label1" runat="server" Text='<%# Eval("Pprice") %>'></asp:Label>
    </td>
    </tr>
    <tr>
    <td>
        <asp:DropDownList ID="DropDownList1" runat="server">
        <asp:ListItem >1</asp:ListItem>
        <asp:ListItem >2</asp:ListItem>
        <asp:ListItem >3</asp:ListItem>
        <asp:ListItem >4</asp:ListItem>
        </asp:DropDownList>
    </td>
    </tr>
    <tr>
    <td>
        <asp:LinkButton ID="LinkButton2" runat="server" CommandName="Addtocart" CommandArgument='<%# Eval("Pid") %>'>ADD TO CART</asp:LinkButton>
       
   
    </td>
        
    </tr>    
    </table>
        </ItemTemplate>
            <SelectedItemStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
        </asp:DataList>
    
    </div>
    </form>
</body>
</html>
