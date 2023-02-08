<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
	<head>
		<!-- Basic Page Info -->
		<meta charset="utf-8" />
		<title>DeskApp - Bootstrap Admin Dashboard HTML Template</title>

		<!-- Site favicon -->
		<link
			rel="apple-touch-icon"
			sizes="180x180"
			href="vendors/images/apple-touch-icon.png"
		/>
		<link
			rel="icon"
			type="image/png"
			sizes="32x32"
			href="vendors/images/favicon-32x32.png"
		/>
		<link
			rel="icon"
			type="image/png"
			sizes="16x16"
			href="vendors/images/favicon-16x16.png"
		/>

		<!-- Mobile Specific Metas -->
		<meta
			name="viewport"
			content="width=device-width, initial-scale=1, maximum-scale=1"
		/>

		<!-- Google Font -->
		<link
			href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800&display=swap"
			rel="stylesheet"
		/>
		<!-- CSS -->
		<link rel="stylesheet" type="text/css" href="vendors/styles/core.css" />
		<link
			rel="stylesheet"
			type="text/css"
			href="vendors/styles/icon-font.min.css"
		/>
		<link rel="stylesheet" type="text/css" href="vendors/styles/style.css" />

		<!-- Global site tag (gtag.js) - Google Analytics -->
		<script
			async
			src="https://www.googletagmanager.com/gtag/js?id=G-GBZ3SGGX85"
		></script>
		<script>
			window.dataLayer = window.dataLayer || [];
			function gtag() {
				dataLayer.push(arguments);
			}
			gtag("js", new Date());

			gtag("config", "G-GBZ3SGGX85");
		</script>
		<!-- Google Tag Manager -->
		<script>
			(function (w, d, s, l, i) {
				w[l] = w[l] || [];
				w[l].push({ "gtm.start": new Date().getTime(), event: "gtm.js" });
				var f = d.getElementsByTagName(s)[0],
					j = d.createElement(s),
					dl = l != "dataLayer" ? "&l=" + l : "";
				j.async = true;
				j.src = "https://www.googletagmanager.com/gtm.js?id=" + i + dl;
				f.parentNode.insertBefore(j, f);
			})(window, document, "script", "dataLayer", "GTM-NXZMQSS");
		</script>
		<!-- End Google Tag Manager -->
	</head>

	<body>
		<div class="login-header box-shadow">
			<div
				class="container-fluid d-flex justify-content-between align-items-center"
			>
				<div class="brand-logo">
					<a href="login.php">
						<img src="vendors/images/deskapp-logo.svg" alt="" />
					</a>
				</div>
				<div class="login-menu">
					<ul>
						<li><a href="login.php">Login</a></li>
					</ul>
				</div>
			</div>
		</div>
        <%-- alert Messgae --%>
        <div class="alert alert-warning alert-dismissible fade show" role="alert" id="alert" style="display:none">
		
		<button type="button" class="close" data-dismiss="alert" aria-label="Close">
		<span aria-hidden="true">&times;</span>
		</button>
		</div>


		<div
			class="login-wrap d-flex align-items-center flex-wrap justify-content-center"
		>
			<div class="container">
				<div class="row align-items-center">
					<div class="col-md-6">
						<img src="vendors/images/forgot-password.png" alt="" />
					</div>
					<div class="col-md-6">
						<div class="login-box bg-white box-shadow border-radius-10">
							<div class="login-title">
								<h2 class="text-center text-primary">ENTER OTP</h2>
							</div>
							<h6 class="mb-20">
								Enter OTP sent from email
								<%-- <?php

								echo "Value is: " . $_COOKIE["mail"];

								?> --%>
							</h6>
							<form method="POST" action="otp.jsp">
								<div class="input-group custom">
									<input
										type="text"
										class="form-control form-control-lg"
										placeholder="OTP"
										name="otp"
										id="otp"
                                        pattern="[0-9]*"
									/>
									<div class="input-group-append custom">
										<span class="input-group-text"
											><i class="fa fa-envelope-o" aria-hidden="true"></i
										></span>
									</div>
								</div>
								<div class="row align-items-center">
									<div class="col-5">
										<div class="input-group mb-0">
											<!--
											use code for form submit
											<input class="btn btn-primary btn-lg btn-block" type="submit" value="Submit">
										-->
											<button
												class="btn btn-primary btn-lg btn-block"
												name="verify"
												>Verify</button
											>
											
										</div>
									</div>
									
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
		
			
		<!-- welcome modal end -->
		<!-- js -->
		<script src="vendors/scripts/core.js"></script>
		<script src="vendors/scripts/script.min.js"></script>
		<script src="vendors/scripts/process.js"></script>
		<script src="vendors/scripts/layout-settings.js"></script>
		<!-- Google Tag Manager (noscript) -->
		<noscript
			><iframe
				src="https://www.googletagmanager.com/ns.html?id=GTM-NXZMQSS"
				height="0"
				width="0"
				style="display: none; visibility: hidden"
			></iframe
		></noscript>
		<!-- End Google Tag Manager (noscript) -->
	</body>
</html>

<%
//Check Seession and otp is not null
if(session!=null&& session.getAttribute("otp")!=null)
{
   //Session is Set 

//Store Userotp & sessionotp
String userotp=request.getParameter("otp");
String sessionotp=session.getAttribute("otp").toString();

	//Check sessionotp and userotp is null or not
	if(sessionotp!=null&&userotp!=null)
	{
		//Check Weather both otp is same or not
		if(userotp.equals(sessionotp))
		{
			// [ OTP is Valid ] --> Save in session
			session.setAttribute("otpvalid","1");
				//Redirect to pwd.jsp
			%>
				<script>
				window.location.replace("pwd.jsp");
				</script>
			<%
			
		//response.sendRedirect("pwd.jsp");
		}
		else
		{
			//out.println("OTP mismacted");
			
			%>
				<script>
					document.getElementById("alert").style.display="block";
				
					document.getElementById("alert").innerHTML="OTP is Invalid";
			
				</script>
				<%
		}
	}


}
//if session not sent then redirect -> login.jsp
else
    response.sendRedirect("login.jsp");
%>
