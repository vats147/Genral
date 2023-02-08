<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


  <%@ page import="java.util.*" %>
      <%@ page import="java.io.*" %>
      <%@ page import="java.lang.Object" %>
          <%@ page import="java.sql.*" %>
      <%@ page import="java.sql.Connection" %>
        <%@ page import="java.sql.DriverManager" %>
          <%@ page import="java.sql.SQLException" %> 
                   
    <%-- Include Database Configuration File --%>
   

<!DOCTYPE html>
<html>

<head>
    <!-- Basic Page Info -->
    <meta charset="utf-8" />
    <title>Restaurent Management System LOGIN PAGE</title>

    <!-- Site favicon -->
    <link rel="apple-touch-icon" sizes="180x180" href="vendors/images/apple-touch-icon.png" />
    <!-- <link
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
		/> -->

    <!-- Mobile Specific Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800&display=swap"
        rel="stylesheet" />
    <!-- CSS -->
    <link rel="stylesheet" type="text/css" href="vendors/styles/core.css" />
    <link rel="stylesheet" type="text/css" href="vendors/styles/icon-font.min.css" />
    <link rel="stylesheet" type="text/css" href="vendors/styles/style.css" />

    <!-- Global site tag (gtag.js) - Google Analytics -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=G-GBZ3SGGX85"></script>
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
    (function(w, d, s, l, i) {
        w[l] = w[l] || [];
        w[l].push({
            "gtm.start": new Date().getTime(),
            event: "gtm.js"
        });
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

    <div class="container-fluid d-flex justify-content-between align-items-center">
        <div class="brand-logo">
            <a href="index.php">
                <img src="vendors/images/deskapp-logo.svg" alt="" />
            </a>
        </div>
        <div class="login-menu">
            <ul>
                <li><a href="register.jsp">Register</a></li>
            </ul>
        </div>
    </div> 


    <div class="login-wrap d-flex align-items-center flex-wrap justify-content-center">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-md-6 col-lg-7">
                    <img src="vendors/images/login-page-img.png" alt="" />
                </div>
                <div class="col-md-6 col-lg-5">
                    <div class="login-box bg-white box-shadow border-radius-10">
                        <div class="login-title">
                            <h2 class="text-center text-primary">Login To DeskApp</h2>
                        </div>
                        <form method="POST" action="login.jsp">
                            <!-- <div class="select-role">
									<div class="btn-group btn-group-toggle" data-toggle="buttons">
										<label class="btn active">
											<input type="radio" name="options" id="admin" />
											<div class="icon">
												<img
													src="vendors/images/briefcase.svg"
													class="svg"
													alt=""
												/>
											</div>
											<span>I'm</span>
											Customer
										</label>
										<label class="btn">
											<input type="radio" name="options" id="user" />
											<div class="icon">
												<img
													src="vendors/images/person.svg"
													class="svg"
													alt=""
												/>
											</div>
											<span>I'm</span>
											Employee
										</label>
									</div>
								</div> -->
                            <div class="input-group custom">
                                <input type="text" class="form-control form-control-lg" required placeholder="Email" name="email"
                                    require pattern="\w,./_=?-]+" />
                                <div class="input-group-append custom">
                                    <span class="input-group-text"><i class="icon-copy dw dw-user1"></i></span>
                                </div>
                            </div>
                            <div class="input-group custom">
                                <input type="password" class="form-control form-control-lg" placeholder="Password"
                                    name="password" required pattern="\w,./_=?-]+"/>
                                <div class="input-group-append custom">
                                    <span class="input-group-text"><i class="dw dw-padlock1"></i></span>
                                </div>
                            </div>

                            <div class="row pb-30">
                                <div class="col-6">
                                    <div class="custom-control custom-checkbox">
                                        <!-- <input type="checkbox" class="custom-control-input" id="customCheck1" />
                                        <label class="custom-control-label" for="customCheck1">Remember</label> -->
                                    </div>
                                </div>
                                <div class="col-6">
                                    <div class="forgot-password">
                                        <a href="forgot-password.jsp">Forgot Password</a>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-12">
                                    <div class="input-group mb-0">
                                        <!--                       SIGN IN BUTTON                       -->
                                        <input class="btn btn-primary btn-lg btn-block"
                                            class="btn btn-primary btn-lg btn-block" type="submit" value="Sign In"
                                            name="signin">
                                    </div>
                                    <div class="font-16 weight-600 pt-10 pb-10 text-center" data-color="#707373">
                                        OR
                                    </div>
                                    <div class="input-group mb-0">
                                        <a class="btn btn-outline-primary btn-lg btn-block" href="register.php">Register
                                            To Create Account</a>
                                    </div>
                                </div>
                            </div>
                        </form>
                        <br>
                       
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- js -->
    <script src="vendors/scripts/core.js"></script>
    <script src="vendors/scripts/script.min.js"></script>
    <script src="vendors/scripts/process.js"></script>
    <script src="vendors/scripts/layout-settings.js"></script>
    <!-- Google Tag Manager (noscript) -->
    <noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-NXZMQSS" height="0" width="0"
            style="display: none; visibility: hidden"></iframe></noscript>
    <!-- End Google Tag Manager (noscript) -->

</body>

</html>

<%-- Login JSP Code --%>

 <%@  include file="dbconfig.jsp" %>
<% 
    String Email="";
    String Password="";
    Email=request.getParameter("email");
    Password=request.getParameter("password");

        Statement statement = null;
        ResultSet resultSet = null;
 /*   try{

        statement=con.createStatement();
        String Sql="SELECT * FROM tblbranch";
        resultset=statement.executeQuery(Sql);
              //Check Connection is Established or not
    if(con!=null)
    {
        System.out.println("Connection Successfully Established");
    }
    else
    {
        System.out.println("Connection Not Established");
    }
        while(resultset.next())
        {
            if(resultset.getString("emailid")==Email&&resultset.getString("password")==Password)
            {
                System.out.println("Login Successfully");
            }
            else
            {
                System.out.println("Login  Unsuccessfull");

            }
        }

    }
    catch(Exception e)
    {
        System.out.println(e);
    }*/

%>