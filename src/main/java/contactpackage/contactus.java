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