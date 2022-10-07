<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Phoenix_Airline_PVT</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" type="text/css" href="assets/css/style_index_login.css"> <!--External CSS BODY-->
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

<!--Background Video Internal CSS-->
  <style>
    * {
      box-sizing: border-box;
    }
    
    body {
      margin: 0;
      font-family: Arial;
      font-size: 17px;
    }
    
    #myVideo {
      position: fixed;
      right: 0;
      bottom: 0;
      min-width: 100%; 
      min-height: 100%;
    }
    
    .content {
      position: fixed;
      bottom: 0;
      background: rgba(0, 0, 0, 0.5);
      color: #f1f1f1;
      width: 100%;
      padding: 20px;
    }
</style> 
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

      
  <video autoplay muted loop id="myVideo">
        
    <source src="assets/images/Singapore Changi Airport Jewel Cinematic Film Sony A6500_1080p.mp4" type="video/mp4"><!--background video source-->
    Your browser does not support HTML5 video.
    
  </video>
      
  <div class="cont">
    <div class="form sign-in">
           <p align="center"><span class="userflag"><%               
                            response.setContentType("text/html");
                            //PrintWriter out =response.getWriter();
        
                            Cookie[] ck = request.getCookies();
                            //String name=ck[0].getValue();
                            //out.print("Welcome "+name);

                            String uname = "none";
                            if(!(request.getCookies()==null))
                    {
                        for (Cookie aCookie : ck) {
                            String names = aCookie.getName();
 
                        if (names.equals("uname")) {
                            uname = aCookie.getValue();
                              break;
                                }       }
                                //out.print("Welcome "+uname);
                            
                        if(!(uname=="none"))
                        {
                         out.print("User Already Logged In");
                              }
                       
      }
      %></span><p>
      <h2>Phoenix Airline | SIGN IN</h2>
       <form method="post" action="./userlogin">
      <label>
        <span>User Name</span>
        <input type="text" name="uname">
      </label>
      <label>
        <span>Password</span>
        <input type="password" name="password">
      </label>
           <button class="submit" type="submit" value="Login">Sign In</button>
      
      <p class="forgot-pass">Forgot Password ?</p>
        <p class="forgot-pass"> Admin Login - <a href="adminlogin.jsp">Click Here</a></p>
         <p class="forgot-pass">Staff Login - <a href="stafflogin.jsp">Click Here</a></p>
    
      <div class="social-media">
        <ul>
          <li><img src="assets/images/facebook.png"></li>
          <li><img src="assets/images/twitter.png"></li>
          <li><img src="assets/images/linkedin.png"></li>
          <li><img src="assets/images/instagram.png"></li>
        </ul>
            </form>
      </div>
    </div>
 
    <div class="sub-cont">
      <div class="img">
        <div class="img-text m-up">
          <h2>New here?</h2>
          <p>Sign up and discover great amount of new opportunities!</p>
        </div>
        <div class="img-text m-in">
          <h2>One of us?</h2>
          <p>If you already has an account, just sign in. We've missed you!</p>
        </div>
        <div class="img-btn">
          <span class="m-up">Sign Up</span>
          <span class="m-in">Sign In</span>
        </div>
      </div>
      <div class="form sign-up">
        <h2>Phoenix Airline | SIGN UP</h2>
         <form method="post" action="./userregistration">
        <label>
          <span>Full Name</span>
          <input type="text" name="fullname" required="">
        </label>
        <label>
             <span>User Name</span>
          <input type="text" name="uname"required="">
        </label>
        <label>
          <span>Email</span>
          <input type="email" name="email" required="">
        </label>
        <label>
        
          <span>Password</span>
          <input type="password" name="password" required="">
        </label>
        <label>
          <span>Confirm Password</span>
          <input type="password" required="">
        </label>
        
        <button type="submit" class="submit" value="Registration">Sign Up Now</button>
         </form>
      </div>
        
    </div>
  </div>
<script type="text/javascript" src="assets/js/script_index.js">
  var video = document.getElementById("myVideo");
</script>



</body>
</html>