package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import Model.Film;
import Model.ShowTime;

public class ShowTimeDAO {
	public String table = "mtime";
	Connection connection;
    

	public ShowTimeDAO(Connection connection) {
		this.connection = connection;
	}
	
	public ResultSet  ShowTimes(String id) {
		PreparedStatement ps=null;
	    String query="SELECT * FROM "+table+" WHERE movie_id = "+id+";";
	    try {
	        ps=connection.prepareStatement(query);
	        ResultSet rs=ps.executeQuery();
	        
	            return rs;
	        
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
		return null;
	}
	
	
	public boolean addData(ShowTime showTime) {
		PreparedStatement ps=null;
	    String query="INSERT INTO mtime (id, movie_id, timeslot, status) VALUES (NULL, '"+showTime.getMovieId()+"', '"+showTime.getTimeslot()+"', '"+showTime.getStatus()+"');;";
	    try {
	        ps=connection.prepareStatement(query);
	        ps.executeUpdate();
	        
	            return true;
	        
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
		
		return false;
	}
	
	public String  ShowTimeById(String id) {
		PreparedStatement ps=null;
	    String query="SELECT * FROM mtime WHERE id = "+id;
	    try {
	        ps=connection.prepareStatement(query);
	        ResultSet rs=ps.executeQuery();
	        	rs.next();
	        	
	        	 return rs.getString("timeslot");
	        
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
		return "";
		
	}
}
