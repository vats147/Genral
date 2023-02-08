<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<?php
session_start();
?>

<?php
	// include "dbsignup.php";
?>
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
		<link
			rel="stylesheet"
			type="text/css"
			href="src/plugins/jquery-steps/jquery.steps.css"
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

	<body class="login-page">
		<div class="login-header box-shadow">
			<div
				class="container-fluid d-flex justify-content-between align-items-center"
			>
				<div class="brand-logo">
					<a href="login.html">
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
		<div
			class="register-page-wrap d-flex align-items-center flex-wrap justify-content-center"
		>
			<div class="container">
				<div class="row align-items-center">
					<div class="col-md-6 col-lg-7">
						<img src="vendors/images/register-page-img.png" alt="" />
					</div>
					<div class="col-md-6 col-lg-5">
						<div class="register-box bg-white box-shadow border-radius-10">
							<div class="wizard-content">


							
								<form id="form" class="tab-wizard2 wizard-circle wizard">

									<h5>Basic Account Credentials</h5>
									<section>
										<div class="form-wrap max-width-600 mx-auto">
											<div class="form-group row">
												<label class="col-sm-4 col-form-label"
													>Email Address*</label
												>
												<div class="col-sm-8">
													<input type="text" class="form-control" id="mail" name="newmail"/>
												</div>
											</div>
											<div class="form-group row">
												<label class="col-sm-4 col-form-label">Username*</label>
												<div class="col-sm-8">
													<input type="text" class="form-control" id="name" name="name"/>
												</div>
											</div>
											<div class="form-group row">
												<label class="col-sm-4 col-form-label">Password*</label>
												<div class="col-sm-8">
													<input type="password" class="form-control" id="pwd" name="newpwd"/>
												</div>
											</div>
											<div class="form-group row">
												<label class="col-sm-4 col-form-label"
													>Confirm Password* </label
												>
												<div class="col-sm-8">
													<input type="password" class="form-control" id="pwd2" name="againpwd"/>
												</div>
											</div>
											
											<div class="row">
												<div class="col-sm-12">
													<div class="input-group mb-0">
														<input class="btn btn-primary btn-lg btn-block"   type="button" id="submit" value="submit">
													</div>
													
												</div>
											</div>
										</div>
									</section>

								</form>
								
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div
			class="modal fade"
			id="success-modal"
			tabindex="-1"
			role="dialog"
			aria-labelledby="exampleModalCenterTitle"
			aria-hidden="true"
		>
			<div
				class="modal-dialog modal-dialog-centered max-width-400"
				role="document"
			>
				<div class="modal-content">
					<div class="modal-body text-center font-18">
						<h3 class="mb-20">Form Submitted!</h3>
						<div class="mb-30 text-center">
							<img src="vendors/images/success.png" />
						</div>
						Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do
						eiusmod
					</div>
					<div class="modal-footer justify-content-center">
						<a href="login.html" class="btn btn-primary">Done</a>
					</div>
				</div>
			</div>
		</div>
		<!-- js -->
		<script src="vendors/scripts/core.js"></script>
		<script src="vendors/scripts/script.min.js"></script>
		<script src="vendors/scripts/process.js"></script>
		<script src="vendors/scripts/layout-settings.js"></script>
		<script src="src/plugins/jquery-steps/jquery.steps.js"></script>
		<script src="vendors/scripts/steps-setting.js"></script>
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
		<script>
			   $(document).ready(function () {

				$(document).on('click','#submit',function () {
					event.preventDefault();
					var mail=document.getElementById("mail").value;
					var name=document.getElementById("name").value;
					var pwd=document.getElementById("pwd").value;
					var pwd2=document.getElementById("pwd2").value;

					if(pwd==pwd2)
					{
						$.ajax({
						url: "retrivedata.php",
						type: "POST",
						data: {
							id: "register",
							action: "c",
							mail:mail,
							name:name,
							pwd:pwd,
							pwd:pwd2
							

						},success:function(data){
							$("#form").trigger('reset');
							alert(data);

						}
					});
					}
					else
					{
						alert('Both password not matched');
					}



				});
				
				

				 $( "div" ).removeClass( "actions clearfix" );
			   });
			</script>
	</body>
</html>
