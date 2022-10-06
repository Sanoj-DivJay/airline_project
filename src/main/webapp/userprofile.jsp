<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import  = "jakarta.servlet.http.Cookie"%>
 <%@page import  = "java.io.PrintWriter"%>
 <%@page import="model.dbconnect"%>
 <%@page import="model.cookieverify"%>
<h2><%             
Cookie[] ck = request.getCookies();
String uname = "none";
cookieverify obj=new cookieverify();

                            //response.setContentType("text/html");
                            //PrintWriter out =response.getWriter();
        
                            //Cookie[] ck = request.getCookies();
                            //String name=ck[0].getValue();
                            //out.print("Welcome "+name);

                            //String uname = "none";
                      
                    if(!(request.getCookies()==null))
                    {
                    out.print(obj.verifyindex(request, response));
                   
                    
                    uname = "none";
                        for (Cookie aCookie : ck) {
                            String names = aCookie.getName();
 
                        if (names.equals("uname")) {
                            uname = aCookie.getValue();
                              break;
                                }       }}
                        if(uname=="none"){response.sendRedirect("index.jsp");}        
                      
                            
      %></h2>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <!-- swiper css link  -->
   <link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />

   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

   <!-- Bootstrap -->
   <link type="text/css" rel="stylesheet" href="css/bootstrap.min.css" />

   <!-- custom css file link  -->
   <link rel="stylesheet" href="./css/style_Profile.css">


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

<!---------------------------- header section starts  ------------------------------->

<section class="header">

   <a href="#home" class="logo"><img src="./images/445.png" style="height: 50px; width: 150px;"></a>

   <nav class="navbar">
         
         <a href="./home.jsp">Home</a>
         <a href="./home.jsp#1">Book a flight</a>
         <a href="./home.jsp#2">Flight Status</a>
         <a href="#profile">Profile</a>
         <a href="index.jsp" class="signout-btn" style="color: white;">Sign Out</a>
      
   </nav>

   <div id="menu-btn" class="fas fa-bars"></div>

</section>
<!-- header section ends -->


<section id="profile">
   <div class="titles">
       <h1 class="Title1"> Phoenix-Airline </h1>
       <h3 class="heading-SubTitle"> User Dashboard </h3>
   </div>
</section>

<div class="tabs-container">
   <div class="tabs">
     <div class="tab active">Manage Tickets Booking Details</div>
     <div class="tab">Account Settings</div>
     <div class="tab">Contact us</div>
   </div>

   <div class="content-container">
     <div class="content active">
       <h3>Manage Tickets Booking</h3>
       <p>
           Manage your Ticket booking Details, conveniently.
           Enjoy more freedom and flexibility when you book with Phonex Airlines! 
           <br> 
           View your travel dates, add optional extras, upgrade to Business Class or simply update your details.

       </p>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
       <table class="content-table">
          <thead>
             <tr>
                 
               <th>Ticket ID</th>
               <th>Flight ID</th>
               <th>User Name</th>
               
             </tr>
           </thead>
           
           <tbody>
          <%
              

                
                    
         List<model.ticketidgenbean> list=model.dbconnect.getAllreservedetails(uname);  
        for(model.ticketidgenbean e:list){  
         out.print("<tr><td>"+"&nbsp "+e.getticketid()+"</td><td>"+"&nbsp"+e.getflightid()+"</td><td>"+"&nbsp "+e.getuname()+"</td>  </tr>");  
        }  
                  
        %>
           </tbody>
         </table>
     </div>

     <div class="content">
       <h3>Account Settings</h3>
       <p>
        Manage, altere and view your account details with ease! 
      </p> 
      <%@page import="java.io.PrintWriter"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
          
      
      <br>
       <div class="container rounded bg-white mt-5">
        <div class="row">
            <div class="col-md-4 border-right">
                <div class="d-flex flex-column align-items-center text-center p-3 py-5">
                  <img class="Userpic" src="./images/Profile-Icon.png" title="user icons"" width="90">
                  <h4><span><br><%out.print(uname);%></span></h4>
                  <p><%out.println("online");%><p>
                </div>
            </div>
<%
              
String ffnme="";
String emaill="";
                
                    
         List<model.ticketidgenbean> listt=model.dbconnect.getAllreservedetails2(uname);  
        for(model.ticketidgenbean e:listt){  
      ffnme= e.getflightid();
       emaill=e.getuname();
        }  
                  
        %>
            <div class="col-md-8">
                <div class="p-3 py-5">
                    <div class="d-flex justify-content-between align-items-center mb-3">
                      <br>
                        <h6 class="text-right">Edit Profile</h6>
           <form action="./updateprofile2" method="POST">
                    </div>
                    <div class="row mt-2">
                        <label>Full Name</label><br>
                        <div class="col-md-6"><input type="text" class="form-control" value="<%out.println(ffnme);%>" name="fullname" placeholder="Full name" value=""></div>
                        <input type="hidden" name="uname" value="<%out.print(uname);%>">
                        
                    </div>
                    <br>
                    <div class="row mt-3">
                         <label>Email</label><br>
                        <div class="col-md-6"><input type="text" class="form-control"  value="<%out.println(emaill);%>" name="email" placeholder="Email" value=""></div>
                        
                    </div>
                    <br>
                  
                  
                    <div class="mt-5 text-right">
                      <button class="Save-prof-button" type="submit">Save Profile</button></div>
                </div>
</form>
            </div>
        </div>
    </div>


     </div>

     <div class="content">
       <h3>Contact us</h3>
       <p>
           We are committed to providing our customers with a memorable experience, and your feedback is important for us to make that possible.
       </p>
       <div class="contact-form">
           
          
           <div class="input-fields">
                <form action="./userscontactus" method="POST">
                    <input type="text" class="input" placeholder="Name" name="name">
             <input type="text" class="input" placeholder="Email Address" name="email">
             <input type="text" class="input" placeholder="Phone" name="phoneno">
           </div>
           <div class="msg">
               <textarea type="textarea" placeholder="Message" name="messege"></textarea>
             <div class="btn"><input type="submit" name="submit" value="Send"></div>
                </form>
           </div>
        
         </div>
     </div>

   </div>
 </div>

 <script src="assets/js/VerticalTabs.js"> </script>
 
 
 
 
  
 <!-- swiper js link  -->
<script src="https://unpkg.com/swiper@7/swiper-bundle.min.js"></script>

<!-- custom js file link  -->
<script src="assets/js/js_home.js"></script>
 
 
</body>
</html>