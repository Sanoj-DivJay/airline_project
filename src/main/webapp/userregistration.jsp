<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- Designined by CodingLab - youtube.com/codinglabyt -->

<html lang="en" dir="ltr">
  <head>
    <meta charset="UTF-8">
    <title> Phoenix_Airline_PVT </title>
    <link rel="stylesheet" href="assets/css/style_1.css">
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
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


  <link href="assets/css/style.css" rel="stylesheet">
   </head>
<body>
 <header id="header" class="fixed-top ">
    <div class="container d-flex align-items-center">

      <img src="assets/img/logo.png" class="logo me-auto">

      <nav id="navbar" class="navbar">
        <ul>
          <li><a class="nav-link" href="index.jsp">Home</a></li>
          <li><a class="nav-link" href="#about">About</a></li>
          <li><a class="nav-link active" href="home.jsp">Flights</a></li>
          <li><a class="nav-link" href="Contact.jsp">Contact</a></li>
          <li class="dropdown"><a href="#"><span>My Account</span> <i class="bi bi-chevron-down"></i></a>
            <ul>
              <li class="dropdown"><a href="signin.jsp"><span>Sign In</span> <i class="bi bi-chevron-right"></i></a>
              <li class="dropdown"><a href="#"><span>Register</span> <i class="bi bi-chevron-right"></i></a>
              <li class="dropdown"><a href="#"><span>Flight</span> <i class="bi bi-chevron-right"></i></a>
              <li class="dropdown"><a href="#"><span>My Bookings</span> <i class="bi bi-chevron-right"></i></a>
              <li class="dropdown"><a href="#"><span>Reserve</span> <i class="bi bi-chevron-right"></i></a>
            </ul>
          </li>
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav>
      </div>
  </header>
  <div class="container">
    <div class="title">User Registration</div>
    <div class="content">
      <form method="post" action="./userregistration">
        <div class="user-details">
          <div class="input-box">
            <span class="details">Full Name</span>
            <input type="text" name="fullname" placeholder="Enter your name">
          </div>
          <div class="input-box">
            <span class="details">Username</span>
            <input type="text" name="uname" placeholder="Enter your username" required>
          </div>
          <div class="input-box">
            <span class="details">Email</span>
            <input type="text" name="email" placeholder="Enter your email" required>
          </div>
        
          <div class="input-box">
            <span class="details">Password</span>
            <input type="text" name="password" placeholder="Enter your password" required>
          </div>
            
          <div class="input-box">
            <span class="details">Confirm Password</span>
            <input type="text" placeholder="Confirm your password">
          </div>
        </div>
          
        <div class="gender-details">
            <input type="radio" name="gender" value="Male" id="dot-1">
          <input type="radio" name="gender" value="Female" id="dot-2">
          <input type="radio" name="gender" value="null" id="dot-3">
          <span class="gender-title">Gender</span>
          <div class="category">
            <label for="dot-1">
            <span class="dot one"></span>
            <span class="gender">Male</span>
          </label>
          <label for="dot-2">
            <span class="dot two"></span>
            <span class="gender">Female</span>
          </label>
          <label for="dot-3">
            
            
            </label>
          </div>
        </div>
        <div class="button">
          <input type="submit" value="Registration">
           <div class="signup-link">Not a Staff member? <a href="staffregistration.jsp">Sign up now</a></div>
        </div>
      </form>
    </div>
  </div>

</body>
</html>
