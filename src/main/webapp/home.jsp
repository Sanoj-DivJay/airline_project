<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>home</title>

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
          <li><a class="nav-link active" href="home.jsp">Flights</a></li>
          <li><a class="nav-link" href="Contact.jsp">Contact</a></li>
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
   
<!-------------------------- home section starts  ------------------------------>
<div id="home">
<section class="home">

   <div class="swiper home-slider">

      <div class="swiper-wrapper">
         <div class="swiper-slide slide" style="background:url(assets/images/airplane-4974678.jpg) no-repeat">
         
         <h1 class="heading-titles">Explore the beauty of<br>journey</h1>
              <!--  <span>explore, discover, travel</span>
               <h3>travel around the world</h3>
               <a href="https://world-tour.in/" class="btn">discover more</a>-->
            </div>
         <!-- </div>
         <div class="swiper-slide slide" style="background:url(assets/images/img4.jpg) no-repeat">
            <div class="content">
               <span>explore, discover, travel</span>
               <h3>fly with comfort</h3>
               <a href="https://world-tour.in" class="btn">discover more</a>
            </div>
         </div>

         <div class="swiper-slide slide" style="background:url(assets/images/home-slide-2.jpg) no-repeat">
            <div class="content">
               <span>explore, discover, travel</span>
               <h3>make new experiences</h3>
               <a href="https://world-tour.in" class="btn">discover more</a>
            </div>
         </div>

         <div class="swiper-slide slide" style="background:url(assets/images/img6.jpg) no-repeat">
            <div class="content">
               <span>explore, discover, travel</span>
               <h3>enjoy new flavours</h3>
               <a href="https://world-tour.in" class="btn">discover more</a>
            </div>
         </div>

         <div class="swiper-slide slide" style="background:url(assets/images/home-slide-1.jpg) no-repeat">
            <div class="content">
               <span>explore, discover, travel</span>
               <h3>relax to your hearts content</h3>
               <a href="https://world-tour.in" class="btn">discover more</a>
            </div>
         </div>
         <div class="swiper-slide slide" style="background:url(assets/images/home-slide-3.jpg) no-repeat">
            <div class="content">
               <span>explore, discover, travel</span>
               <h3>make your tour worthwhile</h3>
               <a href="https://world-tour.in" class="btn">discover more</a>
            </div>
         </div>
         
         <div class="swiper-slide slide" style="background:url(assets/images/img7.jpg) no-repeat">
            <div class="content">
               <span>explore, discover, travel</span>
               <h3>discover new places</h3>
               <a href="https://world-tour.in" class="btn">discover more</a>
            </div>
         </div>-->
        
         
      </div>

      <div class="swiper-button-next"></div>
      <div class="swiper-button-prev"></div>

   </div>

</section>
</div>
<!-- home section ends -->

<!------------------------------------- book a flight section starts  ----------------------------------->

<section class="booking" >

   <h1 class="heading-title">Book Your Flight</h1>

  <form action="filterflights.jsp" method="post" class="book-form"  style="width: 100%; opacity: 0.9;">
      <div class="flex">
      
                        <div class="form-group"  >
                      
                              <label for="roundtrip">
                                 <input type="radio" id="roundtrip" value="on" name="flight-type1" onclick="text(0)" checked>
                                 <span></span>Roundtrip
                              </label>
                              <label for="one-way">
                                 <input type="radio" id="one-way" value="off" name="flight-type1" onclick="text(1)">
                                 <span></span>One way
                              </label>
                           </div>
                        </div>

<div class="row">
                           <div class="col-md-6">
                        <div class="form-group">
                           <span class="form-label" style="font-weight: bold;
  
   font-size: 1.8rem;

   text-transform: none;
   margin-top: 1.5rem;
   border-radius: 15px; ">Flying from :</span>
                           <input class="form-control" type="text"  placeholder="Your location" name="flightfrom" style=" width: 100%;
   padding:1.2rem 1.4rem;
   font-size: 1.8rem;
color: var(--light-black);
   text-transform: none;
   margin-top: 1.5rem;
   border-radius: 10px; ">
                           
                        </div>
                     </div>
                  <div class="col-md-6">
                        <div class="form-group">
                            <span class="form-label" style="font-weight: bold;
  
   font-size: 1.8rem;

   text-transform: none;
   margin-top: 1.5rem;
  ">Flying to :</span>
                           <input class="form-control" placeholder="Your destination" name="flightto" type="text" style=" width: 100%;
   padding:1.2rem 1.4rem;
   font-size: 1.8rem;
color: var(--light-black);
   text-transform: none;
   margin-top: 1.5rem;
   border-radius: 10px; ">
                          
                        </div>
                     </div>
                  </div>
                        <div class="row">
                           <div class="col-md-6">
                              <div class="form-group">
                                  <span class="form-label" style="font-weight: bold; width: 100%;
  
   font-size: 1.8rem;

   text-transform: none;
   margin-top: 1.5rem;
   border-radius: 15px; ">Depart Date :</span>
                                 <input class="form-control" type="date" name="departdate"style=" width: 100%;
   padding:1.2rem 1.4rem;
   font-size: 1.8rem;
color: var(--light-black);
   text-transform: uppercase;
   margin-top: 1.5rem;
   border-radius: 10px; ">
                                
                              </div>
                           </div>
                           <div class="col-md-6">
                              <div class="form-group" id="mycode">
                                 <span class="form-label" style="font-weight: bold; width: 100%;
  
   font-size: 1.8rem;

   text-transform: none;
   margin-top: 1.5rem;
   border-radius: 15px; ">Return Date :</span>
                                 <input class="form-control" type="date" name="returndate" style=" width: 100%;
   padding:1.2rem 1.4rem;
   font-size: 1.8rem;
color: var(--light-black);
   text-transform: uppercase;
   margin-top: 1.5rem;
   border-radius: 10px; ">
                                 
                              </div>
                           </div>
                        </div>
                        
				
				 
        <input type="submit" value="search" class="btn3" name="send">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <input type="rest" value="cancle" class="btn3" name="delete" id="2">
   				
       </div>
   </form>
</section>




      <script src="assets/js/jquery.min.js"></script>
         <script>
            $('.form-control').each(function () {
               floatedLabel($(this));
            });

            $('.form-control').on('input', function () {
               floatedLabel($(this));
            });

            function floatedLabel(input) {
               var $field = input.closest('.inputBox');
               if (input.val()) {
                  $field.addClass('input-not-empty');
               } else {
                  $field.removeClass('input-not-empty');
               }
            }
         </script>
<!-- book a flight section ends -->

   
 

    <!------------------------------------- flight status section starts  ----------------------------------->

<section class="booking" name="s3">

   <h1 class="heading-title">Flight Status</h1>

   <form action="flight_status.jsp" method="post" class="book-form" style="width: 100%;">
      <div class="flex">
         <div class="inputBox">
           
             <input type="text" placeholder="From" name="flightfrom" style="font-size: 15px;">
         </div>
          
         <div class="inputBox">
           
             <input type="text" placeholder="TO" name="flightto"style="font-size: 15px;">
         </div>
          
         <div class="col-md-6">
                           <div class="form-group-1">
                              <input type="radio" name="ffID1" value="1">
                              <b class="check"> Search By Only Flight ID</b> <br>
                              <input type="radio" name="ffID1" value="0">
                              <b class="check"> Search By Only From & To</b> <br>
                           </div>
                        </div>
          <div class="inputBox">
                <input type="text" placeholder="Flight ID" name="flightid" style="font-size: 15px;">
          </div>  
      </div>
      <div class="inputBox">

        <input type="submit" value="search" class="btn3" name="send">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <input type="reset" value="cancle" class="btn3" name="delete">
    
      </div>
   </form>
</section>


 <script src="assets/js/jquery.min.js"></script>
      <script>
         $('.form-control').each(function () {
            floatedLabel($(this));
         });

         $('.form-control').on('input', function () {
            floatedLabel($(this));
         });

         function floatedLabel(input) {
            var $field = input.closest('.form-group');
            if (input.val()) {
               $field.addClass('input-not-empty');
            } else {
               $field.removeClass('input-not-empty');
            }
         }
      </script>

<!-- flight status section ends -->

 
<!------------------------------- footer section starts  ----------------------------------------->

  <footer id="footer">

    <div class="footer-top">
      <div class="container">
        <div class="row">

          <div class="col-lg-3 col-md-6 footer-contact">
            <h3>Phoenix</h3>
            <p>
              50A Mount Lavinia <br>
              Colombo 03<br>
              Sri Lanka <br><br>
              <strong>Phone:</strong> +332 236 671<br>
              <strong>Email:</strong> info@phoenixairlines.com<br>
            </p>
          </div>

          <div class="col-lg-3 col-md-6 footer-links">
            <h4>Useful Links</h4>
            <ul>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Home</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">About</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Flights</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Contact</a></li>
            </ul>
          </div>

          <div class="col-lg-3 col-md-6 footer-links">
            <h4>Our Social Networks</h4>
            <p>You can follow us in any of the above social networks as you preferred. </p>
            <div class="social-links mt-3">
              <a href="#" class="facebook"><i class="bx bxl-facebook"></i></a>
              <a href="#" class="instagram"><i class="bx bxl-instagram"></i></a>
              <a href="#" class="linkedin"><i class="bx bxl-linkedin"></i></a>
            </div>
          </div>

        </div>
      </div>
    </div>

    <div class="container footer-bottom clearfix">
      <div class="copyright">
        &copy; Copyright <strong><span>PhoenixAirlines</span></strong>. All Rights Reserved
      </div>
    </div>
  </footer><!-- End Footer -->
  
  <div id="preloader"></div>
  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

<!-- footer section ends -->

<!-- swiper js link  -->
<script src="https://unpkg.com/swiper@7/swiper-bundle.min.js"></script>

<!-- custom js file link  -->
<script src="assets/js/js_home.js"></script>
  <script src="assets/vendor/aos/aos.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="assets/vendor/waypoints/noframework.waypoints.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>
  
  <script src="assets/js/main.js"></script>




</body>
</html>