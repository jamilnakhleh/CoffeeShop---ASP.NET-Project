<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Orders.aspx.cs" Inherits="Invitations" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

.btns
{
    -moz-box-shadow:inset 0px 1px 0px 0px #ffffff;
	-webkit-box-shadow:inset 0px 1px 0px 0px #ffffff;
	box-shadow:inset 0px 1px 0px 0px #ffffff;
	background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #f9f9f9), color-stop(1, #e9e9e9));
	background:-moz-linear-gradient(top, #f9f9f9 5%, #e9e9e9 100%);
	background:-webkit-linear-gradient(top, #f9f9f9 5%, #e9e9e9 100%);
	background:-o-linear-gradient(top, #f9f9f9 5%, #e9e9e9 100%);
	background:-ms-linear-gradient(top, #f9f9f9 5%, #e9e9e9 100%);
	background:linear-gradient(to bottom, #f9f9f9 5%, #e9e9e9 100%);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#f9f9f9', endColorstr='#e9e9e9',GradientType=0);
	background-color:#f9f9f9;
	-moz-border-radius:6px;
	-webkit-border-radius:6px;
	border-radius:6px;
	border:1px solid #dcdcdc;
	display:inline-block;
	cursor:pointer;
	color:gray;
	font-family:arial;
	font-size:15px;
	font-weight:bold;
	padding:6px 24px;
	text-decoration:none;
	text-shadow:0px 1px 0px #ffffff;
}
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 141px;
        }
        .style3
        {
            width: 141px;
            height: 44px;
        }
        .style4
        {
            height: 44px;
            width: 471px;
        }
            
    a:link{
	text-decoration: none;
	color:#40b0ff;
}
        
        .style5
        {
            width: 471px;
            direction: ltr;
        }
        
    </style>
</head>
<body background="images/9a556895-ca97-4d5c-be87-b62f7de02277.jpg">
    <form id="form1" runat="server">
            <br />
            <br />
            <table class="style1" style="background-position: center center">
                <tr>
                    <td class="style3">
            <asp:Label ID="traPrice" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td class="style4">
    
            <asp:Image ID="traImg" runat="server" Height="195px" Width="355px" />
                    </td>
                    <td>
    
        <asp:GridView ID="gvPeople" runat="server" 
            AutoGenerateColumns="False" 
            onselectedindexchanged="gvPeople_SelectedIndexChanged">
            <Columns>
<asp:BoundField DataField="Price" HeaderText="Price"></asp:BoundField>
<asp:BoundField DataField="Code" HeaderText="Code"></asp:BoundField>
                
            </Columns>
        </asp:GridView>
    
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        &nbsp;</td>
                    <td class="style5">
            <asp:Button ID="ButtonNext" runat="server" onclick="ButtonNext_Click" 
                Text="Next" />
            &nbsp;<asp:Button ID="ButtonHazmana" runat="server" onclick="ButtonHazmana_Click" 
                Text="Order!" />

                     &nbsp;<asp:Button ID="ButtonChart" runat="server" onclick="ButtonChart_Click" 
                            Text="Add To Chart" style="width: 114px" />
                        <asp:Button ID="btnhome" runat="server" onclick="btnhome_Click" Text="Home" />
                    </td>
                    <td>
                    </td>
                </tr>
            </table>
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Sign in First!"></asp:Label>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
                     <br />
    </form>
</body>
</html>