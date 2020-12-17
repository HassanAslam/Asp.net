<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Invoice.aspx.cs" Inherits="EShopping.Invoice1" %>

<%@ Register Assembly="CrystalDecisions.Web, Version=13.0.2000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304"
    Namespace="CrystalDecisions.Web" TagPrefix="CR" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table align="center" width="80%">
    <tr>
    <td align="center">
    <h1><b>INVOICE</b></h1>
    
    </td>
    </tr>
    <tr>
    <td align="center">
        <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" 
            AutoDataBind="true" ReportSourceID="CrystalReportSource1" />
    
        <CR:CrystalReportSource ID="CrystalReportSource1" runat="server">
            <Report FileName="Invoice.rpt">
            </Report>
        </CR:CrystalReportSource>
    </td>
    
    </tr>
    
    
    </table>
    </div>
    </form>
</body>
</html>
