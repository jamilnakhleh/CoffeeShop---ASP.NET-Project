<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Admin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Page!</title>
</head>
<body background="images/324-coffee-beans-1280x800-artistic-wallpaper.jpg">
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label5" runat="server" BorderStyle="Dashed" Font-Size="30pt" 
            Text="Admin Page For Our Coffee ..."></asp:Label>
    
    </div>
    <p>
        <asp:Label ID="errorone" runat="server" Visible="False"></asp:Label>
    </p>
    <p>
    
        <asp:Label ID="Label1" runat="server" Text="Code :  "></asp:Label>
        <asp:TextBox ID="T1" runat="server"></asp:TextBox>
    
    </p>
    <p style="direction: ltr">
    <asp:Label ID="Label2" runat="server" Text="CoffeeCode : "></asp:Label>
    <asp:TextBox ID="T2" runat="server"></asp:TextBox>
    </p>
    <p style="direction: ltr">
        <asp:Label ID="Label3" runat="server" Text="Picture :  "></asp:Label>
        <asp:DropDownList ID="D1" runat="server">
            <asp:ListItem>coffeeNatolKafaEen.png</asp:ListItem>
            <asp:ListItem>7aletotTeh.png</asp:ListItem>
            <asp:ListItem>coffeePodim.png</asp:ListItem>
            <asp:ListItem>coffeeturkey.png</asp:ListItem>
            <asp:ListItem>coffeHafo5.png</asp:ListItem>
            <asp:ListItem>coffetekse.png</asp:ListItem>
        </asp:DropDownList>
    </p>
    <p style="direction: ltr">
    <asp:Label ID="Label4" runat="server" Text="Price :   "></asp:Label>
    <asp:TextBox ID="T4" runat="server"></asp:TextBox>
    </p>
    <p style="direction: ltr">
    <asp:Button ID="btadmin" runat="server" onclick="btadmin_Click" 
        Text="btnAdmin" />
    <asp:Button ID="btnhome" runat="server" onclick="btnhome_Click" Text="Home" />
    </p>
    </form>
    </body>
</html>
