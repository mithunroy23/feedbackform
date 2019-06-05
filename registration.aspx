<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registration.aspx.cs" Inherits="feedback_vs_1._1.registration" %>

<!DOCTYPE html>

<html lang="en">
<head>
 <link href="menu.css" rel="stylesheet" />
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
    <div id='cssmenu'>
<ul>
   <li><a href='registration.aspx'><span>Registration</span></a></li>
   <li class='active has-sub'><a href='#'><span>Report</span></a>
       <ul>
         <li class='has-sub'><a href='Report.aspx'><span>All Report</span></a>
             <%-- <ul>
               <li><a href='#'><span>Sub Product</span></a></li>
               <li class='last'><a href='#'><span>Sub Product</span></a></li>
            </ul>--%>
         </li>
         <li class='has-sub'><a href='datewiserpt.aspx'><span>Date Wise Report</span></a>
             <%--<ul>
               <li><a href='#'><span>Sub Product</span></a></li>
               <li class='last'><a href='#'><span>Sub Product</span></a></li>
            </ul>--%>
         </li>
      </ul>
   </li>
   <li><a href='profile.aspx'><span>Products</span></a></li>
   <li class='last'><a href='login.aspx'><span>LogOut</span></a></li>
</ul>
</div>
<h1 class="header-w3ls">Registration Form</h1>
<div class="content-w3ls">
	<div class="form-w3ls">
		<form id="form1" runat="server">
			<div class="content-wthree1">
				<div class="grid-agileits1">
                    <div>
                        <asp:Label ID="Label1" runat="server" CssClass="header" ForeColor="White" Text="User Name :"></asp:Label>
    <asp:Label ID="lbl_nm" runat="server" ForeColor="White"></asp:Label>
				    </div>
					<div class="form-control"> 
                        </br>
                        </br>
						<label class="header">Employee ID <span>:</span></label>
                        <asp:TextBox ID="name" runat="server"  required=""></asp:TextBox>
					</div>
					<div class="form-control"> 
						<label class="header">Name <span>:</span></label>
                        <asp:TextBox ID="orgn" runat="server" required=""></asp:TextBox>
					    <br />
					    <br />
						<label class="header">Email <span>:</span></label>
                        <br />
                        <asp:TextBox ID="email" runat="server" required="" BackColor="Transparent" EnableViewState="False" Font-Bold="False" Font-Size="Medium" ForeColor="White" Height="50px" Width="50%" ></asp:TextBox>
                        <br />
						<label class="header">Password <span>:</span></label><br />
					    <br />
                        <asp:TextBox ID="paswrd" runat="server" required="" BackColor="Transparent" EnableViewState="False" Font-Bold="False" Font-Size="Medium" ForeColor="White" Height="50px" TextMode="Password" Width="50%" OnTextChanged="paswrd_TextChanged" ></asp:TextBox>
					    <br />
						<label class="header">Confirm Password <span>:</span></label><br/>
                        <br />
                        <asp:TextBox ID="cpaswrd" runat="server" required="" BackColor="Transparent" EnableViewState="False" Font-Bold="False" Font-Size="Medium" ForeColor="White" Height="50px" TextMode="Password" Width="50%" ValidationGroup="paswrd" ></asp:TextBox>
                        </br>
                        <asp:CompareValidator ID="CompareValidator_pswrd" runat="server" ErrorMessage="Password &amp; Confirm Password must be Same" ControlToCompare="paswrd" ControlToValidate="cpaswrd" Operator="Equal" ForeColor="White"></asp:CompareValidator>
					</div>
			
					</div>
				</div>
				<div class="clear">
                    <asp:Label ID="lblstatus" runat="server" ForeColor="White"></asp:Label>
            </div>
			</div>
			<div class="content-wthree2">
                &nbsp;&nbsp;<asp:Button ID="btn_rgstr" runat="server" CssClass="reset" Text="Register" OnClick="btn_rgstr_Click" />
                <div class="content-wthree3">	
			    </div>	
		</form>
	</div>
</div>

<p class="copyright">© 2019 Feedback Form. All Rights Reserved | Design by <a href="https://nrbcommercialbank.com/" target="_blank">NRBCOMMERCIALBANKLIMITED</a></p>

</body>
</html>
