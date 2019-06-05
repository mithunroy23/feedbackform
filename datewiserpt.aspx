<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="datewiserpt.aspx.cs" Inherits="feedback_vs_1._1.datewiserpt" %>
<%@ Register assembly="CrystalDecisions.Web, Version=13.0.3500.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Date wise Reporting</title>
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script>
      $(function () {
          $("#datepicker").datepicker({ dateFormat: 'dd/mm/yy'  });
      });
      $(function () {
          $("#datepicker1").datepicker({ dateFormat: 'dd/mm/yy' });
      });
  </script>
</head>
</html>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
       <link href="menu.css" rel="stylesheet" />
   <meta charset='utf-8'>
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Date wise report</title>
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
    <form id="form1" runat="server">
        <div>
        </div>
        <h1 class="header-w3ls">Date wise report</h1>
<div class="content-w3ls">
	<div class="form-w3ls">
		<asp:Label ID="Label1" runat="server" Text="User Name :" ForeColor="White"></asp:Label>
        <asp:Label ID="lbl_nm" runat="server" ForeColor="White"></asp:Label>
		</div>
            </br>
			<div class="content-wthree1">
				<div class="grid-agileits1">
					<div class="form-control"> 
						<label class="header">From Date <span>:</span></label>
     
                        <asp:TextBox ID="datepicker" runat="server" ClientIDMode="Static" BackColor="Transparent" ForeColor="White"></asp:TextBox>
					</div>
		
					<div class="form-control">	
						<label class="header">to Date <span>:</span> <span>:</span></label>&nbsp;
                        <asp:TextBox ID="datepicker1" runat="server" ClientIDMode="Static" BackColor="Transparent" ForeColor="White"></asp:TextBox>
					</div>
	
					<div class="form-control"> 
						&nbsp;
					</div>
				</div>
				<div class="grid-agileits2">
					<div class="form-control">
						<label class="header">Select Service <span>:</span></label>&nbsp;
                        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="srvc_name" DataValueField="srvc_id">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:feedback_vs_1._1.Properties.Settings.feedbackConnectionString %>" SelectCommand="SELECT * FROM [service]"></asp:SqlDataSource>
                        </div>
				</div>
				<div class="clear">
                    <asp:Button ID="btn_shw_rpt" runat="server" CssClass="register" Text="Show Report" OnClick="btn_shw_rpt_Click" />
                </div>
			</div>
			<div class="content-wthree3">	
				<div class="form-control">
					&nbsp;&nbsp;<CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" AutoDataBind="True" GroupTreeImagesFolderUrl="" Height="1202px" ToolbarImagesFolderUrl="" ToolPanelWidth="200px" Width="1104px" />
                    <div class="clear"></div>
				</div>
			</div>	
			<div class="content-wthree4">	
				<div class="form-control">
					&nbsp;
					<div class="clear"></div>
				</div>
			</div>		
		</form>
	</div>
</div>

<p class="copyright">© 2019 Feedback Form. All Rights Reserved | Design by <a href="https://nrbcommercialbank.com/" target="_blank">NRBCOMMERCIALBANKLIMITED</a></p>

    </form>
</body>
</html>
