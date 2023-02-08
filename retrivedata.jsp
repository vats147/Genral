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
<%@  include file="dbconfig.jsp" %>

<%-- Include SHA-256 Library --%>
<%@ page import="java.security.MessageDigest" %>

   
     

<%-- Import Random function library --%>
<%@ page import="java.util.Random" %> 

<%@ page import="java.util.Scanner" %> 

// Import mail library and jar files
<%@ page import="java.util.*"%>
<%@ page import="javax.mail.*"%>
<%@ page import="javax.mail.internet.*"%>
<%@ page import="javax.activation.*"%>
  
    
    
<%

String Pagename=request.getParameter("pagename");
String Action=request.getParameter("action");
String res="";

System.out.println(Pagename);
System.out.println(Action);

try{


String ConnectionUrl="jdbc:mysql://localhost:3306/";
String DbName="rms";
String DbUserName="root";
String DbPassword="";
Connection con=DriverManager.getConnection(ConnectionUrl+DbName,DbUserName,DbPassword);

}

//Check Connection is Established or not
if(con!=null)
{
    System.out.println("Connection Successfully Established");
}
else
{
    System.out.println("Connection Not Established");
}

//Destorying the whole session
if(Action.equals("session-destory"))
{
	
session.invalidate(); 
}


	if(Pagename!=null&& Action!=null)
	{

		//Declare Email and OTP
			 String Email;
			// String otp;
			 
		//Pagename is forgot-password
		if(Pagename.equals("forgot-password")&&Action.equals("send-mail"))
		{
			
			
			Email=request.getParameter("mail");
			
			if(Email!=null){
				
				
				
			//connection 
			Statement statement=con.createStatement();

			//Retrive User Data from table
			String Sql="SELECT * FROM tbluser where emailid='"+Email+"'";
			
		    
			ResultSet resultset=statement.executeQuery(Sql);

			if(resultset!= null)
			{
			
				if(resultset.next())
				{
					//set userid in session
					session.setAttribute("userid",resultset.getString("userid"));

					
					if(resultset.getString("emailid").equals(Email)){
						
						try{
							Random rand = new Random();
							//Genrate Random number and store in otp
							int otp = rand.nextInt(999999);
							session.setAttribute("otp",otp);
							
							System.out.println("OTP == "+otp);
							
							//SMTP for sending mail
							System.setProperty("javax.net.debug", "ssl:handshake");
							//Creating a result for getting status that messsage is delivered or not!
							String to=Email;  
							String subject="Your OTP";  
							String message="Thank you for contacting us. Here is Your OTP:"+otp;  
									
				 
							String from="vatsalmangukiya9003@gmail.com";  
							String pass="gmxnibkubzsvtcbx";  
							String host="smtp.gmail.com";  
							
							Properties props = System.getProperties(); 
							System.setProperty("jdk.tls.client.cipherSuites","TLS_AES_128_GCM_SHA256,TLS_AES_256_GCM_SHA384,TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256,TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384,TLS_DHE_RSA_WITH_AES_128_GCM_SHA256,TLS_DHE_RSA_WITH_AES_256_GCM_SHA384,TLS_RSA_WITH_AES_128_GCM_SHA256,TLS_RSA_WITH_AES_256_GCM_SHA384");
							
							props.put("mail.smtp.starttls.enable", "true");

							props.put("mail.smtp.ssl.protocols", "TLSv1.3");
							props.put("mail.smtp.host", host);  
							props.put("mail.smtp.user", from);  
							props.put("mail.smtp.password", pass);  
							props.put("mail.smtp.port", "587");  
							props.put("mail.smtp.auth", "true");
							props.put("mail.smtp.ssl.trust", "*");
							
							
							Session se = Session.getDefaultInstance(props, null);  
							MimeMessage mimeMessage = new MimeMessage(se);  
							mimeMessage.setFrom(new InternetAddress(from));  
							mimeMessage.setRecipient(Message.RecipientType.TO,new InternetAddress(to));  
							mimeMessage.setSubject(subject);  
							mimeMessage.setText(message);  
							Transport transport = se.getTransport("smtp");  
							transport.connect(host, from, pass);  
							transport.sendMessage(mimeMessage, mimeMessage.getAllRecipients());  
							request.removeAttribute("email");
							res="Mail is valid";
							
						}
						catch(Exception e)
						{
							System.out.println(e);
							
							res="Error in mail sent";
						}
						

							
								
					}
					else
					{
						
						res="Error in mail Sent Try Again";
						
					}
				}
				else
				{
					
					res="Email is Invalid";
					

					
				}
			
			
			 out.println(res);
			
			
			}
		}
	}
		
	//update-password
	if(Pagename.equals("pwd")&&Action.equals("password-update"))
	
	{
		String password=request.getParameter("password");
			//check password is not null
			
			//convert password into Hash
			if(password!=null)
			{
				try {
					MessageDigest md = MessageDigest.getInstance("SHA-256");
					md.update(password.getBytes());
					byte[] hash = md.digest();

					StringBuilder hexString = new StringBuilder();
					for (byte b : hash) {
						String hex = Integer.toHexString(0xff & b);
						if (hex.length() == 1) hexString.append('0');
						hexString.append(hex);
					}

					String encryptedPassword = hexString.toString();
					
					System.out.println("Encrypted password: " + encryptedPassword);
					
					//Update Password in database
					Statement statement=con.createStatement();
					String Sql="UPDATE tbluser SET `password`='"+encryptedPassword +"' where userid="+session.getAttribute("userid");
			 		System.out.println(Sql);
					int resultset=statement.executeUpdate(Sql);
					System.out.println(resultset);

					
					} 
				catch (Exception e) {
							e.printStackTrace();
					}
		}


		
		
	}

	
}


	
	


}
catch(Exception e)
{
	System.out.println(e);
}

	

	
%>