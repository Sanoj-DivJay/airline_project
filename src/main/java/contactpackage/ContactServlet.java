package contactpackage;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 * Servlet implementation class ContactServlet
 */
public class ContactServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public ContactServlet() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
			String name  =request.getParameter("Your Name");
			String email = request.getParameter("Your E-mail");
			String message = request.getParameter("Your Message");
			
			contactus c = new contactus();
			try {
				c.addcontactus(name,email,message);	
			}catch(SQLException ex) {
				//Logger.getLogger(contactus.class.getName()).log(Level.SEVERE,null,ex);  
				  Logger.getLogger(contactus.class.getName()).log(Level.SEVERE,null,ex);
			}
			response.sendRedirect("DisplayResults.jsp");
					//doGet(request, response);
		}
}

