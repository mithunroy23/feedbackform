<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="feedbackform.aspx.cs" Inherits="feedback_vs_1._1.WebForm1" %>

<!DOCTYPE html>

<!doctype html>
<html lang="en">
<head>
<title>Feedback Form Flat Responsive widget Template :: w3layouts</title>

	<script type="text/javascript">

       // Set the slideshow speed (in milliseconds)
       var SlideShowSpeed = 6000;
       var CrossFadeDuration = 2;
		var Picture = new Array(); // don't change this
		Picture[1] = 'image/1.jpg';
		Picture[2] = 'image/2.jpg';
		Picture[3] = 'image/3.jpg';
		Picture[4] = 'image/4.jpg';
		Picture[5] = 'image/5.jpg';
		Picture[6] = 'image/6.jpg';
       var tss;
       var iss;
       var jss = pickRandom(Picture.length - 1);
       var pss = Picture.length - 1;
       //alert(jss);
 
       var preLoad = new Array();
       for (iss = 1; iss < pss + 1; iss++) {
           preLoad[iss] = new Image();
           preLoad[iss].src = Picture[iss];
       }
       function runSlideShow() {
           if (document.all) {
               document.images.LogoBox.style.filter = "blendTrans(duration=2)";
               document.images.LogoBox.style.filter = "blendTrans(duration=CrossFadeDuration)";
               document.images.LogoBox.filters.blendTrans.Apply();
           }
           document.images.LogoBox.src = preLoad[jss].src;
           //if (document.getElementById) document.getElementById("CaptionBox").innerHTML= Caption[jss];
           if (document.all) document.images.LogoBox.filters.blendTrans.Play();
           jss = jss + 1;
           if (jss > (pss)) jss = 1;
           tss = setTimeout('runSlideShow()', SlideShowSpeed);
       }
       function pickRandom(range) {
           if (Math.random)
               return (Math.round(Math.random() * range) + 1);
           else {
               return 1;
           }
       }
	</script>
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
    <style type="text/css">
        .auto-style1 {
            height: 24px;
        }
    </style>
</head>
<body onload="setTimeout('runSlideShow()', 1001);">
<h1 class="header-w3ls">Feedback Form</h1>
<div class="content-w3ls">
	<div class="form-w3ls">
		<form id="form1" runat="server">
			<div class="content-wthree1">
				<div class="grid-agileits1">
					<div class="form-control"> 
						<label class="header">Account Number <span>:</span></label>
                        <asp:TextBox ID="name" runat="server" TextMode="Phone" MaxLength="15"></asp:TextBox>
					</div>
					<div class="form-control"> 
						<label class="header">Contact Number <span>:</span>(*)</label>
                        <asp:TextBox ID="orgn" runat="server" required="" TextMode="Phone" MaxLength="11"></asp:TextBox>
					</div>
					</div>
				<div class="grid-agileits2">
					<div class="form-control">
						<label class="header">Service want to rate <span>:</span></label>&nbsp;
                        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="srvc_name" DataValueField="srvc_id">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:feedback_vs_1._1.Properties.Settings.feedbackConnectionString %>" SelectCommand="SELECT * FROM service t ORDER BY(CASE WHEN t.srvc_name = '--Select Service--' THEN 0 ELSE 1 END), t.srvc_name;"></asp:SqlDataSource>
					</div>
				</div>
				</div>
				<div class="clear"></div>
			</div>
			<div class="content-wthree2">
			<div class="content-wthree4">	
				<div class="form-control">
					&nbsp;<asp:Label ID="lbl_raiting" runat="server" Font-Bold="True" Font-Names="Arial Black" Font-Size="Larger" Font-Underline="True" ForeColor="White" Text="Select Raiting"></asp:Label>
&nbsp;<div class="clear">
                        <table style="width: 100%;" class="content-wthree1">
                            <tr>
                                <td class="auto-style1"></td>
                                <td class="auto-style1"></td>
                                <td class="auto-style1">
                                    </td>
                                <td class="auto-style1"></td>
                                <td class="auto-style1"></td>
                                <td class="auto-style1"></td>
                                <td class="auto-style1"></td>
                                <td class="auto-style1"></td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>
                                    <asp:ImageButton ID="img_btn_happy" runat="server" Height="128px" ImageUrl="~/image/happy.png" OnClick="img_btn_happy_Click" Width="127px" />
                                </td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    <asp:ImageButton ID="img_btn_good" runat="server" Height="128px" ImageUrl="~/image/good.png" OnClick="img_btn_good_Click" Width="127px" />
                                </td>
                                <td>&nbsp;</td>
                                <td>
                                    <asp:ImageButton ID="img_btn_average" runat="server" Height="128px" ImageUrl="~/image/average.png" OnClick="img_btn_average_Click" Width="127px" />
                                </td>
                                <td>&nbsp;</td>
                                <td>
                                    <asp:ImageButton ID="img_btn_unhpy" runat="server" Height="128px" ImageUrl="~/image/unha.png" OnClick="img_btn_unhpy_Click" Width="127px" />
                                </td>
                            </tr>
                            </table>
                    </div>
				</div>
			</div>	
			<div class="content-wthree4">	
				<div class="form-control">
					&nbsp;<div class="clear">
                    <img id="LogoBox" border="0" src="design/space.gif" class="content-wthree4" > 
				</div>
			</div>		
		</form>
	</div>
</div>

<p class="copyright">© 2019 Feedback Form. All Rights Reserved | Design by <a href="https://nrbcommercialbank.com/" target="_blank">NRBCOMMERCIALBANKLIMITED</a></p>

</body>
</html>

