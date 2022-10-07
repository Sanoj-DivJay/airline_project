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
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.SQLException;
import java.util.List;
import model.dbconnect;


public class updateprofile2 extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet updateprofile2</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet updateprofile2 at " + request.getContextPath() + "</h1>");
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
            PrintWriter out=response.getWriter();
            String uname=request.getParameter("uname");
            String fulllname =request.getParameter("fullname");
            String emaill =request.getParameter("email");
            out.println(uname);
            out.println(fulllname);
            out.println(emaill);
            try{
         dbconnect con=new dbconnect();
         boolean rslt=con.updateuserdetails(uname,fulllname,emaill);
         if (rslt==true){
         //response.sendRedirect("userprofile.jsp"); 
         out.println("Successfull");
         }
         else
            out.println(" unsuccessfull"); 
        // response.sendRedirect("userprofile.jsp"); 
         
         }
         catch(Exception e)
         {
             e.printStackTrace();
         }
    }

   
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
