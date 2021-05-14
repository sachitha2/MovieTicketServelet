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
	
	public ResultSet  SheetAvailability(String filmId,String slotId) {
		PreparedStatement ps=null;
		String query="SELECT sheetavailability.* FROM sheetavailability INNER JOIN mtime ON sheetavailability.mtimeId= "+slotId+" and mtime.movie_id = "+filmId+" and sheetavailability.date = '2021-05-14' and mtime.id = "+slotId;
		   
		try {
	        ps=connection.prepareStatement(query);
	        ResultSet rs=ps.executeQuery();
	        
	            return rs;
	        
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
		return null;
	}
	
	
	public int  AvaulableSheetsCount(String filmId,String slotId) {
		PreparedStatement ps=null;
	    String query="SELECT COUNT(*) as count FROM sheetavailability INNER JOIN mtime ON sheetavailability.mtimeId= "+slotId+" and mtime.movie_id = "+filmId+" and sheetavailability.date = '2021-05-14' and mtime.id = "+slotId;
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
