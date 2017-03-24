<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        
.inputFld {
    background:gray;
    font-size: 0.8rem;
    -moz-border-radius: 3px;
    -webkit-border-radius: 3px;
    border-radius: 3px;
    border: none;
    padding: 13px 10px;
    width: 270px;
    margin-bottom: 20px;
    box-shadow: inset 0 2px 3px rgba( 0, 0, 0, 0.1 );
    clear: both;
    border-width:2px;
    border-color:black;
}
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
.link {
    font-family: "Open Sans",arial;
   text-align: right;
	text-decoration: none;
    color:black;
}

        .style2
        {
            color: #FF0000;
            font-size: large;
            background-color: #C0C0C0;
        }
        .style3
        {
            background: #C0C0C0;
            font-size: large;
            -moz-border-radius: 3px;
            -webkit-border-radius: 3px;
            border-radius: 3px;
            border: 2px none black;
            padding: 13px 10px;
            width: 270px;
            margin-bottom: 20px;
            box-shadow: inset 0 2px 3px rgba( 0, 0, 0, 0.1 );
            clear: both;
            color: #FF0000;
            font-weight: bold;
        }
        .style6
        {
            color: #FF0000;
            font-weight: bold;
            font-size: large;
            background-color: #C0C0C0;
        }
        
    a:link{
	text-decoration: none;
	color:#40b0ff;
}
        
        .style1
        {
            -moz-box-shadow: inset 0px 1px 0px 0px #ffffff;
            -webkit-box-shadow: inset 0px 1px 0px 0px #ffffff;
            box-shadow: inset 0px 1px 0px 0px #ffffff;
            filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#f9f9f9', endColorstr='#e9e9e9',GradientType=0);
            background-color: #C0C0C0;
            -moz-border-radius: 6px;
            -webkit-border-radius: 6px;
            border-radius: 6px;
            border: 1px solid #dcdcdc;
            display: inline-block;
            cursor: pointer;
            color: #FF0000;
            font-family: arial;
            font-size: large;
            font-weight: bold;
            padding: 6px 24px;
            text-decoration: none;
            text-shadow: 0px 1px 0px #ffffff;
        }
                
    </style>
</head>
<body background="images/329861.jpg">
    <form id="form1" runat="server">
  
    <b>
             <asp:Label ID="title" runat="server" Text="Sign In" CssClass="style2"></asp:Label>
        <br class="style2" />
        <br class="style2" />
                           <asp:Label ID="emailError" class="errors" runat="server" 
            Text="" CssClass="style2"></asp:Label><br class="style2" />
              </b>
              <asp:TextBox id="TextBox1" CssClass="style3" runat="server" 
            placeholder="Email"></asp:TextBox><b><br class="style2" />
                               
              <asp:Label ID="passwordError" class="errors" runat="server" Text="" 
            CssClass="style2"></asp:Label><br class="style2" />
              </b>
              <asp:TextBox id="TextBox2" CssClass="style3" runat="server" 
            TextMode="password" placeholder="Password"></asp:TextBox>
        <br class="style6" />
              <asp:Button id="signInbtn2" CssClass="style1" runat="server" 
            Text="Sign in" OnClick="signInbtn_Click"></asp:Button>
        &nbsp <a href="HomePage.aspx"><img title="HomePage" src="https://cdn4.iconfinder.com/data/icons/free-social-media-icons/32/Home.png"></a><br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
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