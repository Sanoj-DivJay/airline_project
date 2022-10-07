<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Contact Form</title>
 <!-- swiper css link  -->
   <link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />

   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

   <!-- Bootstrap -->
   <link type="text/css" rel="stylesheet" href="assets/css/bootstrap.min.css" />

   <!-- custom css file link  -->
   <link rel="stylesheet" href="assets/css/style_home.css">
   <link href="assets/css/style.css" rel="stylesheet">
   
   <link href="" rel="icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Jost:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">
  
   <link href="Contact.css" rel="stylesheet">





      <script type="text/javascript">
         function text(x){
            if (x==0) 
               document.getElementById("mycode").style.display = "block";
            else
               document.getElementById("mycode").style.display = "none";
            return;
         }
      </script>
</head>

<body>
 <header id="header" class="fixed-top ">
    <div class="container d-flex align-items-center">

      <img src="assets/img/logo.png" class="logo me-auto">

      <nav id="navbar" class="navbar">
        <ul>
          <li><a class="nav-link" href="index.jsp">Home</a></li>
          <li><a class="nav-link" href="#about">About</a></li>
          <li><a class="nav-link" href="home.jsp">Flights</a></li>
          <li><a class="nav-link active" href="Contact.jsp">Contact</a></li>
          <li class="dropdown"><a href="#"><span>My Account</span> <i class="bi bi-chevron-down"></i></a>
            <ul>
              <li class="dropdown"><a href="signin.jsp"><span>Sign In</span> <i class="bi bi-chevron-right"></i></a>
              <li class="dropdown"><a href="signin.jsp"><span>Register</span> <i class="bi bi-chevron-right"></i></a>
              <li class="dropdown"><a href="home.jsp"><span>Flight</span> <i class="bi bi-chevron-right"></i></a>
              <li class="dropdown"><a href="home.jsp"><span>My Bookings</span> <i class="bi bi-chevron-right"></i></a>
              <li class="dropdown"><a href="home.jsp"><span>Reserve</span> <i class="bi bi-chevron-right"></i></a>
            </ul>
          </li>
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav>
      </div>
  </header>
   
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