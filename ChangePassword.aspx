<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="feedback_vs_1._1.ChangePassword" %>

<!DOCTYPE html>

<html lang="en">
<head>
<title>Feedback Form Flat Responsive widget Template :: w3layouts</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Feedback Form Widget Responsive, Login form web template,Flat Pricing tables,Flat Drop downs  Sign up Web Templates, Flat Web Templates, Login signup Responsive web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- font files -->
<link href="//fonts.googleapis.com/css?family=Abel" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Raleway:100,200,300,400,500,600,700,800,900" rel="stylesheet">
<!-- /font files -->
<!-- css files -->
<link href="css/style.css" rel='stylesheet' type='text/css' media="all" />
<!-- /css files -->
</head>
<body>
<h1 class="header-w3ls">cHANGE pASSWORD</h1>
<div class="content-w3ls">
	<div class="form-w3ls">
		<form id="form1" runat="server">
			<div class="content-wthree1">
				<div class="grid-agileits1">
					<div class="form-control"> 
						<label class="header">User ID <span>:</span></label>
                        <asp:TextBox ID="txt_eid" runat="server"  required="" BackColor="Transparent" ForeColor="White" Height="50px" Width="50%"></asp:TextBox>
					</div>
					<div class="form-control"> 
						<label class="header">Password <span>:</span></label>
                        <asp:TextBox ID="txt_paswrd" runat="server" Height="50px" TextMode="Password" Width="50%" BackColor="Transparent" ForeColor="White"></asp:TextBox>
					</div>
			<div class="form-control"> 
						<label class="header">Change Password <span>:</span></label>
                <asp:TextBox ID="txt_chnge_paswrd" runat="server" Height="50px" TextMode="Password" Width="50%" BackColor="Transparent" ForeColor="White" ValidationGroup="txt_paswrd"></asp:TextBox>
					    <asp:CompareValidator ID="CompareValidator1" runat="server"
                            ControlToCompare="txt_paswrd" ControlToValidate="txt_chnge_paswrd" 
                            ErrorMessage="Password &amp; Confirm Password must be Same" 
                            ForeColor="White" ValidationGroup="txt_paswrd" ValidateRequestMode="Enabled"></asp:CompareValidator>
					</div>
					</div>
				<asp:Image ID="nrbcb_img" runat="server" Height="150px" ImageAlign="Middle" ImageUrl="~/image/nrb-commercial-bank-atm.jpg" />
				</div>
				<div class="clear"></div>
			</div>
			<div class="content-wthree2">
                &nbsp;&nbsp;<asp:Button ID="btn_change" runat="server" CssClass="register" Text="Change Password" OnClick="btn_change_Click" />
                <div class="content-wthree3">	
			        <asp:Label ID="Label1" runat="server" Font-Names="Algerian" ForeColor="White"></asp:Label>
			    </div>	
		</form>
	</div>
</div>

<p class="copyright">© 2019 Feedback Form. All Rights Reserved | Design by <a href="https://nrbcommercialbank.com/" target="_blank">NRBCOMMERCIALBANKLIMITED</a></p>

</body>
</html>
