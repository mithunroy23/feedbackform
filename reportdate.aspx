<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Report.aspx.cs" Inherits="feedback_vs_1._1.Report" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
 <title>Report Date wise</title>
     <link href="menu.css" rel="stylesheet" />
   <meta charset='utf-8'>
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1">
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
   <li class='active has-sub'><a href='Report.aspx'><span>Reports</span></a>
       <ul>
         <li class='has-sub'><a href='#'><span>Product 1</span></a>
             <%--<ul>
               <li><a href='#'><span>Sub Product</span></a></li>
               <li class='last'><a href='#'><span>Sub Product</span></a></li>
            </ul>--%>
         </li>
         <li class='has-sub'><a href='#'><span>Product 2</span></a>
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
    <h1 class="header-w3ls">Login Form</h1>
<div class="content-w3ls">
	<div class="form-w3ls">
		<form id="form1" runat="server">
			<div class="content-wthree1">
				<div class="grid-agileits1">
					<div class="form-control"> 
						<label class="header">From Date <span>:</span></label>
                        <asp:TextBox ID="name" runat="server"  required="" TextMode="Date"></asp:TextBox>
					</div>
					<div class="form-control"> 
						<label class="header">To Date <span>:</span></label>
                        <asp:TextBox ID="orgn" runat="server" required="" TextMode="Date"></asp:TextBox>
					</div>
			
					</div>
				</div>
				<div class="clear"></div>
			</div>
			<div class="content-wthree2">
                &nbsp;&nbsp;<asp:Button ID="btn_shw" runat="server" CssClass="register" Text="Show" OnClick="btn_login_Click" />
                <div class="content-wthree3">	
			    </div>	
		</form>
	</div>
</div>

<p class="copyright">© 2019 Feedback Form. All Rights Reserved | Design by <a href="https://nrbcommercialbank.com/" target="_blank">NRBCOMMERCIALBANKLIMITED</a></p>


</body>
</html>
