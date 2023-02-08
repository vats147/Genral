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


		<%-- Lobibox css --%>
		<link rel="stylesheet" href="lobibox-master/font-awesome/css/font-awesome.min.css" />
<link rel="stylesheet" href="lobibox-master/demo/demo.css" />

<link rel="stylesheet" href="lobibox-master/dist/css/Lobibox.min.css" />
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
		<div class="alert alert-warning alert-dismissible fade show" role="alert" id="alert" style="display:none">
		
		<button type="button" class="close" data-dismiss="alert" aria-label="Close">
		<span aria-hidden="true">&times;</span>
		</button>
		</div>
		
		
		<div
			class="login-wrap d-flex align-items-center flex-wrap justify-content-center"
		>
		<div class="alert alert-warning alert-dismissible fade show" role="alert" id="alert" style="display:none">
		
		<button type="button" class="close" data-dismiss="alert" aria-label="Close">
		<span aria-hidden="true">&times;</span>
		</button>
		</div>
			<div class="container">
				<div class="row align-items-center">
					<div class="col-md-6">
						<img src="vendors/images/forgot-password.png" alt="" />
					</div>
					<div class="col-md-6">
						<div class="login-box bg-white box-shadow border-radius-10">
							<div class="login-title">
								<h2 class="text-center text-primary">SET NEW PASSWORD</h2>
							</div>
							<h6 class="mb-20">
								Enter your new password
							</h6>
							<form method="POST" >
								<div class="input-group custom">
									<input
										type="password"
										class="form-control form-control-lg"
										placeholder="New Password"
										name="newpassword" id="newpassword"
									/>
                        
									<div class="input-group-append custom">
										<span class="input-group-text"
											><i class="fa fa-lock" aria-hidden="true"></i
										></span>
									</div>
								</div>
                                <div class="input-group custom">
									<input
										type="password"
										class="form-control form-control-lg"
										placeholder="Re-enter New Password"
										name="reenterpassword" id="reenterpassword"
									/>
                                  
									<div class="input-group-append custom">
										<span class="input-group-text"
											><i class="fa fa-unlock-alt" aria-hidden="true"></i
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
												name="save" id="savebtn" type="button"
												>Save</button>
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
	 <script src="./lobibox-master/js/Lobibox.js"></script>
    <script src="./lobibox-master/demo/demo.js"></script>
    <script> 

    //document is ready or not
    $(document).ready(function () {

	//Declaration of variable
	var password=document.getElementById("newpassword");
	var newpassword=document.getElementById("reenterpassword");
	var savebtn=document.getElementById("savebtn");
	var validpassword=false;
	var validrepassword=false;
	//Password Must Have 
	// 1 Special Charater
	// 1 numerial
	// 1 Captial letter
	// 8 character minimum 
	let regex = /^(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{8,}$/;
			
	
	     //check password is valid or not
            password.addEventListener('keypress', () => {
                console.log("Promocode is blurred");

                let str = password.value;
                console.log(regex, str);
                if (regex.test(str)) {
                    console.log('Your name is valid');

                    password.classList.add('form-control-success');
                    password.classList.add('is-valid');
                    validpassword = true;
                }
                else {
                    console.log('Your name is not valid');
                    password.classList.add('form-control-danger');
                    document.getElementById("error1").style.display = "block";
                    document.getElementById("error1").innerHTML = "password must be 2-10 characters long and should not start with a number";


                    validpassword = false;

                }
            });
            
             //check reeneterpassword is valid or not
            newpassword.addEventListener('keypress', () => {
                console.log("Promocode is blurred");

                let str = newpassword.value;
                console.log(regex, str);
                if (regex.test(str)) {
                    console.log('Your name is valid');

                    newpassword.classList.add('form-control-success');
                    
		      	
                    newpassword.classList.add('is-valid');
                    validrepassword = true;
                }
                else {
                    console.log('Your name is not valid');
                    newpassword.classList.add('form-control-danger');
                    document.getElementById("error1").style.display = "block";
                    document.getElementById("error1").innerHTML = "password must be 2-10 characters long and should not start with a number";


                    validrepassword = false;

                }
            });

	     //on click of save button
	     $(document).on("click","#savebtn",function(){
	    	 
			//check if both is true or not		
			if(validpassword&&validrepassword)
			{
				if(password.value!=null&&newpassword.value!=null)
				{
					//check both value should be equal
					if(password.value==newpassword.value)
					{
						//check with regular expression
						if(regex.test(password.value)&&regex.test(newpassword.value))
							{
							
							
								document.getElementById("alert").style.display="none";
								document.getElementById("alert").innerHTML="";
								
								//send request for password-update
								$.ajax({
									url:"retrivedata.jsp",
									type:"POST",
									data:{
									pagename:"pwd",
									action:"password-update",
									password:password.value
									},success:function(data)
									{
										document.getElementById("alert").style.display="block";
										
										document.getElementById("alert").innerHTML="PassWord changed successfully";
										
										//Destory session
										$.ajax({
											url:"retrivedata.jsp",
											type:"POST",
											data:{
												action:"session-destory",
											}
										});

										//redirect to login page 
										window.location.replace("login.jsp");
										
									}
									
									
									
								});
						
							}
						else
							{
							
							document.getElementById("alert").style.display="block";
							
							document.getElementById("alert").innerHTML="Password Must include 1 Captial Letter,one Special charter, one number. And it should not be null";
							
							}
						

					}
					else
					{
						document.getElementById("alert").style.display="block";
						
						document.getElementById("alert").innerHTML="Password Must Be Same";

					}
				}
				else
				{
					
					document.getElementById("alert").style.display="block";
					
					document.getElementById("alert").innerHTML="Password Must include 1 Captial Letter,one Special charter, one number. And it should not be null";
					

				}
			}
			else
			{
				console.log(password.value);
				if(password.value==""||newpassword.value=="")
				{
					document.getElementById("alert").style.display="block";
					
					document.getElementById("alert").innerHTML="Please enter Password";
					
				}
				else
					{
					
					if(regex.test(password.value)||regex.test(newpassword.value))
					{
						
						document.getElementById("alert").style.display="block";
						
						document.getElementById("alert").innerHTML="Please Enter Password";
					}
					else{
						document.getElementById("alert").style.display="block";
						
						document.getElementById("alert").innerHTML="Password Must include 1 Captial Letter,one Special charter, one number And minimum length 8 charter. No White Space allowed";
							
					
					}
					
					}
			}
	     });
            
            
	
    });
    </script>




<% 
	//check weather session variable is set or not
	if(session.getAttribute("userid")!=null&&session.getAttribute("otp")!=null&&session.getAttribute("otpvalid")!=null)
	{
		System.out.println("Session is not null");
		
	}
	else
		
	{
		System.out.println("Session is Null");
		response.sendRedirect("login.jsp");
	}
%>
</body>
</html>
