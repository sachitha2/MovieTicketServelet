package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import Model.Film;
import Model.SheetavailabilityModel;

public class SheetDAO {
	public String table = "sheetavailability";
	Connection connection;
    

	public  SheetDAO(Connection connection) {
		// TODO Auto-generated constructor stub
		this.connection = connection;
	}
	
	public ResultSet  SheetAvailability(String filmId,String slotId,String dateV) {
		PreparedStatement ps=null;
		String query="SELECT sheetavailability.* FROM sheetavailability INNER JOIN mtime ON sheetavailability.mtimeId= "+slotId+" and mtime.movie_id = "+filmId+" and sheetavailability.date = '"+dateV+"' and mtime.id = "+slotId;
		   
		try {
	        ps=connection.prepareStatement(query);
	        ResultSet rs=ps.executeQuery();
	        
	            return rs;
	        
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
		return null;
	}
	
	
	public int  AvaulableSheetsCount(String filmId,String slotId,String dateV) {
		PreparedStatement ps=null;
	    String query="SELECT COUNT(*) as count FROM sheetavailability INNER JOIN mtime ON sheetavailability.mtimeId= "+slotId+" and mtime.movie_id = "+filmId+" and sheetavailability.date = '"+dateV+"' and mtime.id = "+slotId;
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
	
	public int addData(SheetavailabilityModel sheetavailabilityModel) {
		PreparedStatement ps=null;
	    String query="INSERT INTO sheetavailability (id, date, status, userid, bookingId, mtimeId, sheet) VALUES (NULL, '"+sheetavailabilityModel.getDate()+"', '"+sheetavailabilityModel.getStatus()+"', '"+sheetavailabilityModel.getUserId()+"', '"+sheetavailabilityModel.getBookingId()+"', '"+sheetavailabilityModel.getmTimeId()+"', '"+sheetavailabilityModel.getSheetNum()+"');";
	    try {
	    	String autogenColumns[] = {"id"};
	        ps=connection.prepareStatement(query, autogenColumns);
	        ps.executeUpdate();
	       
	        	   ResultSet rs = ps.getGeneratedKeys();
	        	    rs.next();
	        	   return rs.getInt(1);
	        	
	        
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
		
		return 0;
	}
	
}
