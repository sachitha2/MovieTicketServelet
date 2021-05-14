package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class SheetDAO {
	public String table = "sheetavailability";
	Connection connection;
    

	public  SheetDAO(Connection connection) {
		// TODO Auto-generated constructor stub
		this.connection = connection;
	}
	
	public ResultSet  SheetAvailability() {
		PreparedStatement ps=null;
		String query="SELECT COUNT(*) as count FROM sheetavailability INNER JOIN mtime ON sheetavailability.mtimeId= 8 and mtime.movie_id = 40 and sheetavailability.date = '2021-05-14' and mtime.id = 8";
		   
		try {
	        ps=connection.prepareStatement(query);
	        ResultSet rs=ps.executeQuery();
	        
	            return rs;
	        
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
		return null;
	}
	
	
	public int  AvaulableSheetsCount() {
		PreparedStatement ps=null;
	    String query="SELECT COUNT(*) as count FROM sheetavailability INNER JOIN mtime ON sheetavailability.mtimeId= 8 and mtime.movie_id = 40 and sheetavailability.date = '2021-05-14' and mtime.id = 8";
	    try {
	        ps=connection.prepareStatement(query);
	        ResultSet rs=ps.executeQuery();
	        	rs.next();
	            return rs.getInt("count");
	        
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
		return 0;
	}
	
}
