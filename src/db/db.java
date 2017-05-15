package db;
import java.io.FileInputStream;
import java.io.IOException;
import java.sql.*;
import java.util.Properties;

public class db {

    private static String driver = null;
    private static String url = null;
    private static String username = null;
    private static String password = null;


    public Connection connect = null;
    public ResultSet rs=null;

    static {


        Properties properties = new Properties();
        try {
            properties.load(db.class.getClassLoader().getResourceAsStream("dbconfig.properties"));
            driver = (String) properties.get("driver");
            url = (String) properties.get("url");
            username = (String) properties.get("username");
            password = (String) properties.get("password");
            System.out.println(url);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }


    public db() {
        try {
            Class.forName(driver).newInstance();
            connect = DriverManager.getConnection(url,username,password);
        }
        catch (Exception ex) {
            System.out.println("12121");
        }
    }
	
	  
	  public ResultSet executeQuery(String sql) {
			try{
				connect=DriverManager.getConnection(url,username,password);
				Statement stmt=connect.createStatement();
				rs=stmt.executeQuery(sql);
			}catch(SQLException ex){
				System.err.println(ex.getMessage());
			}
			return rs;
		}
	  public void executeUpdate(String sql)
	    {
	    	Statement stmt=null;
	    	rs=null;
	    	try
	    	{   connect=DriverManager.getConnection(url,username,password);
	    		stmt=connect.createStatement();
	    		stmt.executeUpdate(sql);
	    		stmt.close();
	    		connect.close();
	    	}
	    	catch(SQLException ex)
	    	{
	    		System.err.println(ex.getMessage());

	    	}
	    }

    public static void main(String[] a){
        System.out.println(url);
    }
}
