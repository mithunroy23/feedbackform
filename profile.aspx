<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="profile.aspx.cs" Inherits="feedback_vs_1._1.profile" %>

<!DOCTYPE html>
<!doctype html>
<html lang=''>
<head>
    <link href="menu.css" rel="stylesheet" />
   <meta charset='utf-8'>
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <link rel="stylesheet" href="styles.css">
   <script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
   <script src="script.js"></script>
   <title>Add Service</title>
    <style type="text/css">
        .auto-style1 {
            height: 227px;
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
		<form id="form1" runat="server">
			<div class="content-wthree1">
				<div class="grid-agileits1">
                    <div>
                        <asp:Label ID="Label1" runat="server" ForeColor="White" Text="User Name :"></asp:Label>
                <asp:Label ID="lbl_nm" runat="server" ForeColor="White"></asp:Label>
                    </div>
					<div class="form-control"> 
						&nbsp;</div>
					</div>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:feedbackConnectionString %>" SelectCommand="SELECT * FROM [service]"></asp:SqlDataSource>
				
				</div>
				<div class="clear">
                    <table style="width:100%;">
                        <tr>
                            <td class="auto-style1"> 
						<label class="header">Add Service <span>:</span></label> <asp:TextBox ID="name" runat="server"></asp:TextBox>
					            <br />
                                <br />
                                <br />
                                <label class="header">Delete Service <span>:</span></label><asp:TextBox ID="orgn" runat="server"></asp:TextBox>
                                <br />
                                <br />
			        <asp:Button ID="btn_add" runat="server" CssClass="register" OnClick="btn_add_Click" Text="ADD" />
					            <asp:Button ID="btn_delete" runat="server" CssClass="reset" OnClick="btn_delete_Click" Text="DELETE" />  
					</td>
                            <td class="auto-style1">
				<asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="267px" Width="358px">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="srvc_id" HeaderText="ID" SortExpression="srvc_id" />
                        <asp:BoundField DataField="srvc_name" HeaderText="Service Name" SortExpression="srvc_name" />
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
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

