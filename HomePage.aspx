<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HomePage.aspx.cs" Inherits="HomePage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>
Braude Coffee Shop
</title>
<link href="css/css2.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            width: 398px;
        }
    .link {
    font-family: "Open Sans",arial;
   text-align: right;
	text-decoration: none;
    color:black;
}

    </style>
    <script language="javascript" type="text/javascript">
<!--

        function Button1_onclick() {

        }

function Button1_onclick() {

}

// -->
    </script>
</head>
<body>
    <form id="form1" runat="server">
<table  align="center" bgcolor="#FFCFB9" border="0" cellpadding="10" 
        bordercolor="Red" style="margin-right: 0px; background-color: transparent;">
<tr>
<td>
<div id="menu">
<ul style="background-color: transparent">
     <li>
     <asp:Button ID="ButtonHomePage" runat="server" Text="HomePage" BackColor="Green" 
             BorderStyle="None" onclick="ButtonHomePage_Click" Visible="False" />
       <asp:Button ID="ButtonLogOut" runat="server" Text="Log Out" BackColor="Green" 
             BorderStyle="None" onclick="ButtonLogOut_Click" />
        <asp:Button ID="ButtonHazmanot" runat="server" Text="Orders" BackColor="Green" 
             BorderStyle="None" onclick="ButtonHazmanot_Click" />
         <asp:Button ID="ButtonSignIn" runat="server" Text="Sign In" BackColor="Green" 
             BorderStyle="None" onclick="ButtonSignIn_Click" />
          <asp:Button ID="ButtonSignUp" runat="server" Text="Sign Up" BackColor="Green" 
             BorderStyle="None" onclick="ButtonSignUp_Click" />
          <asp:Button ID="ButtonAbout" runat="server" Text="About" BackColor="Green" 
             BorderStyle="None" onclick="ButtonAbout_Click" />
     <asp:Button ID="btnAdmin" runat="server" Text="Admin Page" BackColor="Green" 
             BorderStyle="None" onclick="ButtonHomePage_Click" Visible="False" />
          </li>
</ul>
</div>
</td> 
<td class="style1" style="background-color: transparent;">
<font color="#ff6600" size="7">Bra<em>ude</em></font><font color="#6b4226" size="7"><em>Coffee</em>Shope</font>
</td>
</tr>	
</table>
    <p>
           &nbsp;</p>
    </form>
   <video width="800" height="500" controls autoplay loop>
<source src="files/N.mp4" type="video/mp4">
<source src="movie.ogg" type="video/ogg">
</video>
    <p style="direction: ltr">
        &nbsp;</p>
    </body>
</html>