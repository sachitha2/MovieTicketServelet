package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import Model.Booking;
import Model.Film;

public class BookingDAO {
	public String table = "booking";
	Connection connection;
    

	public BookingDAO(Connection connection) {
		this.connection = connection;
	}
	
	public int addData(Booking booking) {
		PreparedStatement ps=null;
	    String query="INSERT INTO booking (id, userid, timeslot, total, numtickets, date) VALUES (NULL, '"+booking.getUserid()+"', '"+booking.getTimeslotId()+"', '"+booking.getTotal()+"', '"+booking.getNumTickets()+"', '"+booking.getDate()+"');";
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
	
	public ResultSet  AllBookings(String s,String sText) {
		if(s.equals("ONLINE")) {
			PreparedStatement ps=null;
		    String query="SELECT * FROM booking WHERE userid != '0' "+sText+" ORDER BY booking.date DESC";
		    try {
		        ps=connection.prepareStatement(query);
		        ResultSet rs=ps.executeQuery();
		        
		            return rs;
		        
		    } catch (SQLException e) {
		        e.printStackTrace();
		    }
			return null;
		}else {
			PreparedStatement ps=null;
		    String query="SELECT * FROM booking "+sText+" ORDER BY booking.date DESC";
		    try {
		        ps=connection.prepareStatement(query);
		        ResultSet rs=ps.executeQuery();
		        
		            return rs;
		        
		    } catch (SQLException e) {
		        e.printStackTrace();
		    }
			return null;
		}
		
	}
	
	public boolean del(String id) {
		PreparedStatement ps=null;
	    String query="DELETE FROM "+table+"  WHERE id = "+id+";";
	    try {
	        ps=connection.prepareStatement(query);
	        ps.executeUpdate();
	        
	            return true;
	        
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
		return false;
		
	}
	
	
}
