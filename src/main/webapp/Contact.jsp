<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Contact Form</title>
<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css">
</head>
<body>
		<div class="contact-section">
		<div class="contact-info">
		<h1>Contact Us...</h1>
		
		<p>Currently we don't operate a physical location <br>where customers could visit due to covid situation<br> and we also don't accept cash Payments..</p>
			<div><i class="fa fa-map-marker-alt"></i>Phoenix Airline PVT,Colombo</div> 
			<div><i class="fa fa-phone"></i>+94 332 236 671</div>
			<div><i class="fa fa-envelope"></i>flights@phoenixAirline.com</div>
		</div>
		
		<div class="contact-form">
				<h2>Write to Us...</h2>
				<p>Let us know what you need help for and Our executive will be right on it to help you....</p>
				<form class="contact" action="ContactServlet" method="POST">
					<input type="text" name="name" class="text-box" placeholder="Your Name" required>
					<input type="text" name="email" class="text-box" placeholder="Your E-mail" required>
					<textarea name="message" rows="5" cols="80" placeholder="Your Message" required ></textarea>
					<input type="submit" name="submit" class="send-btn" value="Send">
				</form>
		</div>
		</div>
		
</body>
</html>