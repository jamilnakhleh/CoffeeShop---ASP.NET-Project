<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SignUp.aspx.cs" Inherits="SignUp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

#title {
    font-size:20px;
    color:#007A24;
    font-family: "Open Sans",arial;
    text-align:center;
}

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
#signUpbtn {
    margin-left:20px;
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
#name {
    margin-left:50px;
}
.link {
    font-family: "Open Sans",arial;
   text-align: right;
	text-decoration: none;
    color:black;
}

    </style>
</head>
<body background="images/coffe_chocolate_texture1504.jpg" 
    style="direction: ltr">
    <form id="form1" runat="server">
    <div align="right">
    
                <br />
 
                <asp:Label ID="title" runat="server" Text="Sign up.."></asp:Label>
       </div>
         <div>
          <br />
        <br />
                <br />

               <asp:Label ID="fnameError" class="errors" runat="server" Text="" 
                 style="font-weight: 700; font-size: medium"></asp:Label><br />
              <asp:TextBox id="fnametxt" CssClass="inputFld" runat="server" placeholder="First name"></asp:TextBox><br />
           <asp:Label ID="lnameError" class="errors" runat="server" Text="" 
                 style="font-size: medium; font-weight: 700"></asp:Label> <br />
              <asp:TextBox id="lnametxt" CssClass="inputFld" runat="server" placeholder="Last name"></asp:TextBox>
                      <br />
                    <asp:Label ID="emailError" class="errors" runat="server" Text="" 
                 style="font-weight: 700; font-size: medium"></asp:Label><br />
              <asp:TextBox id="emailtxt" CssClass="inputFld" runat="server" placeholder="Email"></asp:TextBox>
                  
                        <br />
               <asp:Label ID="passwordError" class="errors" runat="server" Text="" 
                 style="font-weight: 700; font-size: medium"></asp:Label><br />
              <asp:TextBox id="passwordtxt" CssClass="inputFld" runat="server" TextMode="password" placeholder="Password"></asp:TextBox>
                 
                      <br />
                    <asp:Label ID="addressError" class="errors" runat="server" Text="" 
                 style="font-weight: 700; font-size: medium"></asp:Label><br />
              <asp:TextBox id="addresstxt" CssClass="inputFld" runat="server" placeholder="Address"></asp:TextBox>
                
                         <br />
              <asp:Button id="signUpbtn" CssClass="btns" runat="server" Text="Sign up" OnClick="signUpbtn_Click"></asp:Button>
             &nbsp<a href="HomePage.aspx"><img title="HomePage" src="https://cdn4.iconfinder.com/data/icons/free-social-media-icons/32/Home.png"></a></div>
    </form>
</body>
</html>
