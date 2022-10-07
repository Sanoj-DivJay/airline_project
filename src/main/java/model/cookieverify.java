/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;
import jakarta.servlet.http.Cookie;

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



public class cookieverify {

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        
        
        // TODO code application logic here
    }
        public String verifyindex(HttpServletRequest request,HttpServletResponse response)
        {String a=" ";
            try{
           response.setContentType("text/html");
                            //PrintWriter out =response.getWriter();
        
                            Cookie[] ck = request.getCookies();
                            //String name=ck[0].getValue();
                            //out.print("Welcome "+name);

                            String uname = "none";
                        for (Cookie aCookie : ck) {
                            String names = aCookie.getName();
 
                        if (names.equals("uname")) {
                            uname = aCookie.getValue();
                              break;
                                }       }
                                //out.print("Welcome "+uname);
                                
                                String password = "none";
                        for (Cookie aCookie : ck) {
                            String names = aCookie.getName();
 
                        if (names.equals("pwd")) {
                            password = aCookie.getValue();
                              break;
                                }       }
                            //out.print("Welcome "+password);
                         
                    dbconnect con = new dbconnect();
                    boolean rslt=con.checkUser(uname,password);
                    boolean rslt2=con.checkadmin(uname,password);
                    boolean rslt3=con.checkstaffg1(uname,password);
                    boolean rslt4=con.checkstaffg2(uname,password);
                    if(rslt==true || rslt2==true || rslt3==true || rslt4==true)
                   {
                    
                   }
                   else
                   {
                 Cookie[] cookies = request.getCookies();
        for (Cookie cookie : cookies) {
            cookie.setValue("none");
            cookie.setMaxAge(0);
            response.addCookie(cookie);    
                   }
                   }
            }
            catch(NullPointerException e) {
                a =String.valueOf(e);
			
		}
            return a;
        }
}
