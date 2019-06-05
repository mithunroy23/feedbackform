<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Report.aspx.cs" Inherits="feedback_vs_1._1.Report" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <link href="menu.css" rel="stylesheet" />
   <meta charset='utf-8'>
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <link rel="stylesheet" href="styles.css">
   <script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
   <script src="script.js"></script>
   <title>Report</title>
    <style type="text/css">
        .auto-style1 {
            height: 31px;
        }
    </style>
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
<div class="content-w3ls">
	<div class="form-w3ls">
        <div>
            <asp:Label ID="Label1" runat="server" ForeColor="White" Text="User Name :"></asp:Label>
                <asp:Label ID="lbl_nm" runat="server" ForeColor="White"></asp:Label>
        </div>
		<form id="form1" runat="server">
			<div class="content-wthree1">
				<div class="grid-agileits1">
					<div class="form-control"> 
						</div>
					</div>
				
				</div>
				<div class="clear">
                    <table style="width:100%;">
                        <tr>
                            <td>
                                <asp:Chart ID="Chart1" runat="server" DataSourceID="ss_hpy">
                                    <series>
                                        <asp:Series ChartType="Pie" Name="Series1" XValueMember="srvc_name" YValueMembers="Column1">
                                        </asp:Series>
                                    </series>
                                    <chartareas>
                                        <asp:ChartArea Name="ChartArea1">
                                        </asp:ChartArea>
                                    </chartareas>
                                </asp:Chart>
                                <asp:SqlDataSource ID="ss_hpy" runat="server" ConnectionString="<%$ ConnectionStrings:feedback_vs_1._1.Properties.Settings.feedbackConnectionString %>" SelectCommand="select t.srvc_name,count(t.srvc_name) from service t , rating a where t.srvc_id=a.servc_id and a.imo_id=1
group by t.srvc_name ;  "></asp:SqlDataSource>
                                <asp:SqlDataSource ID="SqlDataSource2" runat="server"></asp:SqlDataSource>
                            </td>
                            <td>
                                <asp:Chart ID="Chart2" runat="server" DataSourceID="ss_god">
                                    <series>
                                        <asp:Series ChartType="Pie" Name="Series1" XValueMember="srvc_name" YValueMembers="Column1">
                                        </asp:Series>
                                    </series>
                                    <chartareas>
                                        <asp:ChartArea Name="ChartArea1">
                                        </asp:ChartArea>
                                    </chartareas>
                                </asp:Chart>
                                <asp:SqlDataSource ID="ss_god" runat="server" ConnectionString="<%$ ConnectionStrings:feedback_vs_1._1.Properties.Settings.feedbackConnectionString %>" SelectCommand="select t.srvc_name,count(t.srvc_name) from service t , rating a where t.srvc_id=a.servc_id and a.imo_id=2
group by t.srvc_name ;  "></asp:SqlDataSource>
                            </td>
                            <td>
                                <asp:Chart ID="Chart3" runat="server" DataSourceID="ss_avrg">
                                    <series>
                                        <asp:Series ChartType="Pie" Name="Series1" XValueMember="srvc_name" YValueMembers="Column1">
                                        </asp:Series>
                                    </series>
                                    <chartareas>
                                        <asp:ChartArea Name="ChartArea1">
                                        </asp:ChartArea>
                                    </chartareas>
                                </asp:Chart>
                                <asp:SqlDataSource ID="ss_avrg" runat="server" ConnectionString="<%$ ConnectionStrings:feedback_vs_1._1.Properties.Settings.feedbackConnectionString %>" SelectCommand="select t.srvc_name,count(t.srvc_name) from service t , rating a where t.srvc_id=a.servc_id and a.imo_id=3
group by t.srvc_name ;  "></asp:SqlDataSource>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style1">
                                <asp:Label ID="Label5" runat="server" ForeColor="White" Text="Happy"></asp:Label>
                            </td>
                            <td class="auto-style1">
                                <asp:Label ID="Label2" runat="server" ForeColor="White" Text="Good"></asp:Label>
                            </td>
                            <td class="auto-style1">
                                <asp:Label ID="Label3" runat="server" ForeColor="White" Text="Average"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>
                                <asp:Chart ID="Chart4" runat="server" DataSourceID="ss_unhpy">
                                    <series>
                                        <asp:Series ChartType="Pie" Name="Series1" XValueMember="srvc_name" YValueMembers="Column1">
                                        </asp:Series>
                                    </series>
                                    <chartareas>
                                        <asp:ChartArea Name="ChartArea1">
                                        </asp:ChartArea>
                                    </chartareas>
                                </asp:Chart>
                                <asp:SqlDataSource ID="ss_unhpy" runat="server" ConnectionString="<%$ ConnectionStrings:feedback_vs_1._1.Properties.Settings.feedbackConnectionString %>" SelectCommand="select t.srvc_name,count(t.srvc_name) from service t , rating a where t.srvc_id=a.servc_id and a.imo_id=1
group by t.srvc_name ;  "></asp:SqlDataSource>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>
                                <asp:Label ID="Label4" runat="server" ForeColor="White" Text="Unhappy"></asp:Label>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                    
            </div>
			</div>
			<div class="content-wthree2">
                <div class="content-wthree3">	
			    </div>	
		</form>
	</div>
</div>

<p class="copyright">© 2019 Feedback Form. All Rights Reserved | Design by <a href="https://nrbcommercialbank.com/" target="_blank">NRBCOMMERCIALBANKLIMITED</a></p>
</body>
</html>
