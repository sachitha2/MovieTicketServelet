package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

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
}
