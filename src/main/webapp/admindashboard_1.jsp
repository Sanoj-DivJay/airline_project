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
<html lang="en" dir="ltr">
  <head>
    <meta charset="UTF-8">
    <title>Admin Dashboard</title>
    <link rel="stylesheet" href="assets/css/rooms.css">
    <link rel="stylesheet" href="assets/css/table.css">
   
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
   </head>
 <body>
  <div class="sidebar">
    <div class="logo-details">
      <i class='bx bxl-c-plus-plus'></i>
      <span class="logo_name">Phoenix <br>Airline</span>
    </div>
       <ul class="nav-links">
        <li>
          <a href="adminsdashboard.jsp" >
            <i class='bx bx-grid-alt' ></i>
            <span class="links_name">Register Staff Details</span>
          </a>
        <li>
          <a href="admindashuserdetails.jsp">
            <i class='bx bx-list-ul' ></i>
            <span class="links_name">User Details</span>
          </a>
        </li>
        
        <li>
          <a href="admindashboard_1.jsp" class="active">
            <i class='bx bx-box' ></i>
            <span class="links_name">Booking Details</span>
          </a>
        </li>
         
 <li>
           <a href="admindashstaffdetails01.jsp" >
            <i class='bx bx-pie-chart-alt-2'  ></i>
            <span class="links_name">Grade 01 Staff Details</span>
          </a>
        </li>
         <li>
               <a href="admindashstaffdetails02.jsp">
            <i class='bx bx-box' ></i>
            <span class="links_name"> Grade 02 Staff Details</span>
          </a>
        </li>
        
      <li class="">
          <a href="index.jsp">
            <i class='bx bx-log-out'></i>
            <span class="links_name">Home</span>
          </a>
        </li>

      </ul>
  </div>
   
   

</body>
</html>