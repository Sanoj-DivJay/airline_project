/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.SQLException;
import java.util.List;
import model.dbconnect;


public class userlogin extends HttpServlet {

 
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet userlogin</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet userlogin at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

  
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
           //processRequest(request, response);
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out=response.getWriter();
        
        String username=request.getParameter("uname");
        String password=request.getParameter("password");
        password=model.hashing.getMd5(password);
        
        //loginbean bean=new loginbean();
       // bean.setname(username);
       // request.setAttribute("bean",bean);
        
        try
        {
        dbconnect con = new dbconnect();
        boolean rslt=con.checkUser(username,password);
        if(rslt==true)
        {
        Cookie ck=new Cookie("uname",username);
        response.addCookie(ck);
        Cookie ck1=new Cookie("pwd",password);
        response.addCookie(ck1);
        //out.println("You have successfully logged!!!");
        response.sendRedirect("home.jsp"); 
        }
        else
        {
        out.println("<p>incorrect details </p>");
         RequestDispatcher rs = request.getRequestDispatcher("signin.jsp");
         rs.include(request, response);
        }
        
        }
        catch(Exception e)
        {
        
        }
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
