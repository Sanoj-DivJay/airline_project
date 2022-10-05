package contactpackage;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

public class contactus
{
	Statement st;
	public void addcontactus(String name, String email, String message) throws SQLException
	{
		connectToDb();
	    String query="INSERT INTO contactus(Your Name,Your E-mail,Your Message) VALUES('"+name+"','"+email+"','"+message+"')";
	    try
	    {
	    st.executeUpdate(query);
	    }catch (SQLException ex){
	       Logger.getLogger(contactus.class.getName()).log(Level.SEVERE,null,ex);  
	    }
	    }
	
	 //connecting into the database
		private void connectToDb()
		{
        String url="jdbc:mysql://localhost:3306/contact?useSSL=false";
        try{
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection(url,"root","");
            st = con.createStatement();
        }catch(ClassNotFoundException | SQLException ex)
        {
            Logger.getLogger(contactus.class.getName()).log(Level.SEVERE,null,ex);        
        }
    }
}